.class public final Lcom/broadcom/bt/service/fm/FmReceiver;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "FmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/FmReceiver$1;,
        Lcom/broadcom/bt/service/fm/FmReceiver$FmBroadcastReceiver;,
        Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;
    }
.end annotation


# static fields
.field public static final ACTION_ON_AUDIO_MODE:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_AUDIO_MODE"

.field public static final ACTION_ON_AUDIO_PATH:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_AUDIO_PATH"

.field public static final ACTION_ON_AUDIO_QUAL:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_AUDIO_QUAL"

.field public static final ACTION_ON_EST_NFL:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_EST_NFL"

.field public static final ACTION_ON_RDS_DATA:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_RDS_DATA"

.field public static final ACTION_ON_RDS_MODE:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_RDS_MODE"

.field public static final ACTION_ON_SEEK_CMPL:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_SEEK_CMPL"

.field public static final ACTION_ON_STATUS:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_STATUS"

.field public static final ACTION_ON_VOL:Ljava/lang/String; = "ON_VOL"

.field public static final ACTION_ON_WRLD_RGN:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_WRLD_RGN"

.field private static final ACTION_PREFIX:Ljava/lang/String; = "com.broadcom.bt.app.fm.action."

#the value of this static final field might be set in the static constructor
.field private static final ACTION_PREFIX_LENGTH:I = 0x0

.field public static final AF_MODE_DEFAULT:I = 0x0

.field public static final AF_MODE_OFF:I = 0x0

.field public static final AF_MODE_ON:I = 0x1

.field public static final AUDIO_MODE_AUTO:I = 0x0

.field public static final AUDIO_MODE_BLEND:I = 0x3

.field public static final AUDIO_MODE_MONO:I = 0x2

.field public static final AUDIO_MODE_STEREO:I = 0x1

.field public static final AUDIO_MODE_SWITCH:I = 0x3

.field public static final AUDIO_PATH_NONE:I = 0x0

.field public static final AUDIO_PATH_SPEAKER:I = 0x1

.field public static final AUDIO_PATH_WIRE_HEADSET:I = 0x2

.field public static final AUDIO_QUALITY_BLEND:I = 0x4

.field public static final AUDIO_QUALITY_MONO:I = 0x2

.field public static final AUDIO_QUALITY_STEREO:I = 0x1

.field public static final DEEMPHASIS_50U:I = 0x0

.field public static final DEEMPHASIS_75U:I = 0x40

.field public static final DEEMPHASIS_TIME_DEFAULT:I = 0x40

.field public static final EXTRA_ALT_FREQ_MODE:Ljava/lang/String; = "ALT_FREQ_MODE"

.field public static final EXTRA_AUDIO_MODE:Ljava/lang/String; = "AUDIO_MODE"

.field public static final EXTRA_AUDIO_PATH:Ljava/lang/String; = "AUDIO_PATH"

.field public static final EXTRA_FREQ:Ljava/lang/String; = "FREQ"

.field public static final EXTRA_MUTED:Ljava/lang/String; = "MUTED"

.field public static final EXTRA_NFL:Ljava/lang/String; = "NFL"

.field public static final EXTRA_RADIO_ON:Ljava/lang/String; = "RADIO_ON"

.field public static final EXTRA_RDS_DATA_TYPE:Ljava/lang/String; = "RDS_DATA_TYPE"

.field public static final EXTRA_RDS_IDX:Ljava/lang/String; = "RDS_IDX"

.field public static final EXTRA_RDS_MODE:Ljava/lang/String; = "RDS_MODE"

.field public static final EXTRA_RDS_PRGM_SVC:Ljava/lang/String; = "RDS_PRGM_SVC"

.field public static final EXTRA_RDS_PRGM_TYPE:Ljava/lang/String; = "RDS_PRGM_TYPE"

.field public static final EXTRA_RDS_PRGM_TYPE_NAME:Ljava/lang/String; = "RDS_PRGM_TYPE_NAME"

.field public static final EXTRA_RDS_TXT:Ljava/lang/String; = "RDS_TXT"

.field public static final EXTRA_RSSI:Ljava/lang/String; = "RSSI"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "STATUS"

.field public static final EXTRA_SUCCESS:Ljava/lang/String; = "RDS_SUCCESS"

.field public static final EXTRA_VOL:Ljava/lang/String; = "VOL"

.field public static final EXTRA_WRLD_RGN:Ljava/lang/String; = "WRLD_RGN"

.field public static final FM_HW_ROUTE_VIA_ADC:I = 0x0

.field public static final FM_HW_ROUTE_VIA_I2S:I = 0x80

.field public static final FM_RECEIVER_PERM:Ljava/lang/String; = "android.permission.ACCESS_FM_RECEIVER"

.field public static final FM_VOLUME_MAX:I = 0x100

.field public static final FREQ_STEP_100KHZ:I = 0x0

.field public static final FREQ_STEP_50KHZ:I = 0x10

.field public static final FREQ_STEP_DEFAULT:I = 0x0

.field public static final FUNCTIONALITY_DEFAULT:I = 0x0

.field public static final FUNC_AF:I = 0x40

.field public static final FUNC_RBDS:I = 0x20

.field public static final FUNC_RDS:I = 0x10

.field public static final FUNC_REGION_DEFAULT:I = 0x0

.field public static final FUNC_REGION_EUR:I = 0x1

.field public static final FUNC_REGION_JP:I = 0x2

.field public static final FUNC_REGION_NA:I = 0x0

.field public static final FUNC_SOFTMUTE:I = 0x100

.field public static final LIVE_AUDIO_QUALITY_DEFAULT:Z = false

.field public static final MIN_SIGNAL_STRENGTH_DEFAULT:I = 0x69

.field public static final NFL_DEFAULT:I = 0x1

.field public static final NFL_FINE:I = 0x2

.field public static final NFL_LOW:I = 0x0

.field public static final NFL_MED:I = 0x1

.field public static final RDS_COND_NONE:I = 0x0

.field public static final RDS_COND_PTY:I = 0x1

.field public static final RDS_COND_TP:I = 0x2

.field public static final RDS_FEATURE_PS:I = 0x4

.field public static final RDS_FEATURE_PTY:I = 0x8

.field public static final RDS_FEATURE_PTYN:I = 0x20

.field public static final RDS_FEATURE_RT:I = 0x40

.field public static final RDS_FEATURE_TP:I = 0x10

.field public static final RDS_MODE_DEFAULT_ON:I = 0x1

.field public static final RDS_MODE_OFF:I = 0x0

.field public static final RDS_MODE_RBDS_ON:I = 0x3

.field public static final RDS_MODE_RDS_ON:I = 0x2

.field public static final SCAN_MODE_DOWN:I = 0x0

.field public static final SCAN_MODE_FAST:I = 0x81

.field public static final SCAN_MODE_FULL:I = 0x82

.field public static final SCAN_MODE_NORMAL:I = 0x0

.field public static final SCAN_MODE_UP:I = 0x80

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_fm_receiver_service"

.field public static final SIGNAL_POLL_INTERVAL_DEFAULT:I = 0x64

.field public static final STATUS_FAIL:I = 0x1

.field public static final STATUS_ILLEGAL_COMMAND:I = 0x3

.field public static final STATUS_ILLEGAL_PARAMETERS:I = 0x4

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_RADIO_STATE_BUSY:I = 0x5

.field public static final STATUS_SERVER_FAIL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FmReceiver"


# instance fields
.field private mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

.field private mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

.field private mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const-string v0, "com.broadcom.bt.app.fm.action."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiver;->ACTION_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 583
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 557
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    .line 584
    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiver;->ACTION_PREFIX_LENGTH:I

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 670
    if-nez p0, :cond_0

    .line 671
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 673
    .restart local p0
    :cond_0
    const-string v0, "com.broadcom.bt.app.fm.action.ON_AUDIO_MODE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 674
    const-string v0, "com.broadcom.bt.app.fm.action.ON_AUDIO_PATH"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 675
    const-string v0, "com.broadcom.bt.app.fm.action.ON_AUDIO_QUAL"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 676
    const-string v0, "com.broadcom.bt.app.fm.action.ON_EST_NFL"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 677
    const-string v0, "com.broadcom.bt.app.fm.action.ON_RDS_DATA"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 678
    const-string v0, "com.broadcom.bt.app.fm.action.ON_RDS_MODE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 679
    const-string v0, "com.broadcom.bt.app.fm.action.ON_SEEK_CMPL"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 680
    const-string v0, "com.broadcom.bt.app.fm.action.ON_STATUS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 681
    const-string v0, "ON_VOL"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 682
    const-string v0, "com.broadcom.bt.app.fm.action.ON_WRLD_RGN"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 683
    return-object p0
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .locals 3
    .parameter "ctx"
    .parameter "cb"

    .prologue
    .line 572
    const-string v1, "bluetooth_fm_receiver_service"

    invoke-static {p0, v1}, Lcom/broadcom/bt/service/fm/FmServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 573
    const-string v1, "FmReceiver"

    const-string v2, "Unable to get FMReceiver proxy: service is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const/4 v1, 0x0

    .line 578
    :goto_0
    return v1

    .line 577
    :cond_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-direct {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;-><init>()V

    .line 578
    .local v0, p:Lcom/broadcom/bt/service/fm/FmReceiver;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.FmService"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized estimateNoiseFloorLevel(I)I
    .locals 4
    .parameter "nflLevel"

    .prologue
    .line 1256
    monitor-enter p0

    const/4 v1, 0x2

    .line 1259
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->estimateNoiseFloorLevel(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1264
    :goto_0
    monitor-exit p0

    return v1

    .line 1260
    :catch_0
    move-exception v0

    .line 1261
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "estimateNoiseFloorLevel() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1256
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 1296
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 1297
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    .line 717
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    if-eqz v1, :cond_0

    .line 718
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    .line 727
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 729
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 733
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    .line 736
    :cond_1
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V

    .line 737
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 738
    monitor-exit p0

    return-void

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "FmReceiver"

    const-string v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 717
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getIsMute()Z
    .locals 4

    .prologue
    .line 915
    const/4 v1, 0x0

    .line 917
    .local v1, returnStatus:Z
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->getIsMute()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 921
    :goto_0
    return v1

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "getIsMute() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getMonoStereoMode()I
    .locals 4

    .prologue
    .line 883
    const/4 v1, 0x0

    .line 885
    .local v1, returnStatus:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->getMonoStereoMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 889
    :goto_0
    return v1

    .line 886
    :catch_0
    move-exception v0

    .line 887
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "getMonoStereoMode() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getRadioIsOn()Z
    .locals 4

    .prologue
    .line 863
    const/4 v1, 0x0

    .line 865
    .local v1, returnStatus:Z
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->getRadioIsOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 869
    :goto_0
    return v1

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "getRadioIsOn() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized getStatus()I
    .locals 4

    .prologue
    .line 844
    monitor-enter p0

    const/4 v1, 0x2

    .line 847
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->getStatus()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 852
    :goto_0
    monitor-exit p0

    return v1

    .line 848
    :catch_0
    move-exception v0

    .line 849
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "getStatus() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 844
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getTunedFrequency()I
    .locals 4

    .prologue
    .line 899
    const/4 v1, 0x0

    .line 901
    .local v1, returnStatus:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->getTunedFrequency()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 905
    :goto_0
    return v1

    .line 902
    :catch_0
    move-exception v0

    .line 903
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "getTunedFrequency() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected init(Landroid/os/IBinder;)Z
    .locals 3
    .parameter "service"

    .prologue
    .line 593
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/fm/IFmReceiverService;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    const/4 v1, 0x1

    .line 599
    :goto_0
    return v1

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "FmReceiver"

    const-string v2, "Unable to initialize BluetoothFM proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized muteAudio(Z)I
    .locals 4
    .parameter "mute"

    .prologue
    .line 936
    monitor-enter p0

    const/4 v1, 0x2

    .line 939
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->muteAudio(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 944
    :goto_0
    monitor-exit p0

    return v1

    .line 940
    :catch_0
    move-exception v0

    .line 941
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "muteAudio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 936
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 612
    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiver"

    const-string v1, "registerEventHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;Landroid/content/IntentFilter;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    monitor-exit p0

    return-void

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    .locals 3
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "threadHandler"
    .parameter "receiverPriority"

    .prologue
    .line 633
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    .line 652
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    if-nez v1, :cond_0

    .line 653
    new-instance v1, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;-><init>(Lcom/broadcom/bt/service/fm/FmReceiver;Lcom/broadcom/bt/service/fm/FmReceiver$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 661
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 656
    :catch_0
    move-exception v0

    .line 657
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "FmReceiver"

    const-string v2, "Error registering callback handler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 633
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;Landroid/content/IntentFilter;ZI)V
    .locals 2
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "createCallbackThread"
    .parameter "receiverPriority"

    .prologue
    .line 625
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/broadcom/bt/service/fm/FmReceiver;->registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    monitor-exit p0

    return-void

    .line 625
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public seekRdsStation(III)I
    .locals 1
    .parameter "scanMode"
    .parameter "rdsCondition"
    .parameter "rdsValue"

    .prologue
    .line 1050
    const/16 v0, 0x69

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekRdsStation(IIII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized seekRdsStation(IIII)I
    .locals 4
    .parameter "scanMode"
    .parameter "minSignalStrength"
    .parameter "rdsCondition"
    .parameter "rdsValue"

    .prologue
    .line 1017
    monitor-enter p0

    const/4 v1, 0x2

    .line 1020
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->seekRdsStation(IIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1026
    :goto_0
    monitor-exit p0

    return v1

    .line 1022
    :catch_0
    move-exception v0

    .line 1023
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "seekRdsStation() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1017
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public seekStation(I)I
    .locals 1
    .parameter "scanMode"

    .prologue
    .line 991
    const/16 v0, 0x69

    invoke-virtual {p0, p1, v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekStation(II)I

    move-result v0

    return v0
.end method

.method public declared-synchronized seekStation(II)I
    .locals 4
    .parameter "scanMode"
    .parameter "minSignalStrength"

    .prologue
    .line 964
    monitor-enter p0

    const/4 v1, 0x2

    .line 967
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->seekStation(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 972
    :goto_0
    monitor-exit p0

    return v1

    .line 968
    :catch_0
    move-exception v0

    .line 969
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "seekStation() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 964
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized seekStationAbort()I
    .locals 4

    .prologue
    .line 1065
    monitor-enter p0

    const/4 v1, 0x2

    .line 1068
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->seekStationAbort()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1073
    :goto_0
    monitor-exit p0

    return v1

    .line 1069
    :catch_0
    move-exception v0

    .line 1070
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "seekStationAbort() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1065
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioMode(I)I
    .locals 4
    .parameter "audioMode"

    .prologue
    .line 1126
    monitor-enter p0

    const/4 v1, 0x2

    .line 1129
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setAudioMode(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1134
    :goto_0
    monitor-exit p0

    return v1

    .line 1130
    :catch_0
    move-exception v0

    .line 1131
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "setAudioMode() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1126
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioPath(I)I
    .locals 4
    .parameter "audioPath"

    .prologue
    .line 1154
    monitor-enter p0

    const/4 v1, 0x2

    .line 1157
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setAudioPath(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1162
    :goto_0
    monitor-exit p0

    return v1

    .line 1158
    :catch_0
    move-exception v0

    .line 1159
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "setAudioPath() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1154
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setFMVolume(I)I
    .locals 4
    .parameter "volume"

    .prologue
    .line 1201
    monitor-enter p0

    const/4 v1, 0x2

    .line 1204
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setFMVolume(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1209
    :goto_0
    monitor-exit p0

    return v1

    .line 1205
    :catch_0
    move-exception v0

    .line 1206
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "setFMVolume() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1201
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setLiveAudioPolling(ZI)I
    .locals 4
    .parameter "liveAudioPolling"
    .parameter "signalPollInterval"

    .prologue
    .line 1283
    monitor-enter p0

    const/4 v1, 0x2

    .line 1286
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setLiveAudioPolling(ZI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1292
    :goto_0
    monitor-exit p0

    return v1

    .line 1288
    :catch_0
    move-exception v0

    .line 1289
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "setLiveAudioPolling() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1283
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setRdsMode(IIII)I
    .locals 4
    .parameter "rdsMode"
    .parameter "rdsFeatures"
    .parameter "afMode"
    .parameter "afThreshold"

    .prologue
    .line 1099
    monitor-enter p0

    const/4 v1, 0x2

    .line 1102
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setRdsMode(IIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1108
    :goto_0
    monitor-exit p0

    return v1

    .line 1104
    :catch_0
    move-exception v0

    .line 1105
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "setRdsMode() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1099
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setStepSize(I)I
    .locals 4
    .parameter "stepSize"

    .prologue
    .line 1178
    monitor-enter p0

    const/4 v1, 0x2

    .line 1181
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setStepSize(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1186
    :goto_0
    monitor-exit p0

    return v1

    .line 1182
    :catch_0
    move-exception v0

    .line 1183
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "setStepSize() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1178
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setWorldRegion(II)I
    .locals 4
    .parameter "worldRegion"
    .parameter "deemphasisTime"

    .prologue
    .line 1230
    monitor-enter p0

    const/4 v1, 0x2

    .line 1233
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setWorldRegion(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1238
    :goto_0
    monitor-exit p0

    return v1

    .line 1234
    :catch_0
    move-exception v0

    .line 1235
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "setWorldRegion() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1230
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized tuneRadio(I)I
    .locals 4
    .parameter "freq"

    .prologue
    .line 824
    monitor-enter p0

    const/4 v1, 0x2

    .line 827
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->tuneRadio(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 832
    :goto_0
    monitor-exit p0

    return v1

    .line 828
    :catch_0
    move-exception v0

    .line 829
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "tuneRadio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 824
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized turnOffRadio()I
    .locals 5

    .prologue
    .line 800
    monitor-enter p0

    const/4 v1, 0x2

    .line 803
    .local v1, returnCode:I
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v3}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->turnOffRadio()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v2, v1

    .line 809
    .end local v1           #returnCode:I
    .local v2, returnCode:I
    :goto_0
    monitor-exit p0

    return v2

    .line 804
    .end local v2           #returnCode:I
    .restart local v1       #returnCode:I
    :catch_0
    move-exception v0

    .line 805
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "FmReceiver"

    const-string v4, "turnOffRadio() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    .line 806
    .end local v1           #returnCode:I
    .restart local v2       #returnCode:I
    goto :goto_0

    .line 800
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #returnCode:I
    .restart local v1       #returnCode:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public turnOnRadio()I
    .locals 1

    .prologue
    .line 785
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->turnOnRadio(I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized turnOnRadio(I)I
    .locals 4
    .parameter "functionalityMask"

    .prologue
    .line 760
    monitor-enter p0

    const/4 v1, 0x2

    .line 763
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->turnOnRadio(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 768
    :goto_0
    monitor-exit p0

    return v1

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "turnOnRadio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 760
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized unregisterEventHandler()V
    .locals 3

    .prologue
    .line 687
    monitor-enter p0

    :try_start_0
    const-string v1, "FmReceiver"

    const-string v2, "unregisterEventHandler()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 703
    :goto_0
    monitor-exit p0

    return-void

    .line 699
    :catch_0
    move-exception v0

    .line 700
    .local v0, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "FmReceiver"

    const-string v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 687
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public unregisterEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 713
    const-string v0, "FmReceiver"

    const-string v1, "Just a dummy API"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return-void
.end method
