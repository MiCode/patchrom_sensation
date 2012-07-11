.class public Landroid/media/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$OnInfoListener;,
        Landroid/media/MediaPlayer$OnErrorListener;,
        Landroid/media/MediaPlayer$OnTimedTextListener;,
        Landroid/media/MediaPlayer$OnVideoSizeChangedListener;,
        Landroid/media/MediaPlayer$OnSeekCompleteListener;,
        Landroid/media/MediaPlayer$OnBufferingUpdateListener;,
        Landroid/media/MediaPlayer$OnCompletionListener;,
        Landroid/media/MediaPlayer$OnPreparedListener;,
        Landroid/media/MediaPlayer$EventHandler;
    }
.end annotation


# static fields
.field public static final APPLY_METADATA_FILTER:Z = true

.field public static final BYPASS_METADATA_FILTER:Z = false

.field private static final HDMI_BIT:I = 0x800

.field private static final HDMI_CMD_480P:I = 0x2

.field private static final HDMI_CMD_720P:I = 0x1

.field private static final HDMI_CMD_AUTO:I = 0x0

.field private static final HDMI_CMD_OFF:I = 0x0

.field private static final HDMI_CMD_ON:I = 0x1

.field private static final HDMI_DISABLE_PERMISSION:Ljava/lang/String; = "com.sprint.android.permission.DISABLE_HDMI"

.field private static final HDMI_MODE_PRESENTATION:I = 0x211e

.field private static final HDMI_MODE_RESOLUTION:I = 0x211f

.field private static final IMEDIA_PLAYER:Ljava/lang/String; = "android.media.IMediaPlayer"

.field private static final KEY_PARAMETER_TIMED_TEXT_ADD_OUT_OF_BAND_SOURCE:I = 0x3e9

.field private static final KEY_PARAMETER_TIMED_TEXT_TRACK_INDEX:I = 0x3e8

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field private static final MEDIA_INFO:I = 0xc8

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field public static final METADATA_ALL:Z = false

.field public static final METADATA_UPDATE_ONLY:Z = true

.field private static final MM_HEADERS:[Ljava/lang/String; = null

.field private static final MM_SETTINGS:[Ljava/lang/String; = null

.field private static final PATH_HDMI_SETTING:Ljava/lang/String; = "/data/hdmi_setting"

.field private static final STATE:Ljava/lang/String; = "state"

.field private static final TAG:Ljava/lang/String; = "MediaPlayer"

.field private static mNetworkType:Ljava/lang/String;

.field private static mOutputSettingMode:I


# instance fields
.field private final TAG_UB:Ljava/lang/String;

.field private final UB_START:I

.field private final UB_STOP:I

.field private mContext:Landroid/content/Context;

.field private mEventHandler:Landroid/media/MediaPlayer$EventHandler;

.field private mHDMIListener:Landroid/media/HDMIStatusObserver$HDMIStatusListener;

.field private mHDMIObserver:Landroid/media/HDMIStatusObserver;

.field private mIsHDMIPlug:Z

.field private mListenerContext:I

.field private mMode:I

.field private mNativeContext:I

.field private mNativeSurfaceTexture:I

.field private mNeedSetHDMI:Z

.field private mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

.field private mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mScreenOnWhilePlaying:Z

.field private mStayAwake:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 546
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 547
    invoke-static {}, Landroid/media/MediaPlayer;->native_init()V

    .line 2273
    sput v3, Landroid/media/MediaPlayer;->mOutputSettingMode:I

    .line 2354
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "httpproxyip"

    aput-object v1, v0, v3

    const-string/jumbo v1, "httpproxyport"

    aput-object v1, v0, v4

    const-string/jumbo v1, "rtspproxyip"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "rtspproxyport"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "minudpport"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "maxudpport"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "buffertime"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "rtsptimeout"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "rtptimeout"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "rtcpreportinterval"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "rtspkeepaliveinterval"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaPlayer;->MM_SETTINGS:[Ljava/lang/String;

    .line 2368
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "rtspuseragent"

    aput-object v1, v0, v3

    const-string/jumbo v1, "wapprofile"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/MediaPlayer;->MM_HEADERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    iput-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1006
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/MediaPlayer;->UB_START:I

    .line 1007
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/MediaPlayer;->UB_STOP:I

    .line 1008
    const-string v1, "HtcDeviceInfoManager"

    iput-object v1, p0, Landroid/media/MediaPlayer;->TAG_UB:Ljava/lang/String;

    .line 2138
    iput v3, p0, Landroid/media/MediaPlayer;->mMode:I

    .line 2141
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mIsHDMIPlug:Z

    .line 2142
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mNeedSetHDMI:Z

    .line 2144
    iput-object v2, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    .line 2145
    iput-object v2, p0, Landroid/media/MediaPlayer;->mHDMIListener:Landroid/media/HDMIStatusObserver$HDMIStatusListener;

    .line 575
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_2

    .line 576
    new-instance v1, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    .line 586
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->native_setup(Ljava/lang/Object;)V

    .line 587
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x91

    if-ne v1, v2, :cond_1

    .line 588
    invoke-direct {p0}, Landroid/media/MediaPlayer;->hasHDMIPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    invoke-direct {p0}, Landroid/media/MediaPlayer;->registerHDMINotification()V

    .line 591
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getHDMIResolution()I

    .line 593
    :cond_1
    return-void

    .line 577
    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 578
    new-instance v1, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_0

    .line 580
    :cond_3
    iput-object v2, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_0
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset()V
.end method

.method private native _seekTo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSource(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method static synthetic access$000(Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 510
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->sendMediaBroadcast(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/media/MediaPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 510
    iget v0, p0, Landroid/media/MediaPlayer;->mNativeContext:I

    return v0
.end method

.method static synthetic access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 510
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 510
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 510
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/MediaPlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 510
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 510
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 510
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 510
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 510
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 510
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method private add_mm_headers(Landroid/content/ContentResolver;Ljava/util/Map;)V
    .locals 8
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2401
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Landroid/media/MediaPlayer;->MM_HEADERS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v1, v0, v3

    .line 2403
    .local v1, header_name:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "streamplayer_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_HTC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2404
    .local v2, header_value:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2405
    :cond_0
    const-string v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "header Name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is no value"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2408
    const-string/jumbo v5, "rtspuseragent"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2409
    const-string v5, "User-Agent"

    invoke-interface {p2, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2401
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2411
    :cond_3
    const-string/jumbo v5, "wapprofile"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2412
    const-string/jumbo v5, "x-wap-profile"

    invoke-interface {p2, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2416
    .end local v1           #header_name:Ljava/lang/String;
    .end local v2           #header_value:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private add_mm_headers_runtime(Ljava/util/Map;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2421
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "unknownPhoneType"

    sput-object v4, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;

    .line 2423
    :try_start_0
    iget-object v4, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2425
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2427
    const/4 v2, -0x1

    .line 2428
    .local v2, phoneNetworkType:I
    const-string/jumbo v4, "mobile"

    sput-object v4, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2431
    :try_start_1
    iget-object v4, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 2433
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    const-string v4, "MediaPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "operator number="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 2439
    .end local v3           #telephonyManager:Landroid/telephony/TelephonyManager;
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 2545
    .end local v0           #connMgr:Landroid/net/ConnectivityManager;
    .end local v2           #phoneNetworkType:I
    :goto_1
    return-void

    .line 2435
    .restart local v0       #connMgr:Landroid/net/ConnectivityManager;
    .restart local v2       #phoneNetworkType:I
    :catch_0
    move-exception v1

    .line 2436
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "MediaPlayer"

    const-string v5, "get telphoneManager exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2540
    .end local v0           #connMgr:Landroid/net/ConnectivityManager;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #phoneNetworkType:I
    :catch_1
    move-exception v1

    .line 2541
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v4, "MediaPlayer"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2442
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #connMgr:Landroid/net/ConnectivityManager;
    .restart local v2       #phoneNetworkType:I
    :pswitch_0
    :try_start_3
    const-string v4, "MediaPlayer"

    const-string/jumbo v5, "phone network type=GPRS"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    const-string/jumbo v4, "x-network-type"

    const-string v5, "GSM"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2444
    const-string v4, "Bandwidth"

    const-string v5, "141000"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2448
    :pswitch_1
    const-string v4, "MediaPlayer"

    const-string/jumbo v5, "phone network type=EDGE"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    const-string/jumbo v4, "x-network-type"

    const-string v5, "GSM"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2450
    const-string v4, "Bandwidth"

    const-string v5, "384000"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2460
    :pswitch_2
    const-string v4, "MediaPlayer"

    const-string/jumbo v5, "phone network type=UMTS"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    const-string/jumbo v4, "x-network-type"

    const-string v5, "UMTS"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2462
    const-string v4, "Bandwidth"

    const-string v5, "1920000"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2466
    :pswitch_3
    const-string v4, "MediaPlayer"

    const-string/jumbo v5, "phone network type=CDMA"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    const-string/jumbo v4, "x-network-type"

    const-string/jumbo v5, "iS95"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2468
    const-string v4, "Bandwidth"

    const-string v5, "141000"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2472
    :pswitch_4
    const-string v4, "MediaPlayer"

    const-string/jumbo v5, "phone network type=EVD 0"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    const-string/jumbo v4, "x-network-type"

    const-string v5, "EVDO 0"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2474
    const-string v4, "Bandwidth"

    const-string v5, "2400000"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2478
    :pswitch_5
    const-string v4, "MediaPlayer"

    const-string/jumbo v5, "phone network type=EVD0 A"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    const-string/jumbo v4, "x-network-type"

    const-string v5, "EVDO A"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2480
    const-string v4, "Bandwidth"

    const-string v5, "3100000"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2484
    :pswitch_6
    const-string v4, "MediaPlayer"

    const-string/jumbo v5, "phone network type=EVD0 B"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    const-string/jumbo v4, "x-network-type"

    const-string v5, "EVDO B"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2486
    const-string v4, "Bandwidth"

    const-string v5, "4900000"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2490
    :pswitch_7
    const-string v4, "MediaPlayer"

    const-string/jumbo v5, "phone network type=1xRTT"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    const-string/jumbo v4, "x-network-type"

    const-string v5, "1xRTT"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2492
    const-string v4, "Bandwidth"

    const-string v5, "1920000"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2496
    :pswitch_8
    const-string v4, "MediaPlayer"

    const-string/jumbo v5, "phone network type=LTE"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    const-string/jumbo v4, "x-network-type"

    const-string v5, "LTE"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2498
    const-string v4, "Bandwidth"

    const-string v5, "1920000"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2502
    :pswitch_9
    const-string v4, "MediaPlayer"

    const-string/jumbo v5, "phone network type=IDEN"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    const-string/jumbo v4, "x-network-type"

    const-string v5, "IDEN"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2504
    const-string v4, "Bandwidth"

    const-string v5, "1920000"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2508
    :pswitch_a
    const-string v4, "MediaPlayer"

    const-string/jumbo v5, "phone network type=EHRPD"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    const-string/jumbo v4, "x-network-type"

    const-string v5, "EHRPD"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2510
    const-string v4, "Bandwidth"

    const-string v5, "1920000"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2515
    .end local v2           #phoneNetworkType:I
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2517
    const-string v4, "MediaPlayer"

    const-string/jumbo v5, "network type=wifi"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    const-string/jumbo v4, "x-network-type"

    const-string v5, "WIFI"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2519
    const-string v4, "Bandwidth"

    const-string v5, "11000000"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2520
    const-string/jumbo v4, "wifi"

    sput-object v4, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2522
    :cond_1
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2524
    const-string v4, "MediaPlayer"

    const-string/jumbo v5, "network type=wimax"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    const-string/jumbo v4, "x-network-type"

    const-string v5, "Wimax"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2526
    const-string v4, "Bandwidth"

    const-string v5, "11000000"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2527
    const-string/jumbo v4, "wimax"

    sput-object v4, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2529
    :cond_2
    const/16 v4, 0x12

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    const/16 v4, 0x12

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2531
    const-string v4, "MediaPlayer"

    const-string/jumbo v5, "network type=USB"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    const-string/jumbo v4, "x-network-type"

    const-string v5, "USB"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2533
    const-string v4, "Bandwidth"

    const-string v5, "1920000"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2534
    const-string/jumbo v4, "usb"

    sput-object v4, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2537
    :cond_3
    const-string v4, "MediaPlayer"

    const-string/jumbo v5, "unknown network type"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 2439
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_9
        :pswitch_6
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method private add_mm_settings(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 9
    .parameter "resolver"
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2377
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 2378
    .local v1, host:Ljava/lang/String;
    sget-object v0, Landroid/media/MediaPlayer;->MM_SETTINGS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_5

    aget-object v4, v0, v2

    .line 2379
    .local v4, setting_name:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "streamplayer_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_HTC"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2380
    .local v5, setting_value:Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2381
    :cond_0
    const-string v6, "MediaPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skip setting ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",null) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2385
    :cond_1
    sget-object v6, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v1, :cond_4

    const-string/jumbo v6, "localhost"

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "127.0.0.1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    :cond_2
    const-string/jumbo v6, "httpproxyip"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "httpproxyport"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "rtspproxyip"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "rtspproxyport"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    .line 2389
    :cond_3
    const-string v6, "MediaPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skip setting ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") when NetworkType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2393
    :cond_4
    const-string v6, "MediaPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add setting ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "x-htc-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2396
    .end local v4           #setting_name:Ljava/lang/String;
    .end local v5           #setting_value:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public static create(Landroid/content/Context;I)Landroid/media/MediaPlayer;
    .locals 9
    .parameter "context"
    .parameter "resid"

    .prologue
    const/4 v8, 0x0

    .line 758
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 759
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    if-nez v6, :cond_0

    move-object v0, v8

    .line 776
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-object v0

    .line 761
    .restart local v6       #afd:Landroid/content/res/AssetFileDescriptor;
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 762
    .local v0, mp:Landroid/media/MediaPlayer;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 763
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 764
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 766
    .end local v0           #mp:Landroid/media/MediaPlayer;
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v7

    .line 767
    .local v7, ex:Ljava/io/IOException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v7           #ex:Ljava/io/IOException;
    :goto_1
    move-object v0, v8

    .line 776
    goto :goto_0

    .line 769
    :catch_1
    move-exception v7

    .line 770
    .local v7, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 772
    .end local v7           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 773
    .local v7, ex:Ljava/lang/SecurityException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 703
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;
    .locals 4
    .parameter "context"
    .parameter "uri"
    .parameter "holder"

    .prologue
    .line 721
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 722
    .local v1, mp:Landroid/media/MediaPlayer;
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 723
    if-eqz p2, :cond_0

    .line 724
    invoke-virtual {v1, p2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 726
    :cond_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 739
    .end local v1           #mp:Landroid/media/MediaPlayer;
    :goto_0
    return-object v1

    .line 728
    :catch_0
    move-exception v0

    .line 729
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "MediaPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 739
    .end local v0           #ex:Ljava/io/IOException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 731
    :catch_1
    move-exception v0

    .line 732
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "MediaPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 734
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 735
    .local v0, ex:Ljava/lang/SecurityException;
    const-string v2, "MediaPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getDrmPlaybackUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "drmuri"

    .prologue
    .line 802
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 803
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string/jumbo v3, "title"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "content_offset"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "content_id"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "content_boundary_offset"

    aput-object v3, v2, v1

    .line 809
    .local v2, cols:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 810
    .local v11, drmcur:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 813
    .local v10, drmFileToPlay:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 814
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 815
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 816
    const-string v1, "_data"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 817
    .local v9, data:Ljava/lang/String;
    const-string v1, "content_offset"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 819
    .local v7, contentOffset:I
    const-string v1, "content_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 821
    .local v8, contentid:Ljava/lang/String;
    const-string v1, "content_boundary_offset"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 824
    .local v6, boundaryoffset:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/htcfs/oma-drm1-fs"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&drm_header_len="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&drm_trailor_len="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&sd_content_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 828
    .end local v6           #boundaryoffset:Ljava/lang/String;
    .end local v7           #contentOffset:I
    .end local v8           #contentid:Ljava/lang/String;
    .end local v9           #data:Ljava/lang/String;
    :cond_0
    if-eqz v11, :cond_1

    .line 829
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 830
    const/4 v11, 0x0

    .line 834
    :cond_1
    return-object v10

    .line 828
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_2

    .line 829
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 830
    const/4 v11, 0x0

    .line 828
    :cond_2
    throw v1
.end method

.method private getHDMIPermission()I
    .locals 5

    .prologue
    .line 2149
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2150
    .local v0, Pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2151
    .local v1, Uid:I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const-string v4, "com.sprint.android.permission.DISABLE_HDMI"

    invoke-interface {v3, v4, v0, v1}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2153
    .end local v0           #Pid:I
    .end local v1           #Uid:I
    :goto_0
    return v3

    .line 2152
    :catch_0
    move-exception v2

    .line 2153
    .local v2, e:Landroid/os/RemoteException;
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private getHDMIResolution()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2158
    invoke-direct {p0}, Landroid/media/MediaPlayer;->readHDMISetting()V

    .line 2160
    sget v0, Landroid/media/MediaPlayer;->mOutputSettingMode:I

    packed-switch v0, :pswitch_data_0

    .line 2172
    iput v1, p0, Landroid/media/MediaPlayer;->mMode:I

    .line 2176
    :goto_0
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHDMIResolution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/media/MediaPlayer;->mOutputSettingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/MediaPlayer;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    iget v0, p0, Landroid/media/MediaPlayer;->mMode:I

    return v0

    .line 2163
    :pswitch_0
    iput v1, p0, Landroid/media/MediaPlayer;->mMode:I

    goto :goto_0

    .line 2166
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaPlayer;->mMode:I

    goto :goto_0

    .line 2169
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/MediaPlayer;->mMode:I

    goto :goto_0

    .line 2160
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private native getParameter(ILandroid/os/Parcel;)V
.end method

.method private hasHDMIPermission()Z
    .locals 4

    .prologue
    .line 2208
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getHDMIPermission()I

    move-result v0

    .line 2209
    .local v0, permission:I
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasHDMIPermission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    if-nez v0, :cond_0

    .line 2211
    const/4 v1, 0x0

    .line 2214
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isDrmUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 796
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://drm/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    const/4 v0, 0x1

    .line 798
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getMetadata(ZZLandroid/os/Parcel;)Z
.end method

.method private static final native native_init()V
.end method

.method private final native native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
.end method

.method public static native native_pullBatteryData(Landroid/os/Parcel;)I
.end method

.method private final native native_setMetadataFilter(Landroid/os/Parcel;)I
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "mediaplayer_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1793
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 1794
    .local v1, mp:Landroid/media/MediaPlayer;
    if-nez v1, :cond_1

    .line 1802
    :cond_0
    :goto_0
    return-void

    .line 1798
    :cond_1
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    if-eqz v2, :cond_0

    .line 1799
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1800
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private readHDMISetting()V
    .locals 5

    .prologue
    .line 2277
    const/4 v1, 0x0

    .line 2279
    .local v1, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/data/hdmi_setting"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2280
    .end local v1           #reader:Ljava/io/BufferedReader;
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v3

    sput v3, Landroid/media/MediaPlayer;->mOutputSettingMode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 2291
    if-eqz v2, :cond_2

    .line 2292
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 2293
    .end local v2           #reader:Ljava/io/BufferedReader;
    :goto_0
    const/4 v1, 0x0

    .line 2300
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    return-void

    .line 2282
    :catch_0
    move-exception v0

    .line 2283
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "hdmi_setting not found!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2291
    if-eqz v1, :cond_0

    .line 2292
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 2296
    :catch_1
    move-exception v0

    .line 2297
    .local v0, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2286
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 2287
    .restart local v0       #e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2291
    if-eqz v1, :cond_0

    .line 2292
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 2296
    :catch_3
    move-exception v0

    goto :goto_3

    .line 2290
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 2291
    :goto_5
    if-eqz v1, :cond_1

    .line 2292
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 2293
    const/4 v1, 0x0

    .line 2290
    :cond_1
    :goto_6
    throw v3

    .line 2296
    :catch_4
    move-exception v0

    .line 2297
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 2296
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_5
    move-exception v0

    .line 2297
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_1

    .line 2290
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_5

    .line 2286
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 2282
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private registerHDMINotification()V
    .locals 5

    .prologue
    .line 2219
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "registerHDMINotification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.htc.android.psclient/hdmi_status"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2222
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2253
    :goto_0
    return-void

    .line 2226
    :cond_0
    new-instance v2, Landroid/media/HDMIStatusObserver;

    invoke-direct {v2}, Landroid/media/HDMIStatusObserver;-><init>()V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    .line 2227
    iget-object v2, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    if-nez v2, :cond_1

    .line 2228
    const-string v2, "MediaPlayer"

    const-string v3, "HDMIStatusObserver create failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2232
    :cond_1
    iget-object v2, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    invoke-static {}, Landroid/media/HDMIStatusObserver;->isHDMIPlug()Z

    move-result v1

    .line 2233
    .local v1, isPlug:Z
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isHDMIPlug(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    invoke-virtual {p0, v1}, Landroid/media/MediaPlayer;->onHDMIStateChanged(Z)V

    .line 2236
    new-instance v2, Landroid/media/MediaPlayer$2;

    iget-object v3, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, p0, v3}, Landroid/media/MediaPlayer$2;-><init>(Landroid/media/MediaPlayer;Landroid/media/HDMIStatusObserver;)V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mHDMIListener:Landroid/media/HDMIStatusObserver$HDMIStatusListener;

    .line 2246
    iget-object v2, p0, Landroid/media/MediaPlayer;->mHDMIListener:Landroid/media/HDMIStatusObserver$HDMIStatusListener;

    if-nez v2, :cond_2

    .line 2247
    const-string v2, "MediaPlayer"

    const-string v3, "HDMIStatusListener create failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2251
    :cond_2
    iget-object v2, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    iget-object v3, p0, Landroid/media/MediaPlayer;->mHDMIListener:Landroid/media/HDMIStatusObserver$HDMIStatusListener;

    invoke-virtual {v2, v3}, Landroid/media/HDMIStatusObserver;->setListener(Landroid/media/HDMIStatusObserver$HDMIStatusListener;)V

    .line 2252
    iget-object v2, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    invoke-virtual {v2}, Landroid/media/HDMIStatusObserver;->startWatching()V

    goto :goto_0
.end method

.method private static sendMediaBroadcast(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "act"

    .prologue
    .line 1044
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1045
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.HtcDeviceInfoManager.MediaReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1046
    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1047
    const-string v1, "act"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1048
    const-string/jumbo v1, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1049
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1050
    return-void
.end method

.method private setHDMI(Z)V
    .locals 7
    .parameter "enableHDMI"

    .prologue
    const/4 v4, 0x1

    .line 2192
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v2

    .line 2193
    .local v2, req:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2195
    .local v1, rep:Landroid/os/Parcel;
    const/16 v5, 0x211e

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2197
    if-eqz p1, :cond_1

    move v0, v4

    .line 2198
    .local v0, param:I
    :goto_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2200
    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v3

    .line 2201
    .local v3, retcode:I
    if-eqz v3, :cond_0

    .line 2202
    iput-boolean v4, p0, Landroid/media/MediaPlayer;->mNeedSetHDMI:Z

    .line 2204
    :cond_0
    const-string v4, "MediaPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setHDMI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    return-void

    .line 2197
    .end local v0           #param:I
    .end local v3           #retcode:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setHDMIOutput(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 2340
    sput p0, Landroid/media/MediaPlayer;->mOutputSettingMode:I

    .line 2341
    invoke-static {}, Landroid/media/MediaPlayer;->writeHDMIsetting()V

    .line 2342
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHDMIOutput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    return-void
.end method

.method private setHDMIResolution(I)V
    .locals 6
    .parameter "mode"

    .prologue
    .line 2181
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v1

    .line 2182
    .local v1, req:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2184
    .local v0, rep:Landroid/os/Parcel;
    const/16 v3, 0x211f

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2185
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2187
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v2

    .line 2188
    .local v2, retcode:I
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHDMIResolution: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    return-void
.end method

.method private static setPermission(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 2332
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2337
    :goto_0
    return-void

    .line 2334
    :catch_0
    move-exception v0

    .line 2335
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private start_stop_notify(I)V
    .locals 6
    .parameter "act"

    .prologue
    .line 1011
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 1012
    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Landroid/media/MediaPlayer;->sendMediaBroadcast(Landroid/content/Context;I)V

    .line 1042
    :goto_0
    return-void

    .line 1015
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 1016
    .local v2, loopMain:Landroid/os/Looper;
    if-nez v2, :cond_1

    .line 1017
    const-string v3, "HtcDeviceInfoManager"

    const-string v4, "MediaPlayer.satr_stop_notify, no main loop!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1038
    .end local v2           #loopMain:Landroid/os/Looper;
    :catch_0
    move-exception v0

    .line 1040
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaPlayer.start_stop_notify, ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1020
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v2       #loopMain:Landroid/os/Looper;
    :cond_1
    :try_start_1
    new-instance v1, Landroid/media/MediaPlayer$1;

    invoke-direct {v1, p0, v2, p1}, Landroid/media/MediaPlayer$1;-><init>(Landroid/media/MediaPlayer;Landroid/os/Looper;I)V

    .line 1036
    .local v1, h:Landroid/os/Handler;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private stayAwake(Z)V
    .locals 1
    .parameter "awake"

    .prologue
    .line 1171
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileForceDisableUlog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1172
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->start_stop_notify(I)V

    .line 1176
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 1177
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1178
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1183
    :cond_1
    :goto_1
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    .line 1184
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1185
    return-void

    .line 1172
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1179
    :cond_3
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1180
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1
.end method

.method private unregisterHDMINotification()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2256
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "unregisterHDMINotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    iget-object v0, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    if-eqz v0, :cond_0

    .line 2259
    iget-object v0, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    invoke-virtual {v0}, Landroid/media/HDMIStatusObserver;->stopWatching()V

    .line 2260
    iget-object v0, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    invoke-virtual {v0, v2}, Landroid/media/HDMIStatusObserver;->setListener(Landroid/media/HDMIStatusObserver$HDMIStatusListener;)V

    .line 2261
    iput-object v2, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    .line 2263
    :cond_0
    return-void
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    .prologue
    .line 1188
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 1189
    iget-object v1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 1191
    :cond_0
    return-void

    .line 1189
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static writeHDMIsetting()V
    .locals 5

    .prologue
    .line 2303
    const/4 v1, 0x0

    .line 2305
    .local v1, writer:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/data/hdmi_setting"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2306
    .end local v1           #writer:Ljava/io/BufferedWriter;
    .local v2, writer:Ljava/io/BufferedWriter;
    :try_start_1
    sget v3, Landroid/media/MediaPlayer;->mOutputSettingMode:I

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c

    .line 2317
    if-eqz v2, :cond_2

    .line 2318
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 2319
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 2320
    const/4 v1, 0x0

    .line 2321
    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    :try_start_4
    const-string v3, "/data/hdmi_setting"
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    :try_start_5
    invoke-static {v3}, Landroid/media/MediaPlayer;->setPermission(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 2328
    :cond_0
    :goto_0
    return-void

    .line 2308
    :catch_0
    move-exception v0

    .line 2309
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_6
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "hdmi_setting not found!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2317
    if-eqz v1, :cond_0

    .line 2318
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 2319
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 2320
    const/4 v1, 0x0

    .line 2321
    const-string v3, "/data/hdmi_setting"

    invoke-static {v3}, Landroid/media/MediaPlayer;->setPermission(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 2324
    :catch_1
    move-exception v0

    .line 2325
    .local v0, e:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2312
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 2313
    .restart local v0       #e:Ljava/io/IOException;
    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2317
    if-eqz v1, :cond_0

    .line 2318
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 2319
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    .line 2320
    const/4 v1, 0x0

    .line 2321
    :try_start_b
    const-string v3, "/data/hdmi_setting"
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    :try_start_c
    invoke-static {v3}, Landroid/media/MediaPlayer;->setPermission(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_0

    .line 2324
    :catch_3
    move-exception v0

    goto :goto_2

    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 2325
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2316
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    :goto_4
    throw v3

    :catchall_0
    move-exception v3

    .line 2317
    :goto_5
    if-eqz v1, :cond_1

    .line 2318
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 2319
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 2320
    const/4 v1, 0x0

    .line 2321
    const-string v4, "/data/hdmi_setting"

    invoke-static {v4}, Landroid/media/MediaPlayer;->setPermission(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_4

    .line 2324
    .end local v1           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    goto :goto_2

    .end local v1           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_2

    .restart local v0       #e:Ljava/io/IOException;
    :catch_9
    move-exception v0

    goto :goto_2

    :catch_a
    move-exception v0

    goto :goto_2

    :catch_b
    move-exception v0

    goto :goto_2

    .line 2316
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    goto :goto_5

    .line 2312
    .end local v1           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    :catch_c
    move-exception v0

    move-object v1, v2

    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 2308
    .end local v1           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    :catch_d
    move-exception v0

    move-object v1, v2

    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v1           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    :cond_2
    move-object v1, v2

    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    goto :goto_0
.end method


# virtual methods
.method public native attachAuxEffect(I)V
.end method

.method public disableTimedText()Z
    .locals 2

    .prologue
    .line 1668
    const/16 v0, 0x3e8

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaPlayer;->setParameter(II)Z

    move-result v0

    return v0
.end method

.method public enableTimedText()Z
    .locals 1

    .prologue
    .line 1659
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->enableTimedTextTrackIndex(I)Z

    move-result v0

    return v0
.end method

.method public enableTimedTextTrackIndex(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 1647
    if-gez p1, :cond_0

    .line 1648
    const/4 v0, 0x0

    .line 1650
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaPlayer;->setParameter(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 1680
    invoke-direct {p0}, Landroid/media/MediaPlayer;->native_finalize()V

    return-void
.end method

.method public native getAudioSessionId()I
.end method

.method public native getCurrentPosition()I
.end method

.method public native getDuration()I
.end method

.method public native getFrameAt(I)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public getIntParameter(I)I
    .locals 2
    .parameter "key"

    .prologue
    .line 1580
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1581
    .local v0, p:Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->getParameter(ILandroid/os/Parcel;)V

    .line 1582
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1583
    .local v1, ret:I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1584
    return v1
.end method

.method public getMetadata(ZZ)Landroid/media/Metadata;
    .locals 4
    .parameter "update_only"
    .parameter "apply_filter"

    .prologue
    const/4 v2, 0x0

    .line 1267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1268
    .local v1, reply:Landroid/os/Parcel;
    new-instance v0, Landroid/media/Metadata;

    invoke-direct {v0}, Landroid/media/Metadata;-><init>()V

    .line 1270
    .local v0, data:Landroid/media/Metadata;
    invoke-direct {p0, p1, p2, v1}, Landroid/media/MediaPlayer;->native_getMetadata(ZZLandroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    .line 1281
    .end local v0           #data:Landroid/media/Metadata;
    :cond_0
    :goto_0
    return-object v0

    .line 1277
    .restart local v0       #data:Landroid/media/Metadata;
    :cond_1
    invoke-virtual {v0, v1}, Landroid/media/Metadata;->parse(Landroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1278
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    .line 1279
    goto :goto_0
.end method

.method public getParcelParameter(I)Landroid/os/Parcel;
    .locals 1
    .parameter "key"

    .prologue
    .line 1554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1555
    .local v0, p:Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->getParameter(ILandroid/os/Parcel;)V

    .line 1556
    return-object v0
.end method

.method public getStringParameter(I)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 1566
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1567
    .local v0, p:Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->getParameter(ILandroid/os/Parcel;)V

    .line 1568
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1569
    .local v1, ret:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1570
    return-object v1
.end method

.method public native getVideoHeight()I
.end method

.method public native getVideoWidth()I
.end method

.method public invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
    .locals 2
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 635
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    .line 636
    .local v0, retcode:I
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 637
    return v0
.end method

.method public native isLooping()Z
.end method

.method public native isPlaying()Z
.end method

.method public newRequest()Landroid/os/Parcel;
    .locals 2

    .prologue
    .line 613
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 614
    .local v0, parcel:Landroid/os/Parcel;
    const-string v1, "android.media.IMediaPlayer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 615
    return-object v0
.end method

.method public onHDMIStateChanged(Z)V
    .locals 2
    .parameter "isPlugin"

    .prologue
    .line 2266
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "onHDMIStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mIsHDMIPlug:Z

    if-eq v0, p1, :cond_0

    .line 2268
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mIsHDMIPlug:Z

    .line 2269
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->setHDMI(Z)V

    .line 2271
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1105
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "pause() in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1107
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_pause()V

    .line 1108
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "pause() out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    return-void
.end method

.method public native prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1351
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "release() in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1353
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1354
    iput-object v2, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 1355
    iput-object v2, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 1356
    iput-object v2, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1357
    iput-object v2, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 1358
    iput-object v2, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1359
    iput-object v2, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 1360
    iput-object v2, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 1361
    iput-object v2, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 1362
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x91

    if-ne v0, v1, :cond_0

    .line 1363
    invoke-direct {p0}, Landroid/media/MediaPlayer;->unregisterHDMINotification()V

    .line 1365
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_release()V

    .line 1366
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "release() out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 1377
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "reset() in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1379
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_reset()V

    .line 1381
    iget-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1382
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "reset() out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    return-void
.end method

.method public seekTo(I)V
    .locals 0
    .parameter "msec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1230
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_seekTo(I)V

    .line 1231
    return-void
.end method

.method public native setAudioSessionId(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setAudioStreamType(I)V
.end method

.method public native setAuxEffectSendLevel(F)V
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 789
    invoke-direct {p0, p2}, Landroid/media/MediaPlayer;->isDrmUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->getDrmPlaybackUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 792
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 793
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 10
    .parameter "context"
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 848
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataSource(Context context, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Map<String, String> headers) in"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-direct {p0, p2}, Landroid/media/MediaPlayer;->isDrmUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->getDrmPlaybackUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 854
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 855
    .local v9, scheme:Ljava/lang/String;
    if-eqz v9, :cond_1

    const-string v0, "file"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 856
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 904
    :cond_2
    :goto_0
    return-void

    .line 861
    :cond_3
    iput-object p1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 863
    const/4 v7, 0x0

    .line 865
    .local v7, fd:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 866
    .local v8, resolver:Landroid/content/ContentResolver;
    const-string/jumbo v0, "r"

    invoke-virtual {v8, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 867
    if-nez v7, :cond_4

    .line 884
    if-eqz v7, :cond_2

    .line 885
    :goto_1
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 873
    :cond_4
    :try_start_1
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 874
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 884
    :goto_2
    if-eqz v7, :cond_2

    goto :goto_1

    .line 876
    :cond_5
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 879
    .end local v8           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .line 880
    .local v6, ex:Ljava/lang/SecurityException;
    :try_start_2
    const-string v0, "MediaPlayer"

    invoke-virtual {v6}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 884
    if-eqz v7, :cond_6

    .line 885
    .end local v6           #ex:Ljava/lang/SecurityException;
    :goto_3
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 889
    :cond_6
    if-nez p3, :cond_7

    .line 890
    new-instance p3, Ljava/util/HashMap;

    .end local p3           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 893
    .restart local p3       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 895
    .restart local v8       #resolver:Landroid/content/ContentResolver;
    invoke-direct {p0, v8, p3}, Landroid/media/MediaPlayer;->add_mm_headers(Landroid/content/ContentResolver;Ljava/util/Map;)V

    .line 896
    invoke-direct {p0, p3}, Landroid/media/MediaPlayer;->add_mm_headers_runtime(Ljava/util/Map;)V

    .line 897
    invoke-direct {p0, v8, p2, p3}, Landroid/media/MediaPlayer;->add_mm_settings(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/Map;)V

    .line 899
    const-string v0, "MediaPlayer"

    const-string v1, "Couldn\'t open file on client side, trying server side"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 902
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataSource(Context context, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Map<String, String> headers) out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 881
    .end local v8           #resolver:Landroid/content/ContentResolver;
    :catch_1
    move-exception v6

    .line 882
    .local v6, ex:Ljava/io/IOException;
    :try_start_3
    const-string v0, "MediaPlayer"

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 884
    if-eqz v7, :cond_6

    goto :goto_3

    .end local v6           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_8

    .line 885
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 884
    :cond_8
    throw v0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 963
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setDataSource(FileDescriptor fd) in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 965
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setDataSource(FileDescriptor fd) out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    return-void
.end method

.method public native setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 0
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 910
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setDataSource(Ljava/lang/String;)V

    .line 911
    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 926
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 927
    .local v3, keys:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 929
    .local v5, values:[Ljava/lang/String;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 930
    .local v4, tmpUri:Landroid/net/Uri;
    invoke-direct {p0, v4}, Landroid/media/MediaPlayer;->isDrmUri(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 931
    const-string v6, "MediaPlayer"

    const-string v7, "It is not a valid drm content path, setDataSource() fail!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :goto_0
    return-void

    .line 935
    :cond_0
    if-eqz p2, :cond_1

    .line 936
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v6

    new-array v3, v6, [Ljava/lang/String;

    .line 937
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 939
    const/4 v1, 0x0

    .line 940
    .local v1, i:I
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 941
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v3, v1

    .line 942
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v5, v1

    .line 943
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 946
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-direct {p0, p1, v3, v5}, Landroid/media/MediaPlayer;->_setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "sh"

    .prologue
    .line 653
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 655
    if-eqz p1, :cond_0

    .line 656
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 660
    .local v0, surface:Landroid/view/Surface;
    :goto_0
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 661
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 662
    return-void

    .line 658
    .end local v0           #surface:Landroid/view/Surface;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #surface:Landroid/view/Surface;
    goto :goto_0
.end method

.method public native setLooping(Z)V
.end method

.method public setMetadataFilter(Ljava/util/Set;Ljava/util/Set;)I
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1309
    .local p1, allow:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, block:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v2

    .line 1315
    .local v2, request:Landroid/os/Parcel;
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v6

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x4

    add-int v0, v4, v5

    .line 1317
    .local v0, capacity:I
    invoke-virtual {v2}, Landroid/os/Parcel;->dataCapacity()I

    move-result v4

    if-ge v4, v0, :cond_0

    .line 1318
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 1321
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1322
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1323
    .local v3, t:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1325
    .end local v3           #t:Ljava/lang/Integer;
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1326
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1327
    .restart local v3       #t:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1329
    .end local v3           #t:Ljava/lang/Integer;
    :cond_2
    invoke-direct {p0, v2}, Landroid/media/MediaPlayer;->native_setMetadataFilter(Landroid/os/Parcel;)I

    move-result v4

    return v4
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1887
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 1888
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1853
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1854
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2035
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 2036
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2119
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 2120
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1826
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 1827
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1914
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 1915
    return-void
.end method

.method public setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1975
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 1976
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1943
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 1944
    return-void
.end method

.method public setParameter(II)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1533
    .local v0, p:Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1534
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 1535
    .local v1, ret:Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1536
    return v1
.end method

.method public native setParameter(ILandroid/os/Parcel;)Z
.end method

.method public setParameter(ILjava/lang/String;)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1518
    .local v0, p:Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 1520
    .local v1, ret:Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1521
    return v1
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2
    .parameter "screenOn"

    .prologue
    .line 1159
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_1

    .line 1160
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 1161
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :cond_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    .line 1164
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1166
    :cond_1
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2
    .parameter "surface"

    .prologue
    .line 683
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 684
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 687
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 688
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 689
    return-void
.end method

.method public native setVolume(FF)V
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 1131
    const/4 v1, 0x0

    .line 1132
    .local v1, washeld:Z
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 1133
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1134
    const/4 v1, 0x1

    .line 1135
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1137
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1140
    :cond_1
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1141
    .local v0, pm:Landroid/os/PowerManager;
    const/high16 v2, 0x2000

    or-int/2addr v2, p2

    const-class v3, Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1142
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1143
    if-eqz v1, :cond_2

    .line 1144
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1146
    :cond_2
    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1062
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "start() in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x91

    if-ne v0, v1, :cond_1

    .line 1064
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mNeedSetHDMI:Z

    if-eqz v0, :cond_0

    .line 1065
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPlayer;->mNeedSetHDMI:Z

    .line 1066
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mIsHDMIPlug:Z

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->setHDMI(Z)V

    .line 1069
    :cond_0
    iget v0, p0, Landroid/media/MediaPlayer;->mMode:I

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->setHDMIResolution(I)V

    .line 1071
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1072
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_start()V

    .line 1073
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "start() out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    return-void
.end method

.method public stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1085
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "stop() in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x91

    if-ne v0, v1, :cond_0

    .line 1087
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mIsHDMIPlug:Z

    if-eqz v0, :cond_0

    .line 1088
    invoke-direct {p0, v2}, Landroid/media/MediaPlayer;->setHDMI(Z)V

    .line 1091
    :cond_0
    invoke-direct {p0, v2}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1092
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_stop()V

    .line 1093
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "stop() out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    return-void
.end method
