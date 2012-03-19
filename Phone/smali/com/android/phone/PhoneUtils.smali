.class public Lcom/android/phone/PhoneUtils;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneUtils$11;,
        Lcom/android/phone/PhoneUtils$HTC_IMERecever;,
        Lcom/android/phone/PhoneUtils$mmHandler;,
        Lcom/android/phone/PhoneUtils$CallerInfoToken;,
        Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;,
        Lcom/android/phone/PhoneUtils$ConnectionHandler;,
        Lcom/android/phone/PhoneUtils$MergeCallResult;
    }
.end annotation


# static fields
.field static final ADD_CALL_MODE_KEY:Ljava/lang/String; = "add_call_mode"

.field static final AUDIO_IDLE:I = 0x0

.field static final AUDIO_OFFHOOK:I = 0x2

.field static final AUDIO_RINGING:I = 0x1

.field static final CALL_STATUS_DIALED:I = 0x0

.field static final CALL_STATUS_DIALED_MMI:I = 0x1

.field static final CALL_STATUS_FAILED:I = 0x2

.field static final CALL_TYPE_NORMAL:I = 0x0

.field static final CALL_TYPE_PRIVATE:I = 0x2

.field static final CALL_TYPE_UNKNOWN:I = 0x1

.field private static final CNAP_SPECIAL_CASE_NO:I = -0x1

.field private static final DBG:Z = false

.field private static final DBG_SETAUDIOMODE_STACK:Z = false

#the value of this static final field might be set in the static constructor
.field static final DELAY_RINGTONE:Z = false

.field private static final EVENT_END_CALL_TIMEOUT:I = 0x34

.field private static final EVENT_MM_LOCATION_UPDATE_ERROR_TIMEOUT:I = 0x32

.field private static final EVENT_SWAP_TIMEOUT:I = 0x33

.field private static ExtendedNetworkServiceConnection:Landroid/content/ServiceConnection; = null

.field private static final HTC_CALL_DISCONNECTED:I = -0x2

.field private static final HTC_CDMA_OTA_EMERGENCY_CALL_REDIAL:I = -0x3

.field private static final HVGA_WIN_HEIGHT_IN_SIP_MODE:I = 0x12c

.field private static final ID_JOG_BALL_NOTIFICATION:I = 0x3e9

.field static final JOG_BALL_ONE_SHOT:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneUtils"

.field private static final MSG_CAHNGE_AUDIO_MODE:I = 0x35

.field private static final MSG_CHANGE_AUDIO_MODE_AFTER_ANSWER_CALL:I = 0x36

.field private static final NANP_STATE_DASH:I = 0x4

.field private static final NANP_STATE_DIGIT:I = 0x1

.field private static final NANP_STATE_ONE:I = 0x3

.field private static final NANP_STATE_PLUS:I = 0x2

.field public static final OTA_CODE:Ljava/lang/String; = "*147359*682*"

.field private static final PHONE_STATE_CHANGED:I = -0x1

.field private static final QUERY_TOKEN:I = -0x1

.field private static final QVGA_WIN_HEIGHT_IN_SIP_MODE:I = 0xa5

#the value of this static final field might be set in the static constructor
.field private static final RESUME_MUSIC:Z = false

#the value of this static final field might be set in the static constructor
.field static final SUPPORT_JOGBALL:Z = false

#the value of this static final field might be set in the static constructor
.field static final SUPPORT_MERGE_CALL:Z = false

#the value of this static final field might be set in the static constructor
.field public static final SUPPORT_OTA:Z = false

.field private static final autoPrependPrefix:Ljava/lang/String; = "1"

.field private static final defaulPlusCdoeString:Ljava/lang/String; = "011"

.field private static interavtiveUSSD:Lcom/android/internal/telephony/MmiCode;

.field private static isTXRXMute:Z

.field private static mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

.field private static mHandler:Lcom/android/phone/PhoneUtils$mmHandler;

.field private static mHtcCdmaOtaEmergencyCall:Ljava/lang/String;

.field private static mHtcCdmaOtaEmergencyCallUri:Landroid/net/Uri;

.field private static mIMEStateRecv:Lcom/android/phone/PhoneUtils$HTC_IMERecever;

.field private static mIsCTMMICode:Z

.field public static mIsFlashCall:Z

.field public static mIsMergeCall:Z

.field private static mIsPsVideo:Z

.field private static mMMDialog:Lcom/htc/widget/HtcAlertDialog;

.field private static mMMICodeNumber:Ljava/lang/String;

.field public static mMMINumber:Ljava/lang/String;

.field private static mMmiTimeoutCbMsg:Landroid/os/Message;

.field private static mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

.field private static mPhoneContext:Landroid/content/Context;

.field private static mPsSpeakerOn:Z

.field private static mReqTimeStamp:J

.field private static mSkypeArcScreenEnable:Z

.field private static mSkypeCallState:I

.field static sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

.field private static sConnectionMuteTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsEndCallRequested:Z

.field private static sIsNoiseSuppressionEnabled:Z

.field private static sIsSpeakerEnabled:Z

.field private static sIsSwapRequested:Z

.field private static sVoipSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    .line 158
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->sIsSwapRequested:Z

    .line 159
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->sIsEndCallRequested:Z

    .line 163
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    .line 180
    sput-object v4, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    .line 182
    sput-object v4, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 185
    sput-boolean v3, Lcom/android/phone/PhoneUtils;->sIsNoiseSuppressionEnabled:Z

    .line 189
    sput-object v4, Lcom/android/phone/PhoneUtils;->interavtiveUSSD:Lcom/android/internal/telephony/MmiCode;

    .line 212
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x40

    if-eq v1, v4, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xaa

    if-ne v1, v4, :cond_2

    :cond_0
    move v1, v3

    :goto_0
    sput-boolean v1, Lcom/android/phone/PhoneUtils;->DELAY_RINGTONE:Z

    .line 241
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x18

    if-eq v1, v4, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x1a

    if-eq v1, v4, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x39

    if-eq v1, v4, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x3a

    if-eq v1, v4, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x3b

    if-eq v1, v4, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x3c

    if-eq v1, v4, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x90

    if-eq v1, v4, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xa8

    if-ne v1, v4, :cond_3

    :cond_1
    move v1, v3

    :goto_1
    sput-boolean v1, Lcom/android/phone/PhoneUtils;->SUPPORT_JOGBALL:Z

    .line 252
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    move v1, v3

    :goto_2
    sput-boolean v1, Lcom/android/phone/PhoneUtils;->RESUME_MUSIC:Z

    .line 255
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd2

    if-eq v1, v4, :cond_5

    move v1, v3

    :goto_3
    sput-boolean v1, Lcom/android/phone/PhoneUtils;->SUPPORT_MERGE_CALL:Z

    .line 264
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x50

    if-ne v1, v4, :cond_6

    move v1, v3

    :goto_4
    sput-boolean v1, Lcom/android/phone/PhoneUtils;->SUPPORT_OTA:Z

    .line 274
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mIsFlashCall:Z

    .line 275
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mIsMergeCall:Z

    .line 283
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->isTXRXMute:Z

    .line 287
    sput v2, Lcom/android/phone/PhoneUtils;->mSkypeCallState:I

    .line 288
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mSkypeArcScreenEnable:Z

    .line 289
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mPsSpeakerOn:Z

    .line 290
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mIsPsVideo:Z

    .line 294
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mIsCTMMICode:Z

    .line 417
    new-instance v1, Lcom/android/phone/PhoneUtils$1;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtils$1;-><init>()V

    sput-object v1, Lcom/android/phone/PhoneUtils;->ExtendedNetworkServiceConnection:Landroid/content/ServiceConnection;

    .line 2409
    new-instance v1, Lcom/android/phone/PhoneUtils$9;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtils$9;-><init>()V

    sput-object v1, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 3605
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->sVoipSupported:Z

    .line 3607
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3608
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-static {v0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1110026

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1110023

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_5
    sput-boolean v3, Lcom/android/phone/PhoneUtils;->sVoipSupported:Z

    .line 3611
    return-void

    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_2
    move v1, v2

    .line 212
    goto/16 :goto_0

    :cond_3
    move v1, v2

    .line 241
    goto :goto_1

    :cond_4
    move v1, v2

    .line 252
    goto :goto_2

    :cond_5
    move v1, v2

    .line 255
    goto :goto_3

    :cond_6
    move v1, v2

    .line 264
    goto :goto_4

    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    :cond_7
    move v3, v2

    .line 3608
    goto :goto_5
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 462
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 463
    return-void
.end method

.method static synthetic access$000()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/Phone;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/android/phone/PhoneUtils;->mHtcCdmaOtaEmergencyCall:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    sput-object p0, Lcom/android/phone/PhoneUtils;->mHtcCdmaOtaEmergencyCall:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/android/phone/PhoneUtils;->mHtcCdmaOtaEmergencyCallUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$302(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    sput-object p0, Lcom/android/phone/PhoneUtils;->mHtcCdmaOtaEmergencyCallUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/IExtendedNetworkService;)Lcom/android/internal/telephony/IExtendedNetworkService;
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    sput-object p0, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    return-object p0
.end method

.method static synthetic access$700()Lcom/htc/widget/HtcAlertDialog;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMMDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    sput-object p0, Lcom/android/phone/PhoneUtils;->mMMDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    sput-boolean p0, Lcom/android/phone/PhoneUtils;->sIsSwapRequested:Z

    return p0
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    sput-boolean p0, Lcom/android/phone/PhoneUtils;->sIsEndCallRequested:Z

    return p0
.end method

.method private static activateSpeakerIfDocked(Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .parameter "phone"

    .prologue
    const/4 v4, 0x1

    .line 3533
    sget v2, Lcom/android/phone/PhoneApp;->mDockState:I

    if-eq v2, v4, :cond_0

    sget v2, Lcom/android/phone/PhoneApp;->mDockState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 3536
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3537
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    .line 3539
    .local v1, bthf:Lcom/android/phone/BluetoothHandsfree;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3540
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 3543
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #bthf:Lcom/android/phone/BluetoothHandsfree;
    :cond_2
    return-void
.end method

.method private static addCalllog(Lcom/android/internal/telephony/Call;)V
    .locals 7
    .parameter "call"

    .prologue
    .line 4276
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4277
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 4280
    .local v2, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v4, v5, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 4282
    .local v4, notifier:Lcom/android/phone/CallNotifier;
    if-eqz v2, :cond_2

    .line 4283
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 4284
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 4286
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 4287
    iget-boolean v5, v0, Lcom/android/internal/telephony/Connection;->mHasUpdatedCallLog:Z

    if-nez v5, :cond_0

    .line 4288
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4289
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 4294
    .local v1, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :goto_1
    invoke-virtual {v4, v0, v1}, Lcom/android/phone/CallNotifier;->addCallLog(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 4283
    .end local v1           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4291
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .restart local v1       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    goto :goto_1

    .line 4301
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .end local v2           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v3           #i:I
    .end local v4           #notifier:Lcom/android/phone/CallNotifier;
    :cond_2
    return-void
.end method

.method private static allIdle(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Z
    .locals 6
    .parameter "call1"
    .parameter "call2"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4222
    if-eqz p0, :cond_0

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    if-ne v4, v5, :cond_2

    :cond_0
    move v0, v2

    .line 4224
    .local v0, isCall1Idle:Z
    :goto_0
    if-eqz p1, :cond_1

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    if-ne v4, v5, :cond_3

    :cond_1
    move v1, v2

    .line 4227
    .local v1, isCall2Idle:Z
    :goto_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    :goto_2
    return v2

    .end local v0           #isCall1Idle:Z
    .end local v1           #isCall2Idle:Z
    :cond_2
    move v0, v3

    .line 4222
    goto :goto_0

    .restart local v0       #isCall1Idle:Z
    :cond_3
    move v1, v3

    .line 4224
    goto :goto_1

    .restart local v1       #isCall2Idle:Z
    :cond_4
    move v2, v3

    .line 4227
    goto :goto_2
.end method

.method static allIdle(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4462
    .local p0, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->allState(Ljava/util/List;Lcom/android/internal/telephony/Call$State;)Z

    move-result v0

    return v0
.end method

.method private static allState(Ljava/util/List;Lcom/android/internal/telephony/Call$State;)Z
    .locals 4
    .parameter
    .parameter "state"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;",
            "Lcom/android/internal/telephony/Call$State;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 4473
    .local p0, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v0, 0x1

    .line 4474
    .local v0, allState:Z
    if-eqz p0, :cond_1

    .line 4475
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Call;

    .line 4476
    .local v1, call:Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_0

    .line 4477
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    if-ne v3, p1, :cond_2

    const/4 v0, 0x1

    .line 4479
    :goto_0
    if-nez v0, :cond_0

    .line 4485
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return v0

    .line 4477
    .restart local v1       #call:Lcom/android/internal/telephony/Call;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z
    .locals 7
    .parameter "cm"
    .parameter "ringing"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1006
    const-string v5, "PhoneUtils"

    const-string v6, "[embedded] answerAndEndActive()..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1020
    .local v0, activeCall:Lcom/android/internal/telephony/Call;
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1022
    const-string v4, "PhoneUtils"

    const-string v5, "end active call failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :goto_0
    return v3

    .line 1030
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 1031
    .local v2, phoneType:I
    if-ne v4, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v2, v5, :cond_1

    move v1, v4

    .line 1033
    .local v1, bothGsm:Z
    :goto_1
    if-nez v1, :cond_2

    .line 1035
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1036
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    goto :goto_0

    .end local v1           #bothGsm:Z
    :cond_1
    move v1, v3

    .line 1031
    goto :goto_1

    .restart local v1       #bothGsm:Z
    :cond_2
    move v3, v4

    .line 1040
    goto :goto_0
.end method

.method static answerAndEndHolding(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z
    .locals 2
    .parameter "cm"
    .parameter "ringing"

    .prologue
    .line 995
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 996
    const-string v0, "PhoneUtils"

    const-string v1, "end holding failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const/4 v0, 0x0

    .line 1001
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    goto :goto_0
.end method

.method static answerCall(Lcom/android/internal/telephony/Call;)Z
    .locals 13
    .parameter "ringing"

    .prologue
    const/4 v12, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 475
    const-string v9, "PhoneUtils"

    const-string v10, "[embedded] answerCall()..."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    sget-boolean v9, Lcom/android/phone/PhoneUtils;->RESUME_MUSIC:Z

    if-eqz v9, :cond_0

    .line 478
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->toResumeMusicForATT(Z)V

    .line 482
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    iget-object v4, v9, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 484
    .local v4, mNotifier:Lcom/android/phone/CallNotifier;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 486
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "gsm.lockscreen.mode.status"

    const-string v11, "false"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 487
    const-string v9, ">>>answerCall(),   set lockscreen mode :false "

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 489
    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMuteTxRx()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getSkypeCallState()I

    move-result v9

    if-ne v9, v12, :cond_1

    .line 491
    invoke-virtual {v4}, Lcom/android/phone/CallNotifier;->setupPSCallIdleState()V

    .line 492
    const-string v9, ">>>answerCall(),   un-mute because answer incoming call and hold forground call"

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 499
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/Ringer;->stopRing()V

    .line 503
    if-eqz v4, :cond_2

    .line 505
    iput-boolean v7, v4, Lcom/android/phone/CallNotifier;->mIsAnswering:Z

    .line 506
    invoke-virtual {v4}, Lcom/android/phone/CallNotifier;->removePhoneRingingMessage()V

    .line 511
    :cond_2
    const/4 v0, 0x0

    .line 512
    .local v0, answered:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 513
    .local v1, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 514
    .local v6, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    if-ne v9, v12, :cond_7

    .line 515
    .local v7, phoneIsCdma:Z
    :goto_0
    const/4 v2, 0x0

    .line 517
    .local v2, bthf:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v7, :cond_3

    .line 519
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_3

    .line 520
    iget-object v5, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 521
    .local v5, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v5}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 525
    .end local v5           #notifier:Lcom/android/phone/CallNotifier;
    :cond_3
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 528
    if-eqz v7, :cond_4

    .line 529
    :try_start_0
    iget-object v9, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v9

    sget-object v10, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v9, v10, :cond_8

    .line 533
    iget-object v9, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v10, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v9, v10}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 572
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9, p0}, Lcom/android/internal/telephony/CallManager;->acceptCall(Lcom/android/internal/telephony/Call;)V

    .line 573
    const/4 v0, 0x1

    .line 576
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 579
    sget-boolean v9, Lcom/android/phone/PhoneUtils;->DELAY_RINGTONE:Z

    if-eqz v9, :cond_a

    .line 580
    sget-object v9, Lcom/android/phone/PhoneUtils;->mHandler:Lcom/android/phone/PhoneUtils$mmHandler;

    if-eqz v9, :cond_5

    .line 581
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    sput-object v9, Lcom/android/phone/PhoneUtils;->mPhoneContext:Landroid/content/Context;

    .line 582
    sget-object v9, Lcom/android/phone/PhoneUtils;->mHandler:Lcom/android/phone/PhoneUtils$mmHandler;

    const/16 v10, 0x35

    const-wide/16 v11, 0x1f4

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/phone/PhoneUtils$mmHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 593
    :cond_5
    :goto_2
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->activateSpeakerIfDocked(Lcom/android/internal/telephony/Phone;)V

    .line 607
    :cond_6
    :goto_3
    return v0

    .end local v2           #bthf:Lcom/android/phone/BluetoothHandsfree;
    .end local v7           #phoneIsCdma:Z
    :cond_7
    move v7, v8

    .line 514
    goto :goto_0

    .line 536
    .restart local v2       #bthf:Lcom/android/phone/BluetoothHandsfree;
    .restart local v7       #phoneIsCdma:Z
    :cond_8
    iget-object v9, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v9

    sget-object v10, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v9, v10, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_4

    .line 552
    :cond_9
    iget-object v9, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v10, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SWITCH_PARTIES_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v9, v10}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 559
    iget-object v9, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 564
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    .line 565
    if-eqz v2, :cond_4

    .line 566
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 594
    :catch_0
    move-exception v3

    .line 595
    .local v3, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v9, "PhoneUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "answerCall: caught "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 597
    if-eqz v7, :cond_6

    .line 599
    iget-object v9, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    iget-object v10, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v10}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 601
    if-eqz v2, :cond_6

    .line 602
    invoke-virtual {v2, v8}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    goto :goto_3

    .line 585
    .end local v3           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_a
    :try_start_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 588
    sget-object v9, Lcom/android/phone/PhoneUtils;->mHandler:Lcom/android/phone/PhoneUtils$mmHandler;

    const/16 v10, 0x36

    invoke-virtual {v9, v10}, Lcom/android/phone/PhoneUtils$mmHandler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static audioModeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "mode"

    .prologue
    .line 2835
    packed-switch p0, :pswitch_data_0

    .line 2841
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2836
    :pswitch_0
    const-string v0, "MODE_INVALID"

    goto :goto_0

    .line 2837
    :pswitch_1
    const-string v0, "MODE_CURRENT"

    goto :goto_0

    .line 2838
    :pswitch_2
    const-string v0, "MODE_NORMAL"

    goto :goto_0

    .line 2839
    :pswitch_3
    const-string v0, "MODE_RINGTONE"

    goto :goto_0

    .line 2840
    :pswitch_4
    const-string v0, "MODE_IN_CALL"

    goto :goto_0

    .line 2835
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static final calculateOperatorString(Lcom/android/internal/telephony/gsm/OperatorInfo;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 6
    .parameter "operatorInfo"
    .parameter "res"

    .prologue
    const v2, 0x7f0e0222

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4997
    const/4 v0, 0x0

    .line 4998
    .local v0, alpha:Ljava/lang/String;
    if-eqz p0, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/OperatorInfo;->inService:Z

    if-nez v1, :cond_1

    .line 4999
    :cond_0
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5014
    :goto_0
    return-object v0

    .line 5001
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/OperatorInfo;->showSpn:Z

    if-eqz v1, :cond_2

    .line 5002
    const-string v1, "%s(%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5003
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/OperatorInfo;->showSpn:Z

    if-nez v1, :cond_3

    .line 5004
    const-string v1, "%s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5005
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/OperatorInfo;->showSpn:Z

    if-eqz v1, :cond_4

    .line 5006
    const-string v1, "%s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5007
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 5008
    const-string v1, "%s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5010
    :cond_5
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static canMergeCalls()I
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 5129
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isCdmaCallsOnly()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5130
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 5131
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v7, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v7}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v3

    .line 5133
    .local v3, currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v7, :cond_5

    .line 5157
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v3           #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .local v1, bgCall:Lcom/android/internal/telephony/Call;
    .local v2, cm:Lcom/android/internal/telephony/CallManager;
    .local v4, fgCall:Lcom/android/internal/telephony/Call;
    :cond_0
    :goto_0
    return v5

    .line 5137
    .end local v1           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v2           #cm:Lcom/android/internal/telephony/CallManager;
    .end local v4           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v2, v7, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 5138
    .restart local v2       #cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 5139
    .restart local v4       #fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 5141
    .restart local v1       #bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move v5, v6

    goto :goto_0

    .line 5143
    :cond_3
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 5146
    const-string v7, "VoLTE"

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 5147
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isFull()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isFull()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5151
    :cond_4
    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    move v5, v6

    .line 5157
    goto :goto_0
.end method

.method public static canMergerCall(Lcom/android/internal/telephony/Phone;)Z
    .locals 9
    .parameter "phone"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 4901
    const/4 v5, 0x0

    .line 4902
    .local v5, mfgMO:Z
    const/4 v1, 0x0

    .line 4903
    .local v1, connectionsList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v0, 0x0

    .line 4904
    .local v0, connection:Lcom/android/internal/telephony/Connection;
    sget-boolean v8, Lcom/android/phone/PhoneUtils;->mIsMergeCall:Z

    if-eqz v8, :cond_1

    .line 4921
    :cond_0
    :goto_0
    return v6

    .line 4907
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 4908
    .local v4, mfgCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 4910
    .local v3, mbgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4911
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    .line 4913
    .local v2, forgroundNum:I
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 4916
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #connection:Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 4917
    .restart local v0       #connection:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v8

    if-nez v8, :cond_4

    move v5, v6

    .line 4921
    .end local v2           #forgroundNum:I
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v8

    if-eqz v8, :cond_3

    sget-boolean v8, Lcom/android/phone/PhoneUtils;->mIsFlashCall:Z

    if-eqz v8, :cond_0

    :cond_3
    move v6, v7

    goto :goto_0

    .restart local v2       #forgroundNum:I
    :cond_4
    move v5, v7

    .line 4917
    goto :goto_1
.end method

.method static cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z
    .locals 7
    .parameter "phone"

    .prologue
    const/4 v6, 0x0

    .line 1922
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v4

    .line 1923
    .local v4, pendingMmis:Ljava/util/List;,"Ljava/util/List<+Lcom/android/internal/telephony/MmiCode;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 1926
    .local v1, count:I
    const/4 v0, 0x0

    .line 1927
    .local v0, canceled:Z
    if-lez v1, :cond_0

    .line 1932
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MmiCode;

    .line 1933
    .local v3, mmiCode:Lcom/android/internal/telephony/MmiCode;
    invoke-interface {v3}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1934
    invoke-interface {v3}, Lcom/android/internal/telephony/MmiCode;->cancel()V

    .line 1935
    const/4 v0, 0x1

    .line 1940
    .end local v3           #mmiCode:Lcom/android/internal/telephony/MmiCode;
    :cond_0
    sget-object v5, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    if-eqz v5, :cond_1

    .line 1942
    :try_start_0
    sget-object v5, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v5}, Lcom/android/internal/telephony/IExtendedNetworkService;->clearMmiString()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1947
    :cond_1
    :goto_0
    sget-object v5, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    if-eqz v5, :cond_2

    .line 1948
    sput-object v6, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 1950
    :cond_2
    return v0

    .line 1943
    :catch_0
    move-exception v2

    .line 1944
    .local v2, e:Landroid/os/RemoteException;
    sput-object v6, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    goto :goto_0
.end method

.method static checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 2
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 3425
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3426
    const-string v0, "PhoneUtils"

    const-string v1, "checkAndCopyPhoneProviderExtras: some or all extras are missing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3434
    :goto_0
    return-void

    .line 3430
    :cond_0
    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    const-string v1, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3432
    const-string v0, "com.android.phone.extra.GATEWAY_URI"

    const-string v1, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static checkCnapSpecialCases(Ljava/lang/String;)I
    .locals 1
    .parameter "n"

    .prologue
    .line 3321
    const-string v0, "PRIVATE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "P"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Restricted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PRIVATE NUMBER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3331
    :cond_0
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    .line 3340
    :goto_0
    return v0

    .line 3332
    :cond_1
    const-string v0, "UNAVAILABLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UNA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "U"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3337
    :cond_2
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    goto :goto_0

    .line 3340
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static closeMMDialog()V
    .locals 2

    .prologue
    const/16 v1, 0x32

    .line 4018
    sget-object v0, Lcom/android/phone/PhoneUtils;->mHandler:Lcom/android/phone/PhoneUtils$mmHandler;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneUtils$mmHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4019
    sget-object v0, Lcom/android/phone/PhoneUtils;->mHandler:Lcom/android/phone/PhoneUtils$mmHandler;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneUtils$mmHandler;->removeMessages(I)V

    .line 4021
    :cond_0
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMMDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/phone/PhoneUtils;->mMMDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4022
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMMDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 4023
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneUtils;->mMMDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 4025
    :cond_1
    return-void
.end method

.method static copyDialExtra(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 4
    .parameter "src"
    .parameter "dst"

    .prologue
    const/4 v3, 0x0

    .line 4111
    const-string v0, "name"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4112
    const-string v0, "name"

    const-string v1, "name"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4116
    :cond_0
    const-string v0, "number"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4117
    const-string v0, "number"

    const-string v1, "number"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4121
    :cond_1
    const-string v0, "numberType"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4122
    const-string v0, "numberType"

    const-string v1, "numberType"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4126
    :cond_2
    const-string v0, "personId"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4127
    const-string v0, "personId"

    const-string v1, "personId"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4131
    :cond_3
    const-string v0, "hasPhoto"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4132
    const-string v0, "hasPhoto"

    const-string v1, "hasPhoto"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4136
    :cond_4
    const-string v0, "personLookupKey"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4137
    const-string v0, "personLookupKey"

    const-string v1, "personLookupKey"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4141
    :cond_5
    const-string v0, "fromDialer"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4142
    const-string v0, "fromDialer"

    const-string v1, "fromDialer"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4146
    :cond_6
    const-string v0, "com.android.phone.ShowDialpad"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4147
    const-string v0, "com.android.phone.ShowDialpad"

    const-string v1, "com.android.phone.ShowDialpad"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4151
    :cond_7
    const-string v0, "cname"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4152
    const-string v0, "cname"

    const-string v1, "cname"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4157
    :cond_8
    const-string v0, "com.htc.calendar.event_uri"

    const-string v1, "com.htc.calendar.event_uri"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4161
    return-void
.end method

.method public static createDisplayNumber(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 6
    .parameter "number"
    .parameter "label"
    .parameter "res"

    .prologue
    const/4 v5, 0x0

    .line 5018
    if-eqz p2, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move-object v1, p0

    .line 5056
    :cond_1
    :goto_0
    return-object v1

    .line 5021
    :cond_2
    move-object v1, p0

    .line 5022
    .local v1, result:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5023
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5025
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 5026
    .local v0, config:Landroid/content/res/Configuration;
    if-eqz v0, :cond_4

    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v3, :cond_4

    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ar"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5029
    const/16 v3, 0x2b

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_3

    .line 5035
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5036
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5037
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5038
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5052
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5053
    goto :goto_0

    .line 5042
    :cond_3
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5043
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5044
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 5048
    :cond_4
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5049
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5050
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method static displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Lcom/htc/widget/HtcAlertDialog;)V
    .locals 22
    .parameter "phone"
    .parameter "context"
    .parameter "mmiCode"
    .parameter "dismissCallbackMessage"
    .parameter "previousAlert"

    .prologue
    .line 1558
    const/16 v17, 0x0

    .line 1559
    .local v17, title:I
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v15

    .line 1562
    .local v15, state:Lcom/android/internal/telephony/MmiCode$State;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1564
    sget-object v18, Lcom/android/phone/PhoneUtils;->mMMICodeNumber:Ljava/lang/String;

    if-eqz v18, :cond_0

    sget-object v18, Lcom/android/phone/PhoneUtils;->mMMICodeNumber:Ljava/lang/String;

    const-string v19, "**133"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    sget-object v18, Lcom/android/phone/PhoneUtils;->mMMICodeNumber:Ljava/lang/String;

    const-string v19, "#"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    sget-boolean v18, Lcom/android/phone/PhoneUtils;->mIsCTMMICode:Z

    if-eqz v18, :cond_0

    .line 1568
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/phone/PhoneUtils;->mIsCTMMICode:Z

    .line 1569
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "==>displayMMIComplete: mMMICodeNumber: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/phone/PhoneUtils;->mMMICodeNumber:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1570
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v13, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 1571
    .local v13, notifier:Lcom/android/phone/CallNotifier;
    sget-object v18, Lcom/android/phone/PhoneUtils;->mMMICodeNumber:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/phone/CallNotifier;->addMMICodeCallLog(Ljava/lang/String;)V

    .line 1572
    const/16 v18, 0x0

    sput-object v18, Lcom/android/phone/PhoneUtils;->mMMICodeNumber:Ljava/lang/String;

    .line 1578
    .end local v13           #notifier:Lcom/android/phone/CallNotifier;
    :cond_0
    sget-object v18, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    if-eqz v18, :cond_1

    .line 1580
    :try_start_0
    sget-object v18, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v18

    sget-object v19, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1584
    :goto_0
    const/16 v18, 0x0

    sput-object v18, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 1588
    :cond_1
    sget-object v18, Lcom/android/phone/PhoneUtils$11;->$SwitchMap$com$android$internal$telephony$MmiCode$State:[I

    invoke-virtual {v15}, Lcom/android/internal/telephony/MmiCode$State;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_0

    .line 1624
    new-instance v18, Ljava/lang/IllegalStateException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unexpected MmiCode state: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1591
    :pswitch_0
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v16

    .line 1627
    .local v16, text:Ljava/lang/CharSequence;
    :cond_2
    :goto_1
    if-eqz p4, :cond_3

    .line 1628
    invoke-virtual/range {p4 .. p4}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 1633
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 1634
    .local v2, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v18

    if-eqz v18, :cond_7

    sget-object v18, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    move-object/from16 v0, v18

    if-ne v15, v0, :cond_7

    .line 1639
    new-instance v14, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v14, v2}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1640
    .local v14, pd:Lcom/htc/app/HtcProgressDialog;
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/htc/app/HtcProgressDialog;->setTitle(I)V

    .line 1641
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1642
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 1643
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1644
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 1645
    invoke-virtual {v14}, Lcom/htc/app/HtcProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v19, 0x7d8

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->setType(I)V

    .line 1646
    invoke-virtual {v14}, Lcom/htc/app/HtcProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->addFlags(I)V

    .line 1649
    invoke-virtual {v14}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 1653
    invoke-virtual {v2, v14}, Lcom/android/phone/PhoneApp;->setPukEntryProgressDialog(Lcom/htc/app/HtcProgressDialog;)V

    .line 1911
    .end local v14           #pd:Lcom/htc/app/HtcProgressDialog;
    :cond_4
    :goto_2
    return-void

    .line 1595
    .end local v2           #app:Lcom/android/phone/PhoneApp;
    .end local v16           #text:Ljava/lang/CharSequence;
    :pswitch_1
    const v18, 0x7f0e024c

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 1596
    .restart local v16       #text:Ljava/lang/CharSequence;
    goto :goto_1

    .line 1598
    .end local v16           #text:Ljava/lang/CharSequence;
    :pswitch_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneApp;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v18

    if-eqz v18, :cond_5

    .line 1601
    const v17, 0x10400d8

    .line 1602
    const v18, 0x7f0e0275

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 1603
    .restart local v16       #text:Ljava/lang/CharSequence;
    goto :goto_1

    .line 1610
    .end local v16           #text:Ljava/lang/CharSequence;
    :cond_5
    :pswitch_3
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v16

    .line 1614
    .restart local v16       #text:Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1615
    sget-object v18, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    move-object/from16 v0, v18

    if-ne v15, v0, :cond_6

    .line 1616
    const v18, 0x7f0e025b

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    goto/16 :goto_1

    .line 1618
    :cond_6
    const v18, 0x7f0e01f0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    goto/16 :goto_1

    .line 1658
    .restart local v2       #app:Lcom/android/phone/PhoneApp;
    :cond_7
    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v18

    if-eqz v18, :cond_8

    .line 1659
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/phone/PhoneApp;->setPukEntryActivity(Landroid/app/Activity;)V

    .line 1664
    :cond_8
    sget-object v18, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    move-object/from16 v0, v18

    if-eq v15, v0, :cond_c

    .line 1667
    sget-object v18, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    move-object/from16 v0, v18

    if-ne v15, v0, :cond_a

    .line 1668
    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getMmiDialog()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    .line 1669
    .local v4, dialog:Lcom/htc/widget/HtcAlertDialog;
    if-eqz v4, :cond_9

    .line 1670
    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 1675
    :cond_9
    invoke-static {}, Lcom/android/phone/util/BuildUtils;->isUSSDCancelDialogDisabled()Z

    move-result v18

    if-nez v18, :cond_4

    .line 1685
    .end local v4           #dialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_a
    sget-object v18, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    if-eqz v18, :cond_b

    .line 1687
    :try_start_1
    sget-object v18, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IExtendedNetworkService;->getUserMessage(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    .line 1692
    :goto_3
    if-eqz v16, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v18

    if-eqz v18, :cond_4

    .line 1699
    :cond_b
    new-instance v18, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v19, 0x7f0e021f

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f0e025b

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v12

    .line 1707
    .local v12, newDialog:Lcom/htc/widget/HtcAlertDialog;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1710
    invoke-virtual {v12}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v19, 0x7d8

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->setType(I)V

    .line 1712
    invoke-virtual {v12}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->addFlags(I)V

    .line 1716
    new-instance v18, Lcom/android/phone/PhoneUtils$2;

    invoke-direct/range {v18 .. v18}, Lcom/android/phone/PhoneUtils$2;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1723
    new-instance v18, Lcom/android/phone/PhoneUtils$3;

    invoke-direct/range {v18 .. v18}, Lcom/android/phone/PhoneUtils$3;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1730
    invoke-virtual {v2, v12}, Lcom/android/phone/PhoneApp;->setMmiDialog(Lcom/htc/widget/HtcAlertDialog;)V

    .line 1732
    invoke-interface/range {p0 .. p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 1733
    invoke-virtual {v12}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_2

    .line 1688
    .end local v12           #newDialog:Lcom/htc/widget/HtcAlertDialog;
    :catch_0
    move-exception v6

    .line 1689
    .local v6, e:Landroid/os/RemoteException;
    const/16 v18, 0x0

    sput-object v18, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    goto :goto_3

    .line 1762
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_c
    const-string v18, "layout_inflater"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 1767
    .local v7, inflater:Landroid/view/LayoutInflater;
    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 1768
    const v18, 0x7f03000d

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1775
    .local v5, dialogView:Landroid/view/View;
    :goto_4
    const v18, 0x7f08007f

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 1778
    .local v8, inputText:Landroid/widget/EditText;
    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v19, 0x70

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_d

    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v19, 0x71

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 1781
    :cond_d
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 1783
    const-string v18, "PhoneUtils"

    const-string v19, "--        inputText.setInputType(EditorInfo.TYPE_CLASS_PHONE"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    :goto_5
    const v18, 0x7f08007e

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1796
    .local v11, message:Landroid/widget/TextView;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1797
    const v18, 0x7f080080

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1798
    .local v3, counter:Landroid/widget/TextView;
    if-eqz v3, :cond_e

    .line 1799
    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    .line 1800
    const-string v18, "%d/182"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1801
    new-instance v18, Lcom/android/phone/PhoneUtils$4;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/android/phone/PhoneUtils$4;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1825
    :cond_e
    :goto_6
    new-instance v10, Lcom/android/phone/PhoneUtils$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v10, v0, v8, v1}, Lcom/android/phone/PhoneUtils$5;-><init>(Lcom/android/internal/telephony/Phone;Landroid/widget/EditText;Lcom/android/internal/telephony/MmiCode;)V

    .line 1842
    .local v10, mUSSDDialogListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v18, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v19, 0x7f0e00a5

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f0e0262

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f0e024d

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v12

    .line 1855
    .restart local v12       #newDialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v9, Lcom/android/phone/PhoneUtils$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v9, v0, v8, v12, v1}, Lcom/android/phone/PhoneUtils$6;-><init>(Lcom/android/internal/telephony/Phone;Landroid/widget/EditText;Lcom/htc/widget/HtcAlertDialog;Lcom/android/internal/telephony/MmiCode;)V

    .line 1878
    .local v9, mUSSDDialogInputListener:Landroid/view/View$OnKeyListener;
    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1879
    invoke-virtual {v8}, Landroid/widget/EditText;->requestFocus()Z

    .line 1882
    invoke-virtual {v12}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v19, 0x7d8

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->setType(I)V

    .line 1884
    invoke-virtual {v12}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->addFlags(I)V

    .line 1888
    new-instance v18, Lcom/android/phone/PhoneUtils$7;

    invoke-direct/range {v18 .. v18}, Lcom/android/phone/PhoneUtils$7;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1895
    new-instance v18, Lcom/android/phone/PhoneUtils$8;

    invoke-direct/range {v18 .. v18}, Lcom/android/phone/PhoneUtils$8;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1903
    invoke-interface/range {p0 .. p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_f

    .line 1904
    invoke-virtual {v12}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 1907
    :cond_f
    invoke-virtual {v2, v12}, Lcom/android/phone/PhoneApp;->setMmiDialog(Lcom/htc/widget/HtcAlertDialog;)V

    goto/16 :goto_2

    .line 1770
    .end local v3           #counter:Landroid/widget/TextView;
    .end local v5           #dialogView:Landroid/view/View;
    .end local v8           #inputText:Landroid/widget/EditText;
    .end local v9           #mUSSDDialogInputListener:Landroid/view/View$OnKeyListener;
    .end local v10           #mUSSDDialogListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v11           #message:Landroid/widget/TextView;
    .end local v12           #newDialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_10
    const v18, 0x7f03000c

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .restart local v5       #dialogView:Landroid/view/View;
    goto/16 :goto_4

    .line 1788
    .restart local v8       #inputText:Landroid/widget/EditText;
    :cond_11
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_5

    .line 1819
    .restart local v3       #counter:Landroid/widget/TextView;
    .restart local v11       #message:Landroid/widget/TextView;
    :cond_12
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 1582
    .end local v2           #app:Lcom/android/phone/PhoneApp;
    .end local v3           #counter:Landroid/widget/TextView;
    .end local v5           #dialogView:Landroid/view/View;
    .end local v7           #inflater:Landroid/view/LayoutInflater;
    .end local v8           #inputText:Landroid/widget/EditText;
    .end local v11           #message:Landroid/widget/TextView;
    .end local v16           #text:Ljava/lang/CharSequence;
    :catch_1
    move-exception v18

    goto/16 :goto_0

    .line 1588
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 11
    .parameter "context"
    .parameter "mmiCode"
    .parameter "buttonCallbackMessage"
    .parameter "previousAlert"

    .prologue
    const/16 v10, 0x7d8

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1456
    if-eqz p3, :cond_0

    .line 1457
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    .line 1489
    :cond_0
    sget-object v8, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    if-eqz v8, :cond_1

    .line 1492
    new-instance v2, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v2, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1493
    .local v2, pd:Lcom/htc/app/HtcProgressDialog;
    const-string v4, ""

    .line 1495
    .local v4, textmsg:Ljava/lang/CharSequence;
    :try_start_0
    sget-object v8, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v8}, Lcom/android/internal/telephony/IExtendedNetworkService;->getMmiRunningText()Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1502
    :goto_0
    invoke-virtual {v2, v4}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1503
    invoke-virtual {v2, v7}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 1504
    invoke-virtual {v2, v7}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1505
    invoke-virtual {v2, v6}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 1506
    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/Window;->addFlags(I)V

    .line 1507
    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/Window;->setType(I)V

    .line 1508
    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 1510
    sput-object p2, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 1512
    :try_start_1
    sget-object v6, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v7, 0x3a98

    invoke-virtual {v6, p2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1541
    .end local v2           #pd:Lcom/htc/app/HtcProgressDialog;
    .end local v4           #textmsg:Ljava/lang/CharSequence;
    :goto_1
    return-object v2

    .line 1497
    .restart local v2       #pd:Lcom/htc/app/HtcProgressDialog;
    .restart local v4       #textmsg:Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    .line 1498
    .local v0, e:Landroid/os/RemoteException;
    sput-object v5, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    .line 1499
    const v8, 0x7f0e024b

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 1513
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1514
    .local v0, e:Ljava/lang/NullPointerException;
    sput-object v5, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    goto :goto_1

    .line 1519
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #pd:Lcom/htc/app/HtcProgressDialog;
    .end local v4           #textmsg:Ljava/lang/CharSequence;
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v8

    if-eqz v8, :cond_2

    move v1, v6

    .line 1521
    .local v1, isCancelable:Z
    :goto_2
    if-nez v1, :cond_3

    .line 1523
    const v6, 0x7f0e024a

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1524
    .local v3, text:Ljava/lang/CharSequence;
    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    move-object v2, v5

    .line 1526
    goto :goto_1

    .end local v1           #isCancelable:Z
    .end local v3           #text:Ljava/lang/CharSequence;
    :cond_2
    move v1, v7

    .line 1519
    goto :goto_2

    .line 1531
    .restart local v1       #isCancelable:Z
    :cond_3
    new-instance v2, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v2, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1532
    .restart local v2       #pd:Lcom/htc/app/HtcProgressDialog;
    const v5, 0x7f0e024b

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1533
    invoke-virtual {v2, v7}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 1534
    invoke-virtual {v2, v7}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1535
    invoke-virtual {v2, v6}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 1536
    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/Window;->addFlags(I)V

    .line 1537
    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/Window;->setType(I)V

    .line 1539
    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->show()V

    goto :goto_1
.end method

.method static displayMMLocationUpdateError(Lcom/android/internal/telephony/Phone;Landroid/content/Context;I)V
    .locals 5
    .parameter "phone"
    .parameter "context"
    .parameter "cause"

    .prologue
    .line 3925
    const-string v0, ""

    .line 3926
    .local v0, text:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 3952
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 3953
    invoke-static {}, Lcom/android/phone/PhoneUtils;->closeMMDialog()V

    .line 3956
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e025b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/PhoneUtils$10;

    invoke-direct {v2}, Lcom/android/phone/PhoneUtils$10;-><init>()V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PhoneUtils;->mMMDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3969
    sget-object v1, Lcom/android/phone/PhoneUtils;->mMMDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 3971
    sget-object v1, Lcom/android/phone/PhoneUtils;->mMMDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 3973
    sget-object v1, Lcom/android/phone/PhoneUtils;->mMMDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 3975
    sget-object v1, Lcom/android/phone/PhoneUtils;->mHandler:Lcom/android/phone/PhoneUtils$mmHandler;

    const/16 v2, 0x32

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/phone/PhoneUtils$mmHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3977
    :cond_0
    return-void

    .line 3928
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3929
    goto :goto_0

    .line 3931
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3932
    goto :goto_0

    .line 3934
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3935
    goto :goto_0

    .line 3937
    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3938
    goto/16 :goto_0

    .line 3940
    :pswitch_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3941
    goto/16 :goto_0

    .line 3926
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static dispose(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 4927
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 4928
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    sget-object v1, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 4929
    sget-object v1, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 4930
    return-void
.end method

.method static dumpCallManager()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 3748
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v2, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 3749
    .local v2, cm:Lcom/android/internal/telephony/CallManager;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3751
    .local v0, b:Ljava/lang/StringBuilder;
    const-string v5, "PhoneUtils"

    const-string v6, "############### dumpCallManager() ##############"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3758
    const-string v5, "PhoneUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CallManager: state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3759
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3760
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3761
    .local v1, call:Lcom/android/internal/telephony/Call;
    const-string v5, " - FG call: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "YES "

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3762
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3763
    const-string v5, "  State: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3764
    const-string v5, "  Conn: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3765
    const-string v5, "PhoneUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3766
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3767
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3768
    const-string v5, " - BG call: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "YES "

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3769
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3770
    const-string v5, "  State: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3771
    const-string v5, "  Conn: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3772
    const-string v5, "PhoneUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3773
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3774
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3775
    const-string v5, " - RINGING call: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "YES "

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3776
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3777
    const-string v5, "  State: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3778
    const-string v5, "PhoneUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3782
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Phone;

    .line 3783
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v4, :cond_0

    .line 3784
    const-string v5, "PhoneUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Phone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3786
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3787
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3788
    const-string v5, " - FG call: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3789
    const-string v5, "  State: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3790
    const-string v5, "  Conn: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3791
    const-string v5, "PhoneUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3792
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3793
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3794
    const-string v5, " - BG call: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3795
    const-string v5, "  State: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3796
    const-string v5, "  Conn: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3797
    const-string v5, "PhoneUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3798
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3799
    const-string v5, " - RINGING call: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3800
    const-string v5, "  State: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3801
    const-string v5, "  Conn: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3802
    const-string v5, "PhoneUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3761
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    const-string v5, "NO "

    goto/16 :goto_0

    .line 3768
    :cond_2
    const-string v5, "NO "

    goto/16 :goto_1

    .line 3775
    :cond_3
    const-string v5, "NO "

    goto/16 :goto_2

    .line 3806
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    const-string v5, "PhoneUtils"

    const-string v6, "############## END dumpCallManager() ###############"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3807
    return-void
.end method

.method static dumpCallState()V
    .locals 12

    .prologue
    .line 3637
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 3638
    .local v1, app:Lcom/android/phone/PhoneApp;
    iget-object v3, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 3639
    .local v3, cm:Lcom/android/internal/telephony/CallManager;
    const-string v9, "PhoneUtils"

    const-string v10, "dumpCallState():"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3640
    const-string v9, "PhoneUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "- Call state = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3642
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    const-string v10, "  - FG call: "

    invoke-static {v9, v10}, Lcom/android/phone/PhoneUtils;->dumpStateForCall(Lcom/android/internal/telephony/Call;Ljava/lang/String;)V

    .line 3643
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    const-string v10, "  - BG call: "

    invoke-static {v9, v10}, Lcom/android/phone/PhoneUtils;->dumpStateForCall(Lcom/android/internal/telephony/Call;Ljava/lang/String;)V

    .line 3644
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    const-string v10, "  - RINGING call: "

    invoke-static {v9, v10}, Lcom/android/phone/PhoneUtils;->dumpStateForCall(Lcom/android/internal/telephony/Call;Ljava/lang/String;)V

    .line 3646
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v6

    .line 3647
    .local v6, hasRingingCall:Z
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v4

    .line 3648
    .local v4, hasActiveCall:Z
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    .line 3649
    .local v5, hasHoldingCall:Z
    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    .line 3650
    .local v0, allLinesTaken:Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v9, 0x80

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3651
    .local v2, b:Ljava/lang/StringBuilder;
    const-string v9, "  - hasRingingCall "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3652
    const-string v9, " hasActiveCall "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3653
    const-string v9, " hasHoldingCall "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3654
    const-string v9, " allLinesTaken "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3655
    const-string v9, "PhoneUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3657
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 3659
    .local v7, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 3660
    iget-object v9, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v9, :cond_2

    .line 3661
    const-string v9, "PhoneUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  - CDMA call state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v11}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3671
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v8

    .line 3672
    .local v8, ringing:Z
    const-string v9, "PhoneUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  - Ringer state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3673
    return-void

    .line 3649
    .end local v0           #allLinesTaken:Z
    .end local v2           #b:Ljava/lang/StringBuilder;
    .end local v7           #phone:Lcom/android/internal/telephony/Phone;
    .end local v8           #ringing:Z
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3664
    .restart local v0       #allLinesTaken:Z
    .restart local v2       #b:Ljava/lang/StringBuilder;
    .restart local v7       #phone:Lcom/android/internal/telephony/Phone;
    :cond_2
    const-string v9, "PhoneUtils"

    const-string v10, "  - CDMA device, but null cdmaPhoneCallState!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static dumpCallState(Lcom/android/internal/telephony/Phone;)V
    .locals 13
    .parameter "phone"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3676
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 3677
    .local v1, app:Lcom/android/phone/PhoneApp;
    const-string v10, "PhoneUtils"

    const-string v11, "dumpCallState():"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3678
    const-string v10, "PhoneUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "- Phone: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", name = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", state = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3681
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v10, 0x80

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3683
    .local v2, b:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 3684
    .local v3, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3685
    const-string v10, "  - FG call: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3686
    const-string v10, " isAlive "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3687
    const-string v10, " isRinging "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3688
    const-string v10, " isDialing "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3689
    const-string v10, " isIdle "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3690
    const-string v10, " hasConnections "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3691
    const-string v10, "PhoneUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3693
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 3694
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3695
    const-string v10, "  - BG call: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3696
    const-string v10, " isAlive "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3697
    const-string v10, " isRinging "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3698
    const-string v10, " isDialing "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3699
    const-string v10, " isIdle "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3700
    const-string v10, " hasConnections "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3701
    const-string v10, "PhoneUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3703
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 3704
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3705
    const-string v10, "  - RINGING call: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3706
    const-string v10, " isAlive "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3707
    const-string v10, " isRinging "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3708
    const-string v10, " isDialing "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3709
    const-string v10, " isIdle "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3710
    const-string v10, " hasConnections "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3711
    const-string v10, "PhoneUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3714
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v10

    if-nez v10, :cond_1

    move v6, v8

    .line 3715
    .local v6, hasRingingCall:Z
    :goto_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v10

    if-nez v10, :cond_2

    move v4, v8

    .line 3716
    .local v4, hasActiveCall:Z
    :goto_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v10

    if-nez v10, :cond_3

    move v5, v8

    .line 3717
    .local v5, hasHoldingCall:Z
    :goto_2
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    move v0, v8

    .line 3718
    .local v0, allLinesTaken:Z
    :goto_3
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3719
    const-string v8, "  - hasRingingCall "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3720
    const-string v8, " hasActiveCall "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3721
    const-string v8, " hasHoldingCall "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3722
    const-string v8, " allLinesTaken "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3723
    const-string v8, "PhoneUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3726
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 3727
    iget-object v8, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v8, :cond_5

    .line 3728
    const-string v8, "PhoneUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  - CDMA call state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v10}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3738
    :cond_0
    :goto_4
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v7

    .line 3739
    .local v7, ringing:Z
    const-string v8, "PhoneUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  - Ringer state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3740
    return-void

    .end local v0           #allLinesTaken:Z
    .end local v4           #hasActiveCall:Z
    .end local v5           #hasHoldingCall:Z
    .end local v6           #hasRingingCall:Z
    .end local v7           #ringing:Z
    :cond_1
    move v6, v9

    .line 3714
    goto/16 :goto_0

    .restart local v6       #hasRingingCall:Z
    :cond_2
    move v4, v9

    .line 3715
    goto/16 :goto_1

    .restart local v4       #hasActiveCall:Z
    :cond_3
    move v5, v9

    .line 3716
    goto/16 :goto_2

    .restart local v5       #hasHoldingCall:Z
    :cond_4
    move v0, v9

    .line 3717
    goto/16 :goto_3

    .line 3731
    .restart local v0       #allLinesTaken:Z
    :cond_5
    const-string v8, "PhoneUtils"

    const-string v9, "  - CDMA device, but null cdmaPhoneCallState!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private static dumpStateForCall(Lcom/android/internal/telephony/Call;Ljava/lang/String;)V
    .locals 3
    .parameter "call"
    .parameter "prefix"

    .prologue
    .line 3625
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3626
    .local v0, b:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3627
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3628
    const-string v1, " isAlive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3629
    const-string v1, " isRinging "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3630
    const-string v1, " isDialing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3631
    const-string v1, " isIdle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3632
    const-string v1, " hasConnections "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3633
    const-string v1, "PhoneUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3634
    return-void
.end method

.method static flashCharmIndicator(Landroid/content/Context;Landroid/app/Notification;I)V
    .locals 4
    .parameter "context"
    .parameter "notification"
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 725
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "charm_phone_notification"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 727
    .local v0, isEnabled:Z
    :cond_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 729
    iget v1, p1, Landroid/app/Notification;->flags:I

    const/high16 v2, 0x200

    or-int/2addr v1, v2

    iput v1, p1, Landroid/app/Notification;->flags:I

    .line 730
    iput p2, p1, Landroid/app/Notification;->charmMode:I

    .line 731
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Charm indicator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_1
    return-void
.end method

.method private static flashEarPieceLed(ZLandroid/content/Context;)V
    .locals 4
    .parameter "flash"
    .parameter "context"

    .prologue
    const/16 v3, 0x3e9

    .line 709
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 711
    .local v1, notificationMgr:Landroid/app/NotificationManager;
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 712
    .local v0, notification:Landroid/app/Notification;
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 713
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 714
    const v2, -0xff0100

    iput v2, v0, Landroid/app/Notification;->ledARGB:I

    .line 715
    if-eqz p0, :cond_0

    .line 716
    const/16 v2, 0x32

    iput v2, v0, Landroid/app/Notification;->ledOffMS:I

    .line 717
    const/16 v2, 0x64

    iput v2, v0, Landroid/app/Notification;->ledOnMS:I

    .line 718
    invoke-virtual {v1, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 722
    :goto_0
    return-void

    .line 720
    :cond_0
    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private static flashJogBall(ZLandroid/content/Context;)V
    .locals 4
    .parameter "flash"
    .parameter "context"

    .prologue
    .line 699
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 702
    .local v1, notificationMgr:Landroid/app/NotificationManager;
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 703
    .local v0, notification:Landroid/app/Notification;
    iget v2, v0, Landroid/app/Notification;->flags:I

    const/high16 v3, 0x1

    or-int/2addr v2, v3

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 704
    iget v3, v0, Landroid/app/Notification;->jogMode:I

    if-eqz p0, :cond_0

    const/4 v2, 0x3

    :goto_0
    or-int/2addr v2, v3

    iput v2, v0, Landroid/app/Notification;->jogMode:I

    .line 705
    const/16 v2, 0x3e9

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 706
    return-void

    .line 704
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static flashLefForIncoming(ZLandroid/content/Context;)V
    .locals 1
    .parameter "flash"
    .parameter "context"

    .prologue
    .line 691
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->SUPPORT_JOGBALL:Z

    if-eqz v0, :cond_0

    .line 692
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->flashJogBall(ZLandroid/content/Context;)V

    .line 696
    :goto_0
    return-void

    .line 694
    :cond_0
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->flashEarPieceLed(ZLandroid/content/Context;)V

    goto :goto_0
.end method

.method public static formatNanpNumber(Landroid/text/Editable;)V
    .locals 23
    .parameter "text"

    .prologue
    .line 4650
    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v11

    .line 4651
    .local v11, length:I
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1, v11}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v17

    .line 4653
    .local v17, saved:Ljava/lang/CharSequence;
    const/4 v15, 0x0

    .line 4654
    .local v15, p:I
    :goto_0
    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v15, v0, :cond_1

    .line 4655
    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/text/Editable;->charAt(I)C

    move-result v20

    const/16 v21, 0x2d

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 4656
    add-int/lit8 v20, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v15, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 4658
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 4662
    :cond_1
    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v11

    .line 4667
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v6, v0, [I

    .line 4668
    .local v6, dashPositions:[I
    const/4 v12, 0x0

    .line 4670
    .local v12, numDashes:I
    const/16 v19, 0x1

    .line 4671
    .local v19, state:I
    const/16 v18, 0x0

    .line 4672
    .local v18, skip:I
    const/4 v14, 0x0

    .line 4673
    .local v14, numDigits:I
    const/4 v4, 0x0

    .line 4674
    .local v4, bExitLoop:Z
    const/4 v9, 0x0

    .local v9, i:I
    move v13, v12

    .end local v12           #numDashes:I
    .local v13, numDashes:I
    :goto_1
    if-ge v9, v11, :cond_b

    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v4, v0, :cond_b

    .line 4675
    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    .line 4676
    .local v5, c:C
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v20

    const/16 v21, 0x70

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v20

    const/16 v21, 0x77

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 4678
    :cond_2
    const/4 v4, 0x1

    move v12, v13

    .line 4674
    .end local v13           #numDashes:I
    .restart local v12       #numDashes:I
    :goto_2
    add-int/lit8 v9, v9, 0x1

    move v13, v12

    .end local v12           #numDashes:I
    .restart local v13       #numDashes:I
    goto :goto_1

    .line 4681
    :cond_3
    packed-switch v5, :pswitch_data_0

    .line 4728
    :cond_4
    :pswitch_0
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v11, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move v12, v13

    .line 4762
    .end local v5           #c:C
    .end local v13           #numDashes:I
    .restart local v12       #numDashes:I
    :cond_5
    :goto_3
    return-void

    .line 4683
    .end local v12           #numDashes:I
    .restart local v5       #c:C
    .restart local v13       #numDashes:I
    :pswitch_1
    if-eqz v14, :cond_6

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 4684
    :cond_6
    const/16 v19, 0x3

    .line 4685
    add-int/lit8 v14, v14, 0x1

    .line 4686
    add-int/lit8 v18, v18, 0x1

    move v12, v13

    .line 4687
    .end local v13           #numDashes:I
    .restart local v12       #numDashes:I
    goto :goto_2

    .line 4699
    .end local v12           #numDashes:I
    .restart local v13       #numDashes:I
    :cond_7
    :pswitch_2
    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 4701
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v11, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move v12, v13

    .line 4702
    .end local v13           #numDashes:I
    .restart local v12       #numDashes:I
    goto :goto_3

    .line 4703
    .end local v12           #numDashes:I
    .restart local v13       #numDashes:I
    :cond_8
    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 4705
    add-int/lit8 v12, v13, 0x1

    .end local v13           #numDashes:I
    .restart local v12       #numDashes:I
    aput v9, v6, v13

    .line 4711
    :goto_4
    const/16 v19, 0x1

    .line 4712
    add-int/lit8 v14, v14, 0x1

    .line 4713
    goto :goto_2

    .line 4706
    .end local v12           #numDashes:I
    .restart local v13       #numDashes:I
    :cond_9
    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_12

    sub-int v20, v14, v18

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    sub-int v20, v14, v18

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 4709
    :cond_a
    add-int/lit8 v12, v13, 0x1

    .end local v13           #numDashes:I
    .restart local v12       #numDashes:I
    aput v9, v6, v13

    goto :goto_4

    .line 4716
    .end local v12           #numDashes:I
    .restart local v13       #numDashes:I
    :pswitch_3
    const/16 v19, 0x4

    move v12, v13

    .line 4717
    .end local v13           #numDashes:I
    .restart local v12       #numDashes:I
    goto :goto_2

    .line 4720
    .end local v12           #numDashes:I
    .restart local v13       #numDashes:I
    :pswitch_4
    if-nez v9, :cond_4

    .line 4722
    const/16 v19, 0x2

    move v12, v13

    .line 4723
    .end local v13           #numDashes:I
    .restart local v12       #numDashes:I
    goto :goto_2

    .line 4734
    .end local v5           #c:C
    .end local v12           #numDashes:I
    .restart local v13       #numDashes:I
    :cond_b
    add-int/lit8 v20, v18, 0x7

    move/from16 v0, v20

    if-ne v14, v0, :cond_11

    .line 4737
    add-int/lit8 v12, v13, -0x1

    .line 4741
    .end local v13           #numDashes:I
    .restart local v12       #numDashes:I
    :goto_5
    const/4 v9, 0x0

    :goto_6
    if-ge v9, v12, :cond_10

    .line 4743
    aget v16, v6, v9

    .line 4745
    .local v16, pos:I
    const/4 v7, 0x5

    .line 4746
    .local v7, dashlimit1:I
    const/4 v8, 0x7

    .line 4747
    .local v8, dashlimit2:I
    add-int v20, v7, v18

    move/from16 v0, v20

    if-le v14, v0, :cond_c

    add-int/lit8 v20, v18, 0x1

    move/from16 v0, v20

    if-eq v12, v0, :cond_e

    :cond_c
    add-int v20, v8, v18

    move/from16 v0, v20

    if-le v14, v0, :cond_d

    add-int/lit8 v20, v18, 0x2

    move/from16 v0, v20

    if-eq v12, v0, :cond_e

    :cond_d
    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    if-nez v9, :cond_f

    .line 4749
    :cond_e
    add-int v20, v16, v9

    add-int v21, v16, v9

    const-string v22, "-"

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 4741
    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 4753
    .end local v7           #dashlimit1:I
    .end local v8           #dashlimit2:I
    .end local v16           #pos:I
    :cond_10
    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v10

    .line 4754
    .local v10, len:I
    :goto_7
    if-lez v10, :cond_5

    .line 4755
    add-int/lit8 v20, v10, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v20

    const/16 v21, 0x2d

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 4756
    add-int/lit8 v20, v10, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1, v10}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 4757
    add-int/lit8 v10, v10, -0x1

    goto :goto_7

    .end local v10           #len:I
    .end local v12           #numDashes:I
    .restart local v13       #numDashes:I
    :cond_11
    move v12, v13

    .end local v13           #numDashes:I
    .restart local v12       #numDashes:I
    goto :goto_5

    .end local v12           #numDashes:I
    .restart local v5       #c:C
    .restart local v13       #numDashes:I
    :cond_12
    move v12, v13

    .end local v13           #numDashes:I
    .restart local v12       #numDashes:I
    goto/16 :goto_4

    .line 4681
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static formatProviderUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 3491
    if-eqz p0, :cond_1

    .line 3492
    const-string v0, "tel"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3493
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3498
    :goto_0
    return-object v0

    .line 3495
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3498
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getAudioMode(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 2847
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2848
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 2849
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 2851
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x2

    goto :goto_0
.end method

.method static getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .locals 4
    .parameter "context"
    .parameter "c"

    .prologue
    .line 2038
    const/4 v0, 0x0

    .line 2040
    .local v0, info:Lcom/android/internal/telephony/CallerInfo;
    if-eqz p1, :cond_0

    .line 2044
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 2045
    .local v2, userDataObject:Ljava/lang/Object;
    instance-of v3, v2, Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 2046
    check-cast v2, Landroid/net/Uri;

    .end local v2           #userDataObject:Ljava/lang/Object;
    invoke-static {p0, v2}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 2047
    if-eqz v0, :cond_0

    .line 2048
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 2074
    :cond_0
    :goto_0
    return-object v0

    .line 2051
    .restart local v2       #userDataObject:Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v3, :cond_2

    .line 2053
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v2           #userDataObject:Ljava/lang/Object;
    iget-object v0, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2058
    :goto_1
    if-nez v0, :cond_0

    .line 2061
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 2065
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2066
    invoke-static {p0, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 2067
    if-eqz v0, :cond_0

    .line 2068
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    goto :goto_0

    .end local v1           #number:Ljava/lang/String;
    .restart local v2       #userDataObject:Ljava/lang/Object;
    :cond_2
    move-object v0, v2

    .line 2056
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1
.end method

.method static getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "ci"
    .parameter "context"

    .prologue
    .line 2497
    const/4 v0, 0x0

    .line 2498
    .local v0, compactName:Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 2499
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2502
    sget-boolean v1, Lcom/android/phone/CityIdInfo;->ECID:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2504
    const/4 v0, 0x0

    .line 2509
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2510
    iget v1, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p1, p0, v0, v1}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2523
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2527
    :cond_2
    if-eqz p0, :cond_6

    iget v1, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v1, v2, :cond_6

    .line 2528
    const v1, 0x7f0e0223

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2536
    :cond_3
    :goto_1
    return-object v0

    .line 2514
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2515
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 2517
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 2529
    :cond_6
    if-eqz p0, :cond_7

    iget v1, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne v1, v2, :cond_7

    .line 2530
    const v1, 0x7f0e0224

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2532
    :cond_7
    const v1, 0x7f0e0222

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static final getDisplayNameIfNumberEmpty(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "c"

    .prologue
    .line 3897
    const-string v1, ""

    .line 3898
    .local v1, name:Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v2, v1

    .line 3918
    .end local v1           #name:Ljava/lang/String;
    .local v2, name:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 3902
    .end local v2           #name:Ljava/lang/String;
    .restart local v1       #name:Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 3903
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {p1, v0}, Lcom/htc/util/phone/PhoneUtils;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v3

    .line 3905
    .local v3, presentation:I
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v3, v4, :cond_2

    .line 3906
    const v4, 0x7f0e0223

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3907
    if-eqz v0, :cond_1

    const-string v4, ""

    iput-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    :cond_1
    :goto_1
    move-object v2, v1

    .line 3918
    .end local v1           #name:Ljava/lang/String;
    .restart local v2       #name:Ljava/lang/String;
    goto :goto_0

    .line 3908
    .end local v2           #name:Ljava/lang/String;
    .restart local v1       #name:Ljava/lang/String;
    :cond_2
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne v3, v4, :cond_3

    .line 3909
    const v4, 0x7f0e0003

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3910
    if-eqz v0, :cond_1

    const-string v4, ""

    iput-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_1

    .line 3911
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne v3, v4, :cond_5

    .line 3913
    :cond_4
    const v4, 0x7f0e0222

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3914
    if-eqz v0, :cond_1

    const-string v4, ""

    iput-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_1

    .line 3916
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static getMMINumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4981
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDialedNumberVzwFeatureCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4982
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMMINumber:Ljava/lang/String;

    .line 4984
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getMute()Z
    .locals 6

    .prologue
    .line 2788
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    if-nez v4, :cond_0

    .line 2789
    const/4 v4, 0x0

    .line 2805
    .local v1, context:Landroid/content/Context;
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    .local v3, routeToAudioManager:Z
    :goto_0
    return v4

    .line 2791
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    .end local v3           #routeToAudioManager:Z
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 2793
    .restart local v2       #phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2794
    .restart local v1       #context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 2797
    .restart local v3       #routeToAudioManager:Z
    sget-boolean v4, Lcom/android/phone/util/ConfigUtils;->ROUTE_AUDIO_TO_RIL:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    const/4 v4, 0x3

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 2801
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2803
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v4

    goto :goto_0

    .line 2805
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_1
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v4

    goto :goto_0
.end method

.method static getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    .line 1989
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1992
    .local v2, uri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 1994
    const-string v3, "PhoneUtils"

    const-string v4, "getNumberFromIntent, uri is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    const/4 v0, 0x0

    .line 2018
    :cond_0
    :goto_0
    return-object v0

    .line 1999
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 2003
    .local v1, scheme:Ljava/lang/String;
    const-string v3, "sip"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2004
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2010
    :cond_2
    invoke-static {p1, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2014
    .local v0, number:Ljava/lang/String;
    const-string v3, "voicemail"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2016
    :cond_3
    new-instance v3, Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;

    invoke-direct {v3}, Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;-><init>()V

    throw v3
.end method

.method public static getPhoneByConnection(Ljava/lang/Object;)Lcom/android/internal/telephony/Phone;
    .locals 3
    .parameter "c"

    .prologue
    .line 4961
    instance-of v2, p0, Lcom/android/internal/telephony/Connection;

    if-eqz v2, :cond_0

    .line 4962
    check-cast p0, Lcom/android/internal/telephony/Connection;

    .end local p0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4963
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 4964
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 4965
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    .line 4970
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :goto_0
    return-object v1

    .restart local v1       #phone:Lcom/android/internal/telephony/Phone;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static final getPhoneNumberTypeString(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 2
    .parameter "res"
    .parameter "type"

    .prologue
    .line 4030
    if-nez p0, :cond_0

    .line 4031
    const/4 v0, 0x0

    .line 4062
    :goto_0
    return-object v0

    .line 4033
    :cond_0
    const/4 v0, 0x0

    .line 4034
    .local v0, typeString:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 4036
    :pswitch_0
    const v1, 0x7f0e0004

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4037
    goto :goto_0

    .line 4039
    :pswitch_1
    const v1, 0x7f0e0005

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4040
    goto :goto_0

    .line 4042
    :pswitch_2
    const v1, 0x7f0e0006

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4043
    goto :goto_0

    .line 4045
    :pswitch_3
    const v1, 0x7f0e0007

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4046
    goto :goto_0

    .line 4048
    :pswitch_4
    const v1, 0x7f0e0008

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4049
    goto :goto_0

    .line 4051
    :pswitch_5
    const v1, 0x7f0e0009

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4052
    goto :goto_0

    .line 4054
    :pswitch_6
    const v1, 0x7f0e000a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4055
    goto :goto_0

    .line 4057
    :pswitch_7
    const v1, 0x7f0e000b

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4058
    goto :goto_0

    .line 4034
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getPhoneTypeByConnection(Ljava/lang/Object;)I
    .locals 5
    .parameter "c"

    .prologue
    .line 4940
    const/4 v2, 0x0

    .line 4941
    .local v2, type:I
    instance-of v3, p0, Lcom/android/internal/telephony/Connection;

    if-eqz v3, :cond_0

    .line 4942
    check-cast p0, Lcom/android/internal/telephony/Connection;

    .end local p0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4943
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 4944
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 4945
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    .line 4946
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 4951
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_0
    if-nez v2, :cond_1

    .line 4952
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Invalid Connection Type"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4954
    :cond_1
    return v2
.end method

.method static getProviderGatewayUri(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 2
    .parameter "intent"

    .prologue
    .line 3479
    const-string v1, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3480
    .local v0, uri:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method static getProviderIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3463
    const-string v3, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3464
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3467
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3469
    :goto_0
    return-object v3

    .line 3468
    :catch_0
    move-exception v0

    .line 3469
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static getProviderLabel(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3444
    const-string v4, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3445
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3448
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3450
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 3452
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v4

    .line 3451
    :catch_0
    move-exception v0

    .line 3452
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getPsSpeakerOn()Z
    .locals 1

    .prologue
    .line 4404
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->mPsSpeakerOn:Z

    return v0
.end method

.method public static getRequestTimeStamp()J
    .locals 2

    .prologue
    .line 4380
    sget-wide v0, Lcom/android/phone/PhoneUtils;->mReqTimeStamp:J

    return-wide v0
.end method

.method static getRingingCallType(Lcom/android/internal/telephony/Phone;)I
    .locals 6
    .parameter "phone"

    .prologue
    const/4 v4, 0x0

    .line 3860
    if-nez p0, :cond_1

    .line 3890
    :cond_0
    :goto_0
    return v4

    .line 3864
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 3866
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 3868
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_0

    .line 3869
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 3871
    .local v2, o:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 3873
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    instance-of v5, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v5, :cond_3

    .line 3874
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v2           #o:Ljava/lang/Object;
    iget-object v0, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 3879
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 3880
    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3881
    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3882
    const/4 v4, 0x1

    goto :goto_0

    .line 3875
    .restart local v2       #o:Ljava/lang/Object;
    :cond_3
    instance-of v5, v2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v5, :cond_2

    move-object v0, v2

    .line 3876
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1
.end method

.method public static getSipPhoneFromUri(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;
    .locals 5
    .parameter "cm"
    .parameter "target"

    .prologue
    .line 3586
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 3587
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    move-object v3, v1

    .line 3588
    check-cast v3, Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone;->getSipUri()Ljava/lang/String;

    move-result-object v2

    .line 3589
    .local v2, sipUri:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3597
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    .end local v2           #sipUri:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSkypeCallState()I
    .locals 1

    .prologue
    .line 4391
    sget v0, Lcom/android/phone/PhoneUtils;->mSkypeCallState:I

    return v0
.end method

.method public static getSkypeIncallScreenEnable()Z
    .locals 1

    .prologue
    .line 4397
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->mSkypeArcScreenEnable:Z

    return v0
.end method

.method public static hTcCdmaNumberHyphenation(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 12
    .parameter "dialString"
    .parameter "mPhone"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 4544
    const/4 v0, 0x0

    .line 4546
    .local v0, addAutoPrepend:Z
    const-string v7, "-"

    const-string v8, ""

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4548
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 4553
    .local v6, sp:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 4554
    .local v1, defaultValue:Z
    sget-boolean v7, Lcom/android/phone/HtcFeatureList;->FEATURE_AUTOMATIC_PREPEND:Z

    if-ne v7, v11, :cond_0

    .line 4555
    const/4 v1, 0x1

    .line 4559
    :cond_0
    const-string v7, "cdma_number_hyphenation_key"

    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 4560
    .local v2, functionEnable:Z
    const-string v7, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OoO isEnable AutoPrepend("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4563
    if-ne v2, v11, :cond_1

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 4565
    const/4 v0, 0x1

    .line 4569
    :cond_1
    move-object v5, p0

    .line 4570
    .local v5, modifiedString:Ljava/lang/String;
    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x31

    if-eq v7, v8, :cond_3

    .line 4574
    const/4 v4, 0x0

    .line 4575
    .local v4, lenDigits:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4577
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4580
    :cond_2
    const/16 v7, 0xa

    if-ne v4, v7, :cond_3

    .line 4581
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 4582
    .local v3, leadingChar:C
    const/16 v7, 0x30

    if-lt v3, v7, :cond_3

    const/16 v7, 0x39

    if-gt v3, v7, :cond_3

    .line 4583
    const-string v7, "1"

    invoke-virtual {v7, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4588
    .end local v3           #leadingChar:C
    .end local v4           #lenDigits:I
    :cond_3
    return-object v5
.end method

.method static handleHeadsetHook(Lcom/android/internal/telephony/Phone;Landroid/view/KeyEvent;)Z
    .locals 14
    .parameter "phone"
    .parameter "event"

    .prologue
    const-wide/16 v12, 0x3e8

    const/16 v11, 0x34

    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2870
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getSkypeCallState()I

    move-result v3

    .line 2872
    .local v3, mSkypeCallState:I
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2874
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v8, v9, :cond_2

    if-nez v3, :cond_2

    .line 3172
    :cond_0
    :goto_0
    return v7

    .line 2881
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v8, v9, :cond_0

    .line 2893
    :cond_2
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v8

    if-nez v8, :cond_5

    move v2, v6

    .line 2894
    .local v2, hasRingingCall:Z
    :goto_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v8

    if-nez v8, :cond_6

    move v0, v6

    .line 2895
    .local v0, hasActiveCall:Z
    :goto_2
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v8

    if-nez v8, :cond_7

    move v1, v6

    .line 2897
    .local v1, hasHoldingCall:Z
    :goto_3
    if-nez v2, :cond_3

    if-ne v3, v6, :cond_1b

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_1b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-ne v8, v6, :cond_1b

    .line 2902
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 2903
    .local v5, phoneType:I
    if-ne v5, v10, :cond_e

    .line 2906
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 2908
    if-nez v3, :cond_8

    .line 2910
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_4

    .line 2912
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 2913
    const-string v7, "handleHeadsetHook  (CS: Ringing, PS:Idle)==> answer CS call!"

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    :cond_4
    :goto_4
    move v7, v6

    .line 3172
    goto :goto_0

    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    .end local v2           #hasRingingCall:Z
    .end local v5           #phoneType:I
    :cond_5
    move v2, v7

    .line 2893
    goto :goto_1

    .restart local v2       #hasRingingCall:Z
    :cond_6
    move v0, v7

    .line 2894
    goto :goto_2

    .restart local v0       #hasActiveCall:Z
    :cond_7
    move v1, v7

    .line 2895
    goto :goto_3

    .line 2916
    .restart local v1       #hasHoldingCall:Z
    .restart local v5       #phoneType:I
    :cond_8
    if-ne v3, v6, :cond_c

    .line 2918
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_9

    .line 2921
    invoke-static {p0, v6}, Lcom/android/phone/PhoneUtils;->sendHeadsetPressedBroadcast(Lcom/android/internal/telephony/Phone;Z)V

    .line 2922
    const-string v7, "handleHeadsetHook  (CS: Idle, PS:Ringing)==> answer PS call, send BT_BUTTON_PRESSED!"

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 2923
    :cond_9
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_a

    .line 2926
    invoke-static {p0, v6}, Lcom/android/phone/PhoneUtils;->sendHeadsetPressedBroadcast(Lcom/android/internal/telephony/Phone;Z)V

    .line 2927
    const-string v7, "handleHeadsetHook  (CS: Offhook, PS:Ringing)==> answer PS call, send BT_BUTTON_PRESSED!"

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 2928
    :cond_a
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_4

    .line 2930
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v4, v7, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 2931
    .local v4, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v4}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v7

    if-nez v7, :cond_b

    .line 2934
    invoke-static {p0, v6}, Lcom/android/phone/PhoneUtils;->sendHeadsetPressedBroadcast(Lcom/android/internal/telephony/Phone;Z)V

    .line 2935
    const-string v7, "handleHeadsetHook  (b->CS: Ringing, f->PS:Ringing)==> answer PS call, send BT_BUTTON_PRESSED!"

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 2938
    :cond_b
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 2939
    const-string v7, "handleHeadsetHook  (f->CS: Ringing, b->PS:Ringing)==> answer CS call!"

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 2943
    .end local v4           #notifier:Lcom/android/phone/CallNotifier;
    :cond_c
    if-ne v3, v10, :cond_4

    .line 2945
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_4

    .line 2947
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 2948
    const-string v7, "handleHeadsetHook  (CS: Ringing, PS:Offhook)==> answer CS call!"

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 2954
    :cond_d
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_4

    .line 2955
    :cond_e
    if-eq v5, v6, :cond_f

    const/4 v7, 0x3

    if-ne v5, v7, :cond_1a

    .line 2958
    :cond_f
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 2960
    if-nez v3, :cond_11

    .line 2962
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_4

    .line 2964
    if-eqz v0, :cond_10

    if-eqz v1, :cond_10

    .line 2966
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_4

    .line 2969
    :cond_10
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 2970
    const-string v7, "handleHeadsetHook  (CS: Ringing, PS:Idle)==> answer CS call!"

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2974
    :cond_11
    if-ne v3, v6, :cond_16

    .line 2976
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_12

    .line 2979
    invoke-static {p0, v6}, Lcom/android/phone/PhoneUtils;->sendHeadsetPressedBroadcast(Lcom/android/internal/telephony/Phone;Z)V

    .line 2980
    const-string v7, "handleHeadsetHook  (CS: Idle, PS:Ringing)==> answer PS call, send BT_BUTTON_PRESSED!"

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2981
    :cond_12
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_13

    .line 2984
    invoke-static {p0, v6}, Lcom/android/phone/PhoneUtils;->sendHeadsetPressedBroadcast(Lcom/android/internal/telephony/Phone;Z)V

    .line 2985
    const-string v7, "handleHeadsetHook  (CS: Offhook, PS:Ringing)==> answer PS call, send BT_BUTTON_PRESSED!"

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2986
    :cond_13
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_4

    .line 2988
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v4, v7, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 2989
    .restart local v4       #notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v4}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v7

    if-nez v7, :cond_14

    .line 2992
    invoke-static {p0, v6}, Lcom/android/phone/PhoneUtils;->sendHeadsetPressedBroadcast(Lcom/android/internal/telephony/Phone;Z)V

    .line 2993
    const-string v7, "handleHeadsetHook  (b->CS: Ringing, f->PS:Ringing)==> answer PS call, send BT_BUTTON_PRESSED!"

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2996
    :cond_14
    if-eqz v0, :cond_15

    if-eqz v1, :cond_15

    .line 2998
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_4

    .line 3001
    :cond_15
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 3002
    const-string v7, "handleHeadsetHook  (f->CS: Ringing, b->PS:Ringing)==> answer CS call!"

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3007
    .end local v4           #notifier:Lcom/android/phone/CallNotifier;
    :cond_16
    if-ne v3, v10, :cond_4

    .line 3009
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_4

    .line 3011
    if-eqz v0, :cond_17

    if-eqz v1, :cond_17

    .line 3013
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_4

    .line 3016
    :cond_17
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 3017
    const-string v7, "handleHeadsetHook  (CS: Ringing, PS:Offhook)==> answer CS call!"

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3026
    :cond_18
    if-eqz v0, :cond_19

    if-eqz v1, :cond_19

    .line 3028
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_4

    .line 3031
    :cond_19
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_4

    .line 3039
    :cond_1a
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3057
    .end local v5           #phoneType:I
    :cond_1b
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 3060
    .restart local v5       #phoneType:I
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v8

    if-eqz v8, :cond_20

    .line 3062
    if-nez v3, :cond_1d

    .line 3064
    if-nez v0, :cond_1c

    if-eqz v1, :cond_4

    :cond_1c
    sget-boolean v7, Lcom/android/phone/PhoneUtils;->sIsEndCallRequested:Z

    if-nez v7, :cond_4

    .line 3065
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 3066
    const-string v7, "handleHeadsetHook  (CS: Offhook, PS:Idle)==> Hangup CS call!"

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3067
    sget-object v7, Lcom/android/phone/PhoneUtils;->mHandler:Lcom/android/phone/PhoneUtils$mmHandler;

    if-eqz v7, :cond_4

    .line 3068
    sput-boolean v6, Lcom/android/phone/PhoneUtils;->sIsEndCallRequested:Z

    .line 3069
    sget-object v7, Lcom/android/phone/PhoneUtils;->mHandler:Lcom/android/phone/PhoneUtils$mmHandler;

    invoke-virtual {v7, v11, v12, v13}, Lcom/android/phone/PhoneUtils$mmHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 3073
    :cond_1d
    if-ne v3, v10, :cond_4

    .line 3075
    if-nez v0, :cond_1e

    if-nez v1, :cond_1e

    .line 3078
    invoke-static {p0, v7}, Lcom/android/phone/PhoneUtils;->sendHeadsetPressedBroadcast(Lcom/android/internal/telephony/Phone;Z)V

    .line 3079
    const-string v7, "handleHeadsetHook  (CS: Idle, PS:Offhook)==> Hangup PS call!"

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3080
    :cond_1e
    if-eqz v0, :cond_4

    .line 3082
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMuteTxRx()Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 3085
    invoke-static {p0, v7}, Lcom/android/phone/PhoneUtils;->sendHeadsetPressedBroadcast(Lcom/android/internal/telephony/Phone;Z)V

    .line 3086
    const-string v7, "handleHeadsetHook  (b->CS: Offhook, f->PS:Offhook)==> Hangup PS call!"

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3089
    :cond_1f
    sget-boolean v7, Lcom/android/phone/PhoneUtils;->sIsEndCallRequested:Z

    if-nez v7, :cond_4

    .line 3090
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 3091
    const-string v7, "handleHeadsetHook  (f->CS: Offhook, b->PS:Offhook)==> Hangup CS call!"

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3092
    sget-object v7, Lcom/android/phone/PhoneUtils;->mHandler:Lcom/android/phone/PhoneUtils$mmHandler;

    if-eqz v7, :cond_4

    .line 3093
    sput-boolean v6, Lcom/android/phone/PhoneUtils;->sIsEndCallRequested:Z

    .line 3094
    sget-object v7, Lcom/android/phone/PhoneUtils;->mHandler:Lcom/android/phone/PhoneUtils$mmHandler;

    invoke-virtual {v7, v11, v12, v13}, Lcom/android/phone/PhoneUtils$mmHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 3126
    :cond_20
    if-nez v0, :cond_21

    if-eqz v1, :cond_0

    .line 3141
    :cond_21
    sget-boolean v7, Lcom/android/phone/PhoneUtils;->sIsEndCallRequested:Z

    if-nez v7, :cond_4

    .line 3142
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 3143
    sget-object v7, Lcom/android/phone/PhoneUtils;->mHandler:Lcom/android/phone/PhoneUtils$mmHandler;

    if-eqz v7, :cond_4

    .line 3144
    sput-boolean v6, Lcom/android/phone/PhoneUtils;->sIsEndCallRequested:Z

    .line 3145
    sget-object v7, Lcom/android/phone/PhoneUtils;->mHandler:Lcom/android/phone/PhoneUtils$mmHandler;

    invoke-virtual {v7, v11, v12, v13}, Lcom/android/phone/PhoneUtils$mmHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4
.end method

.method static hangup(Lcom/android/internal/telephony/Connection;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 976
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 978
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 979
    .local v1, mPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gsm.lockscreen.mode.status"

    const-string v4, "false"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 980
    const-string v2, ">>>hangup(c),   set lockscreen mode :false "

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 985
    .end local v1           #mPhone:Lcom/android/internal/telephony/Phone;
    :cond_0
    if-eqz p0, :cond_1

    .line 986
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    :cond_1
    :goto_0
    return-void

    .line 988
    :catch_0
    move-exception v0

    .line 989
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection hangup: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static hangup(Lcom/android/internal/telephony/Call;)Z
    .locals 6
    .parameter "call"

    .prologue
    .line 932
    const-string v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[embedded] hangup call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 937
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 938
    .local v2, mPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gsm.lockscreen.mode.status"

    const-string v5, "false"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 939
    const-string v3, ">>>hangup(call),   set lockscreen mode :false "

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 945
    .end local v2           #mPhone:Lcom/android/internal/telephony/Phone;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isTabletPhoneEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 946
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->addCalllog(Lcom/android/internal/telephony/Call;)V

    .line 950
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 952
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 954
    const-string v3, "- hangup(Call): hangupForegroundResumeBackground..."

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 955
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/CallManager;->hangupForegroundResumeBackground(Lcom/android/internal/telephony/Call;)V

    .line 961
    :goto_0
    const/4 v3, 0x1

    .line 966
    .end local v0           #cm:Lcom/android/internal/telephony/CallManager;
    :goto_1
    return v3

    .line 957
    .restart local v0       #cm:Lcom/android/internal/telephony/CallManager;
    :cond_2
    const-string v3, "- hangup(Call): regular hangup()..."

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 958
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 962
    .end local v0           #cm:Lcom/android/internal/telephony/CallManager;
    :catch_0
    move-exception v1

    .line 963
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call hangup: caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 966
    const/4 v3, 0x0

    goto :goto_1
.end method

.method static hangup(Lcom/android/internal/telephony/CallManager;)Z
    .locals 7
    .parameter "cm"

    .prologue
    .line 810
    const/4 v2, 0x0

    .line 811
    .local v2, hungup:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 812
    .local v3, ringing:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 813
    .local v1, fg:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 815
    .local v0, bg:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1

    .line 816
    const-string v4, "hangup(): hanging up ringing call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 817
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .line 834
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 835
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gsm.lockscreen.mode.status"

    const-string v6, "false"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 837
    const-string v4, ">>>hangup(),   set lockscreen mode :false "

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 841
    :cond_0
    return v2

    .line 818
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_2

    .line 819
    const-string v4, "hangup(): hanging up foreground call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 820
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    goto :goto_0

    .line 821
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_3

    .line 822
    const-string v4, "hangup(): hanging up background call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 823
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    goto :goto_0

    .line 830
    :cond_3
    const-string v4, "hangup(): no active call to hang up"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static hangupActiveCall(Lcom/android/internal/telephony/Call;)Z
    .locals 1
    .parameter "foreground"

    .prologue
    .line 889
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method static hangupAll(Lcom/android/internal/telephony/CallManager;Landroid/os/Message;)Z
    .locals 4
    .parameter "cm"
    .parameter "result"

    .prologue
    .line 751
    if-eqz p0, :cond_1

    .line 752
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v2

    .line 753
    .local v2, phones:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 754
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    .line 755
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->requestReleaseAllVoiceCalls(Landroid/os/Message;)V

    goto :goto_0

    .line 759
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    .end local v2           #phones:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method static hangupAll(Lcom/android/internal/telephony/Phone;Landroid/os/Message;)Z
    .locals 1
    .parameter "phone"
    .parameter "result"

    .prologue
    .line 743
    if-eqz p0, :cond_0

    .line 744
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->requestReleaseAllVoiceCalls(Landroid/os/Message;)V

    .line 747
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static hangupAllConnection(Lcom/android/internal/telephony/Call;)Z
    .locals 5
    .parameter "call"

    .prologue
    .line 4239
    const/4 v3, 0x0

    .line 4241
    .local v3, result:Z
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4243
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 4244
    .local v1, conns:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 4245
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4247
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 4251
    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    :cond_1
    const/4 v3, 0x1

    .line 4254
    .end local v1           #conns:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    return v3
.end method

.method static hangupFromNotification(Lcom/android/internal/telephony/CallManager;)Z
    .locals 4
    .parameter "cm"

    .prologue
    .line 774
    const/4 v2, 0x0

    .line 776
    .local v2, hungup:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 777
    .local v1, fg:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 783
    .local v0, bg:Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_1

    .line 785
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupAllConnection(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .line 793
    :cond_0
    :goto_0
    return v2

    .line 786
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_0

    .line 788
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupAllConnection(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    goto :goto_0
.end method

.method static hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z
    .locals 1
    .parameter "background"

    .prologue
    .line 894
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method static hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z
    .locals 5
    .parameter "phone"

    .prologue
    .line 903
    const/4 v2, 0x0

    .line 904
    .local v2, hungUpRingingCall:Z
    const/4 v1, 0x0

    .line 905
    .local v1, hungUpFgCall:Z
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 906
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 909
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_0

    .line 910
    const-string v4, "hangupRingingAndActive: Hang up Ringing Call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 911
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .line 915
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1

    .line 916
    const-string v4, "hangupRingingAndActive: Hang up Foreground Call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 917
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    .line 920
    :cond_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static hangupRingingCall(Lcom/android/internal/telephony/Call;)Z
    .locals 5
    .parameter "ringing"

    .prologue
    .line 848
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 849
    .local v1, phoneType:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 851
    .local v2, state:Lcom/android/internal/telephony/Call$State;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    .line 853
    const-string v3, "hangupRingingCall(): regular incoming call: hangup()"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 854
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    .line 883
    :goto_0
    return v3

    .line 855
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2

    .line 862
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 866
    const-string v3, "hangupRingingCall(): CDMA-specific call-waiting hangup"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 867
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 868
    .local v0, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->sendCdmaCallWaitingReject()V

    .line 869
    const/4 v3, 0x1

    goto :goto_0

    .line 873
    .end local v0           #notifier:Lcom/android/phone/CallNotifier;
    :cond_1
    const-string v3, "hangupRingingCall(): call-waiting call: hangup()"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 874
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    goto :goto_0

    .line 882
    :cond_2
    const-string v3, "PhoneUtils"

    const-string v4, "hangupRingingCall: no INCOMING or WAITING call"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static final hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z
    .locals 3
    .parameter "call"

    .prologue
    .line 3198
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 3199
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3200
    const/4 v2, 0x1

    .line 3203
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static hasDisconnectedConnections(Lcom/android/internal/telephony/Phone;)Z
    .locals 1
    .parameter "phone"

    .prologue
    .line 3183
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static hasPhoneProviderExtras(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 3407
    if-nez p0, :cond_1

    .line 3413
    :cond_0
    :goto_0
    return v2

    .line 3410
    :cond_1
    const-string v3, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3411
    .local v1, name:Ljava/lang/String;
    const-string v3, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3413
    .local v0, gatewayUri:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method static hasState(Ljava/util/List;Lcom/android/internal/telephony/Call$State;)Z
    .locals 5
    .parameter
    .parameter "state"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;",
            "Lcom/android/internal/telephony/Call$State;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 4493
    .local p0, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v1, 0x0

    .line 4495
    .local v1, hasState:Z
    if-eqz p0, :cond_1

    .line 4496
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 4497
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 4498
    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    .line 4500
    :goto_0
    if-eqz v1, :cond_0

    .line 4507
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return v1

    .line 4498
    .restart local v0       #call:Lcom/android/internal/telephony/Call;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hyphenNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 4593
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isLegalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4595
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4596
    .local v0, spannableString:Landroid/text/SpannableStringBuilder;
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->formatNanpNumber(Landroid/text/Editable;)V

    .line 4597
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4599
    .end local v0           #spannableString:Landroid/text/SpannableStringBuilder;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V
    .locals 4
    .parameter "cm"

    .prologue
    .line 433
    sget-object v1, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    if-nez v1, :cond_0

    .line 434
    new-instance v1, Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/phone/PhoneUtils$ConnectionHandler;-><init>(Lcom/android/phone/PhoneUtils$1;)V

    sput-object v1, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    .line 438
    :cond_0
    sget-object v1, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2, p0}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 440
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ussd.IExtendedNetworkService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtils;->ExtendedNetworkServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 445
    sget-object v1, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const/4 v2, -0x2

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 448
    return-void
.end method

.method public static initializePhontUtilsHandler()V
    .locals 2

    .prologue
    .line 456
    sget-object v0, Lcom/android/phone/PhoneUtils;->mHandler:Lcom/android/phone/PhoneUtils$mmHandler;

    if-nez v0, :cond_0

    .line 457
    new-instance v0, Lcom/android/phone/PhoneUtils$mmHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneUtils$mmHandler;-><init>(Lcom/android/phone/PhoneUtils$1;)V

    sput-object v0, Lcom/android/phone/PhoneUtils;->mHandler:Lcom/android/phone/PhoneUtils$mmHandler;

    .line 459
    :cond_0
    return-void
.end method

.method public static isCdmaCallsOnly()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 5123
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 5124
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isConferenceCall(Lcom/android/internal/telephony/Call;)Z
    .locals 6
    .parameter "call"

    .prologue
    const/4 v4, 0x1

    .line 2561
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2562
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 2563
    .local v2, phoneType:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    .line 2564
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v3

    .line 2565
    .local v3, state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v3, v5, :cond_0

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v5, :cond_2

    iget-object v5, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2576
    .end local v3           #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_0
    :goto_0
    return v4

    .line 2571
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 2572
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v4, :cond_0

    .line 2576
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static isDialedNumberVzwFeatureCode()Z
    .locals 2

    .prologue
    .line 4976
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMMINumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/phone/PhoneUtils;->mMMINumber:Ljava/lang/String;

    const-string v1, "*67"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/phone/PhoneUtils;->mMMINumber:Ljava/lang/String;

    const-string v1, "*82"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLegalPhoneNumber(Ljava/lang/String;)Z
    .locals 10
    .parameter "phonenumber"

    .prologue
    const/4 v4, 0x1

    const/16 v9, 0x2b

    const/16 v8, 0x31

    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 4609
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 4611
    const/4 v1, -0x1

    .line 4612
    .local v1, nPausePosition:I
    const/4 v0, 0x0

    .line 4613
    .local v0, nDigitNum:I
    const/4 v2, 0x0

    .line 4614
    .local v2, p:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 4615
    const/16 v5, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v5, v6, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x39

    if-le v5, v6, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_3

    if-nez v2, :cond_3

    :cond_1
    if-ne v1, v7, :cond_3

    .line 4616
    add-int/lit8 v0, v0, 0x1

    .line 4624
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4617
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    const/16 v6, 0x70

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    if-eq v5, v6, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    const/16 v6, 0x77

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    if-ne v5, v6, :cond_a

    :cond_4
    if-ne v1, v7, :cond_a

    .line 4619
    move v1, v2

    .line 4627
    :cond_5
    if-lez v0, :cond_9

    .line 4629
    if-ne v1, v7, :cond_b

    const-string v5, "1nnnnnnnnnn"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v0, v5, :cond_6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v8, :cond_8

    :cond_6
    const-string v5, "nnnnnnnnnn"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v0, v5, :cond_7

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_8

    :cond_7
    const-string v5, "+1nnnnnnnnnn"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v0, v5, :cond_b

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_b

    :cond_8
    move v3, v4

    .line 4640
    .end local v0           #nDigitNum:I
    .end local v1           #nPausePosition:I
    .end local v2           #p:I
    :cond_9
    :goto_1
    return v3

    .line 4621
    .restart local v0       #nDigitNum:I
    .restart local v1       #nPausePosition:I
    .restart local v2       #p:I
    :cond_a
    const/16 v5, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v5, v6, :cond_9

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x39

    if-le v5, v6, :cond_2

    goto :goto_1

    .line 4633
    :cond_b
    if-eq v1, v7, :cond_9

    add-int/lit8 v5, v0, -0x1

    const-string v6, "1nnnnnnnnnn"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v5, v6, :cond_c

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v8, :cond_e

    :cond_c
    add-int/lit8 v5, v0, -0x1

    const-string v6, "nnnnnnnnnn"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v5, v6, :cond_d

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_e

    :cond_d
    add-int/lit8 v5, v0, -0x1

    const-string v6, "+1nnnnnnnnnn"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v5, v6, :cond_9

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_9

    :cond_e
    move v3, v4

    .line 4636
    goto :goto_1
.end method

.method public static isMuteTxRx()Z
    .locals 1

    .prologue
    .line 4360
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->isTXRXMute:Z

    return v0
.end method

.method static isNoiseSuppressionOn(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 2716
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2726
    :cond_0
    :goto_0
    return v2

    .line 2720
    :cond_1
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2721
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v3, "noise_suppression"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2723
    .local v1, noiseSuppression:Ljava/lang/String;
    const-string v3, "off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2726
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .parameter "phone"

    .prologue
    .line 3550
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/phone/TelephonyCapabilities;->supportsEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3556
    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3558
    .local v0, ecmMode:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3559
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3562
    .end local v0           #ecmMode:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPsVideo()Z
    .locals 1

    .prologue
    .line 4412
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->mIsPsVideo:Z

    return v0
.end method

.method public static isPureGsmUmtsPhone(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 5064
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 5066
    .local v0, teleMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-ne v2, v1, :cond_1

    :cond_0
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-ne v2, v1, :cond_2

    .line 5069
    :cond_1
    const/4 v1, 0x0

    .line 5071
    :cond_2
    return v1
.end method

.method public static isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 3601
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isRoutableViaGateway(Ljava/lang/String;)Z
    .locals 2
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 3513
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3521
    :cond_0
    :goto_0
    return v0

    .line 3516
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3517
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3520
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3521
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static isSpeakerOn(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 2673
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2674
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    return v1
.end method

.method static isVoipSupported()Z
    .locals 1

    .prologue
    .line 3617
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->sVoipSupported:Z

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 3743
    const-string v0, "PhoneUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3744
    return-void
.end method

.method static mergeCalls()V
    .locals 1

    .prologue
    .line 1395
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    .line 1396
    return-void
.end method

.method static mergeCalls(Lcom/android/internal/telephony/CallManager;)V
    .locals 6
    .parameter "cm"

    .prologue
    .line 1399
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1430
    :cond_0
    :goto_0
    return-void

    .line 1402
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 1403
    .local v2, phoneType:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1404
    const-string v3, "mergeCalls(): CDMA..."

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1405
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1406
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v3

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v4, :cond_0

    .line 1419
    const-string v3, "- sending flash..."

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1420
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 1424
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_2
    :try_start_0
    const-string v3, "mergeCalls(): calling cm.conference()..."

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1425
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CallManager;->conference(Lcom/android/internal/telephony/Call;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1426
    :catch_0
    move-exception v1

    .line 1427
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mergeCalls: caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"

    .prologue
    const v4, 0x7f0e0222

    .line 3357
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v1, p2

    .line 3393
    .end local p2
    .local v1, number:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 3365
    .end local v1           #number:Ljava/lang/String;
    .restart local p2
    :cond_1
    const v2, 0x7f0e03fa

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne p3, v2, :cond_2

    .line 3367
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 3368
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    iput v2, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 3376
    :cond_2
    iget v2, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v2, v3, :cond_3

    iget v2, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-eq v2, p3, :cond_5

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne p3, v2, :cond_5

    .line 3379
    :cond_3
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->checkCnapSpecialCases(Ljava/lang/String;)I

    move-result v0

    .line 3380
    .local v0, cnapSpecialCase:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    .line 3382
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v0, v2, :cond_6

    .line 3383
    const v2, 0x7f0e0223

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 3389
    :cond_4
    :goto_1
    iput v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .end local v0           #cnapSpecialCase:I
    :cond_5
    move-object v1, p2

    .line 3393
    .end local p2
    .restart local v1       #number:Ljava/lang/String;
    goto :goto_0

    .line 3384
    .end local v1           #number:Ljava/lang/String;
    .restart local v0       #cnapSpecialCase:I
    .restart local p2
    :cond_6
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne v0, v2, :cond_4

    .line 3385
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method static muteRingingCall(Lcom/android/internal/telephony/Phone;)Z
    .locals 5
    .parameter "phone"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3821
    if-nez p0, :cond_1

    .line 3848
    :cond_0
    :goto_0
    return v2

    .line 3825
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3826
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v1, v2, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 3827
    .local v1, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3831
    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 3832
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    .line 3834
    .local v0, bluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v0, :cond_2

    .line 3835
    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->ignoreRing()V

    .line 3838
    .end local v0           #bluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    :cond_2
    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->stopCallWaitingToneIfNecessary()Z

    .line 3841
    sget-boolean v2, Lcom/android/phone/PhoneUtils;->RESUME_MUSIC:Z

    if-eqz v2, :cond_3

    .line 3842
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->toResumeMusicForATT(Z)V

    :cond_3
    move v2, v3

    .line 3845
    goto :goto_0
.end method

.method static okToAddCall(Lcom/android/internal/telephony/CallManager;)Z
    .locals 11
    .parameter "cm"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3268
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 3271
    .local v6, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v8, v9

    .line 3305
    :cond_0
    :goto_0
    return v8

    .line 3275
    :cond_1
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 3276
    .local v7, phoneType:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 3277
    .local v2, fgCallState:Lcom/android/internal/telephony/Call$State;
    const/4 v10, 0x2

    if-ne v7, v10, :cond_4

    .line 3281
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 3287
    .local v1, app:Lcom/android/phone/PhoneApp;
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v10

    if-nez v10, :cond_3

    move v5, v8

    .line 3288
    .local v5, hasRingingCall:Z
    :goto_1
    if-nez v5, :cond_2

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v10, :cond_0

    sget-object v10, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v10, :cond_0

    sget-object v10, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v10, :cond_0

    :cond_2
    move v8, v9

    goto :goto_0

    .end local v5           #hasRingingCall:Z
    :cond_3
    move v5, v9

    .line 3287
    goto :goto_1

    .line 3293
    .end local v1           #app:Lcom/android/phone/PhoneApp;
    :cond_4
    if-eq v7, v8, :cond_5

    const/4 v10, 0x3

    if-ne v7, v10, :cond_8

    .line 3300
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v5

    .line 3301
    .restart local v5       #hasRingingCall:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    .line 3302
    .local v3, hasActiveCall:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    .line 3303
    .local v4, hasHoldingCall:Z
    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    move v0, v8

    .line 3305
    .local v0, allLinesTaken:Z
    :goto_2
    if-nez v5, :cond_6

    if-nez v0, :cond_6

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v10, :cond_0

    sget-object v10, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v10, :cond_0

    sget-object v10, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v10, :cond_0

    :cond_6
    move v8, v9

    goto :goto_0

    .end local v0           #allLinesTaken:Z
    :cond_7
    move v0, v9

    .line 3303
    goto :goto_2

    .line 3311
    .end local v3           #hasActiveCall:Z
    .end local v4           #hasHoldingCall:Z
    .end local v5           #hasRingingCall:Z
    :cond_8
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected phone type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method static okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z
    .locals 6
    .parameter "cm"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3242
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    if-nez v4, :cond_1

    move v2, v3

    .line 3257
    :cond_0
    :goto_0
    return v2

    .line 3245
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 3246
    .local v1, phoneType:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    .line 3248
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3249
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_2

    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0

    .line 3257
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/CallManager;->canConference(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method static okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z
    .locals 6
    .parameter "cm"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3215
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 3216
    .local v1, phoneType:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 3219
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3220
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_1

    .line 3229
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_0
    :goto_0
    return v2

    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    :cond_1
    move v2, v3

    .line 3220
    goto :goto_0

    .line 3222
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_2
    if-eq v1, v2, :cond_3

    const/4 v4, 0x3

    if-ne v1, v4, :cond_5

    .line 3229
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_0

    :cond_4
    move v2, v3

    goto :goto_0

    .line 3233
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static onlyRinging(Lcom/android/internal/telephony/CallManager;)Z
    .locals 1
    .parameter "cm"

    .prologue
    .line 4304
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onlyRinging(Lcom/android/internal/telephony/Phone;)Z
    .locals 5
    .parameter "phone"

    .prologue
    .line 4316
    const/4 v2, 0x0

    .line 4317
    .local v2, onlyRing:Z
    if-eqz p0, :cond_0

    .line 4318
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 4319
    .local v3, ringing:Lcom/android/internal/telephony/Call;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4320
    .local v1, fg:Lcom/android/internal/telephony/Call;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4322
    .local v0, bg:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 4327
    .end local v0           #bg:Lcom/android/internal/telephony/Call;
    .end local v1           #fg:Lcom/android/internal/telephony/Call;
    .end local v3           #ringing:Lcom/android/internal/telephony/Call;
    :cond_0
    :goto_0
    return v2

    .line 4322
    .restart local v0       #bg:Lcom/android/internal/telephony/Call;
    .restart local v1       #fg:Lcom/android/internal/telephony/Call;
    .restart local v3       #ringing:Lcom/android/internal/telephony/Call;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static parseInternationalDialingNumber(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 7
    .parameter "number"
    .parameter "mPhone"

    .prologue
    const/4 v6, 0x0

    .line 5085
    sget-boolean v4, Lcom/android/phone/HtcFeatureList;->FEATURE_INTERNATIONAL_DIALING:Z

    if-eqz v4, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_0

    const-string v4, "+82"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5119
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 5093
    .restart local p0
    :cond_1
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 5096
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v4, "international_dialing_key"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 5098
    .local v1, enabled:Z
    if-eqz v1, :cond_0

    .line 5105
    const-string v4, "international_dialing_number_key"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5106
    .local v0, code:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5113
    .local v2, parsedNumber:Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "cm"
    .parameter "scheme"
    .parameter "number"
    .parameter "primarySipUri"

    .prologue
    .line 3578
    if-eqz p3, :cond_0

    .line 3579
    invoke-static {p0, p3}, Lcom/android/phone/PhoneUtils;->getSipPhoneFromUri(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3580
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 3582
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0
.end method

.method static placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I
    .locals 2
    .parameter "phone"
    .parameter "number"
    .parameter "contactRef"

    .prologue
    .line 1079
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)I
    .locals 13
    .parameter "phone"
    .parameter "number"
    .parameter "contactRef"
    .parameter "personId"
    .parameter "numberType"

    .prologue
    .line 1086
    const/4 v8, 0x0

    .line 1089
    .local v8, status:I
    const-string v10, "*147359*682*"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    sget-boolean v10, Lcom/android/phone/PhoneUtils;->SUPPORT_OTA:Z

    if-eqz v10, :cond_0

    .line 1090
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->triggerOTA(Lcom/android/internal/telephony/Phone;)V

    move v10, v8

    .line 1203
    :goto_0
    return v10

    .line 1095
    :cond_0
    :try_start_0
    const-string v10, "PhoneUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[embedded]placeCall: \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "tel:xxx-xxx-xxxx"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const/4 v2, 0x0

    .line 1105
    .local v2, cn:Lcom/android/internal/telephony/Connection;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 1106
    .local v6, phoneType:I
    const/4 v10, 0x2

    if-ne v6, v10, :cond_4

    .line 1107
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    .line 1108
    .local v7, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v10, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v7, v10, :cond_1

    invoke-static {}, Lcom/android/phone/HtcCdmaPhoneApp;->isOTAinProgress()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1111
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    .line 1112
    sput-object p1, Lcom/android/phone/PhoneUtils;->mHtcCdmaOtaEmergencyCall:Ljava/lang/String;

    .line 1113
    sput-object p2, Lcom/android/phone/PhoneUtils;->mHtcCdmaOtaEmergencyCallUri:Landroid/net/Uri;

    .line 1114
    const/4 v10, 0x0

    goto :goto_0

    .line 1117
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10, p0, p1}, Lcom/android/internal/telephony/CallManager;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 1128
    .end local v7           #state:Lcom/android/internal/telephony/Phone$State;
    :goto_1
    if-nez v2, :cond_6

    .line 1129
    const/4 v10, 0x1

    if-ne v6, v10, :cond_5

    .line 1132
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1134
    const-string v10, "**133"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "#"

    invoke-virtual {p1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1136
    sput-object p1, Lcom/android/phone/PhoneUtils;->mMMICodeNumber:Ljava/lang/String;

    .line 1137
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/phone/PhoneUtils;->mIsCTMMICode:Z

    .line 1142
    :cond_2
    const/4 v8, 0x1

    .line 1144
    sget-object v10, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v10, :cond_3

    .line 1146
    :try_start_1
    sget-object v10, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v10, p1}, Lcom/android/internal/telephony/IExtendedNetworkService;->setMmiString(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2           #cn:Lcom/android/internal/telephony/Connection;
    .end local v6           #phoneType:I
    :cond_3
    :goto_2
    move v10, v8

    .line 1203
    goto :goto_0

    .line 1122
    .restart local v2       #cn:Lcom/android/internal/telephony/Connection;
    .restart local v6       #phoneType:I
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10, p0, p1}, Lcom/android/internal/telephony/CallManager;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    goto :goto_1

    .line 1148
    :catch_0
    move-exception v4

    .line 1149
    .local v4, e:Landroid/os/RemoteException;
    const/4 v10, 0x0

    sput-object v10, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1198
    .end local v2           #cn:Lcom/android/internal/telephony/Connection;
    .end local v4           #e:Landroid/os/RemoteException;
    .end local v6           #phoneType:I
    :catch_1
    move-exception v5

    .line 1199
    .local v5, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v10, "PhoneUtils"

    const-string v11, "Exception from phone.dial()"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1200
    const/4 v8, 0x2

    goto :goto_2

    .line 1153
    .end local v5           #ex:Lcom/android/internal/telephony/CallStateException;
    .restart local v2       #cn:Lcom/android/internal/telephony/Connection;
    .restart local v6       #phoneType:I
    :cond_5
    const/4 v8, 0x2

    goto :goto_2

    .line 1156
    :cond_6
    :try_start_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 1158
    .local v1, app:Lcom/android/phone/PhoneApp;
    const/4 v10, 0x2

    if-ne v6, v10, :cond_7

    .line 1159
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneApp;)V

    .line 1167
    :cond_7
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const-string v3, "content"

    .line 1168
    .local v3, content:Ljava/lang/String;
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1169
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v9

    .line 1170
    .local v9, userDataObject:Ljava/lang/Object;
    if-nez v9, :cond_9

    .line 1171
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 1193
    .end local v9           #userDataObject:Ljava/lang/Object;
    :cond_8
    :goto_3
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 1196
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->activateSpeakerIfDocked(Lcom/android/internal/telephony/Phone;)V

    goto :goto_2

    .line 1176
    .restart local v9       #userDataObject:Ljava/lang/Object;
    :cond_9
    instance-of v10, v9, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v10, :cond_a

    .line 1177
    check-cast v9, Lcom/android/internal/telephony/CallerInfo;

    .end local v9           #userDataObject:Ljava/lang/Object;
    iput-object p2, v9, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    goto :goto_3

    .line 1179
    .restart local v9       #userDataObject:Ljava/lang/Object;
    :cond_a
    check-cast v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v9           #userDataObject:Ljava/lang/Object;
    iget-object v10, v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object p2, v10, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    goto :goto_3

    .line 1186
    :cond_b
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, -0x1

    move/from16 v0, p4

    if-eq v10, v0, :cond_8

    .line 1188
    :cond_c
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-static {v10, v2, v11, v12, v0}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Ljava/lang/String;)Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method

.method static placeCallVia(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)I
    .locals 11
    .parameter "context"
    .parameter "phone"
    .parameter "number"
    .parameter "contactRef"
    .parameter "gatewayUri"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 1235
    if-eqz p4, :cond_0

    const-string v9, "tel"

    invoke-virtual {p4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1236
    :cond_0
    const-string v8, "PhoneUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported URL:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    :goto_0
    return v7

    .line 1245
    :cond_1
    invoke-virtual {p4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 1248
    .local v3, gatewayNumber:Ljava/lang/String;
    :try_start_0
    invoke-interface {p1, v3}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1254
    .local v1, connection:Lcom/android/internal/telephony/Connection;
    :goto_1
    if-nez v1, :cond_2

    .line 1255
    const-string v8, "PhoneUtils"

    const-string v9, "Got null connection."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1249
    .end local v1           #connection:Lcom/android/internal/telephony/Connection;
    :catch_0
    move-exception v2

    .line 1250
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v9, "PhoneUtils"

    const-string v10, "Exception dialing gateway"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1251
    const/4 v1, 0x0

    .restart local v1       #connection:Lcom/android/internal/telephony/Connection;
    goto :goto_1

    .line 1259
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1260
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    if-ne v9, v7, :cond_7

    const/4 v6, 0x1

    .line 1262
    .local v6, phoneIsCdma:Z
    :goto_2
    if-eqz v6, :cond_3

    .line 1263
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneApp;)V

    .line 1267
    :cond_3
    if-eqz v6, :cond_4

    .line 1268
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->formatDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1270
    :cond_4
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1271
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1272
    move-object v5, p2

    .line 1273
    .local v5, origDialString:Ljava/lang/String;
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1278
    const/4 v4, 0x0

    .line 1280
    .local v4, info:Lcom/android/internal/telephony/CallerInfo;
    const-string v7, "content"

    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1281
    invoke-static {p0, p3}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    .line 1287
    :cond_5
    if-nez v4, :cond_6

    .line 1288
    invoke-static {p0, p2}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    .line 1290
    :cond_6
    iput-object p2, v4, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1291
    iput-object v5, v4, Lcom/android/internal/telephony/CallerInfo;->OrigDialString:Ljava/lang/String;

    .line 1293
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 1295
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    move v7, v8

    .line 1296
    goto :goto_0

    .end local v4           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v5           #origDialString:Ljava/lang/String;
    .end local v6           #phoneIsCdma:Z
    :cond_7
    move v6, v8

    .line 1260
    goto :goto_2
.end method

.method public static playEmergencyCallToneAlert(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x2

    .line 4871
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 4873
    .local v1, mAudioManager:Landroid/media/AudioManager;
    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    div-int v3, v4, v5

    .line 4877
    .local v3, volume:I
    new-instance v2, Landroid/media/ToneGenerator;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 4882
    .local v2, toneGenerator:Landroid/media/ToneGenerator;
    const/16 v4, 0x6b

    invoke-virtual {v2, v4}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 4885
    const-wide/16 v4, 0x4b0

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4891
    :goto_0
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 4892
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->release()V

    .line 4893
    return-void

    .line 4887
    :catch_0
    move-exception v0

    .line 4889
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v4, "OutgoingCallBroadcaster exception"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static pluscodeDialingParser(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 9
    .parameter "number"
    .parameter "mPhone"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 4820
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_1

    .line 4862
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 4824
    .restart local p0
    :cond_1
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4825
    .local v4, tempString:Landroid/text/SpannableStringBuilder;
    move-object v1, v4

    .line 4827
    .local v1, pluscodenumber:Landroid/text/Editable;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 4829
    .local v2, sp:Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 4830
    .local v0, functionEnable:Z
    sget-boolean v5, Lcom/android/phone/HtcFeatureList;->FEATURE_PLUS_CODE_DIALING:Z

    if-ne v5, v7, :cond_2

    .line 4831
    const/4 v0, 0x1

    .line 4833
    :cond_2
    const-string v5, "cdma_plus_code_dialing_key"

    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4836
    const-string v3, "011"

    .line 4838
    .local v3, tPlusCodeString:Ljava/lang/String;
    if-ne v0, v7, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 4839
    const-string v5, "cdma_plus_code_dialing_number_key"

    const-string v6, "011"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4842
    if-nez v3, :cond_3

    .line 4843
    const-string v3, "011"

    .line 4846
    :cond_3
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_4

    .line 4848
    if-nez v0, :cond_5

    .line 4858
    :cond_4
    :goto_1
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4850
    :cond_5
    if-ne v0, v7, :cond_6

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_6

    .line 4851
    invoke-interface {v1, v8, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    .line 4854
    :cond_6
    invoke-interface {v1, v8, v7, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1
.end method

.method static restoreMuteState()Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 1355
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1356
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1391
    .local v0, c:Lcom/android/internal/telephony/Connection;
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    :goto_0
    return-object v3

    .line 1358
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1361
    .restart local v1       #phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1364
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_5

    .line 1366
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 1369
    .local v2, phoneType:I
    const/4 v3, 0x0

    .line 1375
    .local v3, shouldMute:Ljava/lang/Boolean;
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 1376
    sget-object v4, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #shouldMute:Ljava/lang/Boolean;
    check-cast v3, Ljava/lang/Boolean;

    .line 1382
    .restart local v3       #shouldMute:Ljava/lang/Boolean;
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 1384
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1388
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto :goto_0

    .line 1378
    :cond_3
    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 1380
    :cond_4
    sget-object v4, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #shouldMute:Ljava/lang/Boolean;
    check-cast v3, Ljava/lang/Boolean;

    .restart local v3       #shouldMute:Ljava/lang/Boolean;
    goto :goto_1

    .line 1391
    .end local v2           #phoneType:I
    .end local v3           #shouldMute:Ljava/lang/Boolean;
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method static restoreNoiseSuppression(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 2704
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2712
    :cond_0
    :goto_0
    return-void

    .line 2709
    :cond_1
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->sIsNoiseSuppressionEnabled:Z

    if-eq v0, v1, :cond_0

    .line 2710
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->sIsNoiseSuppressionEnabled:Z

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnNoiseSuppression(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method static restoreSpeakerMode(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 2667
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    if-eq v0, v1, :cond_0

    .line 2668
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 2670
    :cond_0
    return-void
.end method

.method public static sendAudioFocusBroadcast(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Z)V
    .locals 4
    .parameter "context"
    .parameter "phone"
    .parameter "focusOn"

    .prologue
    .line 4369
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.REQUEST_INCALL_AUDIO_FOCUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4370
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "requestFocus"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/android/phone/PhoneUtils;->mReqTimeStamp:J

    .line 4372
    const-string v1, "timestamp"

    sget-wide v2, Lcom/android/phone/PhoneUtils;->mReqTimeStamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4373
    const-string v1, "clientName"

    const-string v2, "Phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4374
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 4375
    if-nez p2, :cond_0

    .line 4376
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/phone/PhoneUtils;->setMuteTxRXCSCall(Lcom/android/internal/telephony/Phone;Z)V

    .line 4377
    :cond_0
    return-void
.end method

.method public static sendBTButtonPressedBroadcast(Lcom/android/internal/telephony/Phone;Z)V
    .locals 1
    .parameter "phone"
    .parameter "isPickupCall"

    .prologue
    .line 4423
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/phone/PhoneUtils;->setBtnPressed(Lcom/android/internal/telephony/Phone;ZZ)V

    .line 4424
    return-void
.end method

.method static sendEmptyFlash(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .parameter "phone"

    .prologue
    .line 1305
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1306
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1307
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 1310
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 1313
    .end local v0           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_0
    return-void
.end method

.method public static sendHeadsetPressedBroadcast(Lcom/android/internal/telephony/Phone;Z)V
    .locals 1
    .parameter "phone"
    .parameter "isPickupCall"

    .prologue
    .line 4417
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/phone/PhoneUtils;->setBtnPressed(Lcom/android/internal/telephony/Phone;ZZ)V

    .line 4418
    return-void
.end method

.method static separateCall(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 1435
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->separate()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1439
    :goto_0
    return-void

    .line 1436
    :catch_0
    move-exception v0

    .line 1437
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "separateCall: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static setAudioMode()V
    .locals 1

    .prologue
    .line 2810
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 2811
    return-void
.end method

.method static setAudioMode(Lcom/android/internal/telephony/CallManager;)V
    .locals 5
    .parameter "cm"

    .prologue
    .line 2819
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 2820
    .local v1, context:Landroid/content/Context;
    const-string v4, "audio"

    invoke-virtual {v1, v4}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2822
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    .line 2823
    .local v3, modeBefore:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->setAudioMode()V

    .line 2824
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    .line 2826
    .local v2, modeAfter:I
    if-eq v3, v2, :cond_0

    .line 2833
    :cond_0
    return-void
.end method

.method private static setBtnPressed(Lcom/android/internal/telephony/Phone;ZZ)V
    .locals 6
    .parameter "phone"
    .parameter "isPickupCall"
    .parameter "isBT"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 4427
    const/4 v0, 0x0

    .line 4428
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_VoIP_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4430
    if-eqz p2, :cond_1

    const-string v0, "android.intent.action.VoIP_BLUETOOTH"

    .line 4433
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4434
    .local v2, voipIntent:Landroid/content/Intent;
    if-eqz p1, :cond_2

    .line 4435
    const-string v3, "Event"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4439
    :goto_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4442
    .end local v2           #voipIntent:Landroid/content/Intent;
    :cond_0
    if-eqz p2, :cond_3

    const-string v0, "android.intent.action.MERLIN_BLUETOOTH"

    .line 4445
    :goto_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4446
    .local v1, intent:Landroid/content/Intent;
    if-eqz p1, :cond_4

    .line 4447
    const-string v3, "Event"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4451
    :goto_3
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4452
    return-void

    .line 4430
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    const-string v0, "android.intent.action.VoIP_HEADSET"

    goto :goto_0

    .line 4437
    .restart local v2       #voipIntent:Landroid/content/Intent;
    :cond_2
    const-string v3, "Event"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 4442
    .end local v2           #voipIntent:Landroid/content/Intent;
    :cond_3
    const-string v0, "android.intent.action.MERLIN_HEADSET"

    goto :goto_2

    .line 4449
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_4
    const-string v3, "Event"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3
.end method

.method static setMute(Z)V
    .locals 5
    .parameter "muted"

    .prologue
    .line 2742
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 2745
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2746
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    .line 2751
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 2752
    .local v1, cn:Lcom/android/internal/telephony/Connection;
    sget-object v3, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2755
    :cond_1
    sget-object v3, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2757
    .end local v1           #cn:Lcom/android/internal/telephony/Connection;
    :cond_2
    return-void
.end method

.method private static setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V
    .locals 5
    .parameter "phone"
    .parameter "muted"

    .prologue
    .line 2764
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2765
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 2768
    .local v2, routeToAudioManager:Z
    sget-boolean v3, Lcom/android/phone/util/ConfigUtils;->ROUTE_AUDIO_TO_RIL:Z

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 2772
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2775
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 2780
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :goto_0
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->updateMuteNotification()V

    .line 2781
    return-void

    .line 2778
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    goto :goto_0
.end method

.method static setMuteTxCSCall(Lcom/android/internal/telephony/Phone;Z)V
    .locals 3
    .parameter "phone"
    .parameter "muted"

    .prologue
    .line 4333
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4338
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 4339
    return-void
.end method

.method static setMuteTxRXCSCall(Lcom/android/internal/telephony/Phone;Z)V
    .locals 5
    .parameter "phone"
    .parameter "muted"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4346
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4351
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setCSCallVolumeOn(Z)V

    .line 4352
    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 4353
    if-eqz p1, :cond_1

    .line 4354
    sput-boolean v3, Lcom/android/phone/PhoneUtils;->isTXRXMute:Z

    .line 4357
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 4352
    goto :goto_0

    .line 4356
    :cond_1
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->isTXRXMute:Z

    goto :goto_1
.end method

.method public static setPsSpeakerOn(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 4401
    sput-boolean p0, Lcom/android/phone/PhoneUtils;->mPsSpeakerOn:Z

    .line 4402
    return-void
.end method

.method public static setPsVideo(Z)V
    .locals 0
    .parameter "isVideo"

    .prologue
    .line 4408
    sput-boolean p0, Lcom/android/phone/PhoneUtils;->mIsPsVideo:Z

    .line 4409
    return-void
.end method

.method public static setSkypeCallState(I)V
    .locals 0
    .parameter "psCallState"

    .prologue
    .line 4387
    sput p0, Lcom/android/phone/PhoneUtils;->mSkypeCallState:I

    .line 4388
    return-void
.end method

.method public static setSkypeIncallScreenEnable(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 4394
    sput-boolean p0, Lcom/android/phone/PhoneUtils;->mSkypeArcScreenEnable:Z

    .line 4395
    return-void
.end method

.method private static setupEarPieceLedForMissedCall(ZLandroid/app/Notification;)V
    .locals 1
    .parameter "flash"
    .parameter "notification"

    .prologue
    .line 682
    if-eqz p0, :cond_0

    .line 683
    iget v0, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 684
    const v0, -0xff0100

    iput v0, p1, Landroid/app/Notification;->ledARGB:I

    .line 685
    const/16 v0, 0x1f4

    iput v0, p1, Landroid/app/Notification;->ledOnMS:I

    .line 686
    const/16 v0, 0x7d0

    iput v0, p1, Landroid/app/Notification;->ledOffMS:I

    .line 688
    :cond_0
    return-void
.end method

.method static setupFlashForMissedCall(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 2
    .parameter "context"
    .parameter "notification"

    .prologue
    .line 660
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->getMissCall(Landroid/content/Context;)Z

    move-result v0

    .line 661
    .local v0, needFlash:Z
    sget-boolean v1, Lcom/android/phone/PhoneUtils;->SUPPORT_JOGBALL:Z

    if-eqz v1, :cond_1

    .line 662
    invoke-static {v0, p1}, Lcom/android/phone/PhoneUtils;->setupJogballForMissedCall(ZLandroid/app/Notification;)V

    .line 667
    :goto_0
    sget-boolean v1, Lcom/android/phone/util/BuildUtils$CharmIndicator;->ENABLED:Z

    if-eqz v1, :cond_0

    .line 668
    const/4 v1, 0x7

    invoke-static {p0, p1, v1}, Lcom/android/phone/PhoneUtils;->flashCharmIndicator(Landroid/content/Context;Landroid/app/Notification;I)V

    .line 670
    :cond_0
    return-void

    .line 664
    :cond_1
    invoke-static {v0, p1}, Lcom/android/phone/PhoneUtils;->setupEarPieceLedForMissedCall(ZLandroid/app/Notification;)V

    goto :goto_0
.end method

.method static setupJogBallForIncomingCall(Z)Z
    .locals 5
    .parameter "on"

    .prologue
    .line 628
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 631
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/4 v2, 0x0

    .line 635
    .local v2, flash:Z
    if-eqz p0, :cond_0

    .line 636
    :try_start_0
    invoke-static {v0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->getIncomingCall(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 647
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 649
    invoke-static {v2, v0}, Lcom/android/phone/PhoneUtils;->flashLefForIncoming(ZLandroid/content/Context;)V

    .line 650
    const/4 v3, 0x1

    .line 654
    :goto_1
    return v3

    .line 639
    :catch_0
    move-exception v1

    .line 641
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    .line 643
    const-string v3, "PhoneUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 654
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static setupJogballForMissedCall(ZLandroid/app/Notification;)V
    .locals 2
    .parameter "flash"
    .parameter "notification"

    .prologue
    .line 674
    iget v0, p1, Landroid/app/Notification;->flags:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 676
    iget v1, p1, Landroid/app/Notification;->jogMode:I

    if-eqz p0, :cond_0

    const/4 v0, 0x7

    :goto_0
    or-int/2addr v0, v1

    iput v0, p1, Landroid/app/Notification;->jogMode:I

    .line 678
    return-void

    .line 676
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .locals 6
    .parameter "context"
    .parameter "call"
    .parameter "listener"
    .parameter "cookie"

    .prologue
    .line 2095
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2096
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/4 v1, 0x0

    .line 2097
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 2098
    .local v2, phoneType:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 2099
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2107
    :goto_0
    invoke-static {p0, v1, p2, p3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v3

    return-object v3

    .line 2100
    :cond_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 2102
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    .line 2104
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .locals 1
    .parameter "context"
    .parameter "c"
    .parameter "listener"
    .parameter "cookie"

    .prologue
    .line 2119
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Ljava/lang/String;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    return-object v0
.end method

.method static startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Ljava/lang/String;)Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .locals 11
    .parameter "context"
    .parameter "c"
    .parameter "listener"
    .parameter "cookie"
    .parameter "personId"

    .prologue
    .line 2131
    if-nez p1, :cond_0

    .line 2133
    new-instance v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v7}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 2134
    .local v7, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    const/4 v0, 0x0

    iput-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-object v8, v7

    .line 2401
    .end local v7           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .local v8, cit:Ljava/lang/Object;
    :goto_0
    return-object v8

    .line 2138
    .end local v8           #cit:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v10

    .line 2174
    .local v10, userDataObject:Ljava/lang/Object;
    instance-of v0, v10, Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 2178
    new-instance v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v7}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 2179
    .restart local v7       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    new-instance v0, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2180
    const/4 v0, -0x1

    check-cast v10, Landroid/net/Uri;

    .end local v10           #userDataObject:Ljava/lang/Object;
    sget-object v1, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v0, p0, v10, v1, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v0

    iput-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 2182
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 2184
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 2187
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 2188
    .local v2, number:Ljava/lang/String;
    :goto_1
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2189
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 2191
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2194
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v1, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p0, v0, v2, v1}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2197
    :cond_1
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2199
    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .end local v2           #number:Ljava/lang/String;
    :goto_2
    move-object v8, v7

    .line 2401
    .restart local v8       #cit:Ljava/lang/Object;
    goto :goto_0

    .line 2187
    .end local v8           #cit:Ljava/lang/Object;
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDialString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2203
    .end local v7           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v10       #userDataObject:Ljava/lang/Object;
    :cond_3
    if-nez v10, :cond_d

    .line 2206
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 2224
    .restart local v2       #number:Ljava/lang/String;
    :goto_3
    new-instance v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v7}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 2225
    .restart local v7       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    new-instance v0, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2229
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2230
    sget-boolean v0, Lcom/android/phone/CityIdInfo;->ECID:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2232
    :cond_4
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2235
    :cond_5
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2236
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 2246
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2249
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v1, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p0, v0, v2, v1}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2252
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2253
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    const v1, 0x10402db

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2256
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 2258
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v0, :cond_8

    .line 2260
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    const v1, 0x10402db

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2261
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2272
    :goto_4
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    const v1, 0x108042f

    iput v1, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 2282
    :goto_5
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 2283
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2284
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2291
    :cond_6
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v0, v1, :cond_b

    .line 2292
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 2314
    :goto_6
    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2206
    .end local v2           #number:Ljava/lang/String;
    .end local v7           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDialString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 2264
    .restart local v2       #number:Ljava/lang/String;
    .restart local v7       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_8
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    const v1, 0x20c0177

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_4

    .line 2269
    :cond_9
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2270
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    const v1, 0x10402db

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_4

    .line 2274
    :cond_a
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_5

    .line 2298
    :cond_b
    const/4 v0, -0x1

    sget-object v3, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    const/4 v6, -0x1

    move-object v1, p0

    move-object v4, p1

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->htcStartQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v0

    iput-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 2301
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 2302
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_6

    .line 2311
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_6

    .line 2318
    .end local v2           #number:Ljava/lang/String;
    .end local v7           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_d
    instance-of v0, v10, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_16

    move-object v7, v10

    .line 2322
    check-cast v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .line 2325
    .restart local v7       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    if-eqz v0, :cond_e

    .line 2326
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2332
    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v9

    .line 2334
    .local v9, updatedNumber:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2336
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2338
    sget-boolean v0, Lcom/android/phone/CityIdInfo;->ECID:Z

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2340
    :cond_f
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2342
    :cond_10
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2343
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 2345
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v1, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p0, v0, v9, v1}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 2348
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v9, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2356
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v0, v1, :cond_11

    .line 2357
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_2

    .line 2359
    :cond_11
    const/4 v0, -0x1

    sget-object v1, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v0, p0, v9, v1, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v0

    iput-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 2361
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 2362
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_2

    .line 2366
    :cond_12
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    if-nez v0, :cond_13

    .line 2367
    new-instance v0, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2371
    :cond_13
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2373
    sget-boolean v0, Lcom/android/phone/CityIdInfo;->ECID:Z

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2375
    :cond_14
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2377
    :cond_15
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2378
    iget-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 2383
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_2

    .line 2393
    .end local v7           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v9           #updatedNumber:Ljava/lang/String;
    :cond_16
    new-instance v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v7}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 2394
    .restart local v7       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    check-cast v10, Lcom/android/internal/telephony/CallerInfo;

    .end local v10           #userDataObject:Ljava/lang/Object;
    iput-object v10, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2395
    const/4 v0, 0x0

    iput-object v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 2396
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_2
.end method

.method static startNewCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 3
    .parameter "cm"

    .prologue
    const/4 v2, 0x1

    .line 2604
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2605
    const-string v1, "PhoneUtils"

    const-string v2, "startNewCall: can\'t add a new call in the current state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 2627
    :goto_0
    return-void

    .line 2611
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2612
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    .line 2615
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 2618
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2619
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2624
    const-string v1, "add_call_mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2626
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    .locals 6
    .parameter "heldCall"

    .prologue
    .line 1321
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getInCallPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1322
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1323
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v3

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v4, :cond_0

    .line 1326
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v3, v4}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 1334
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v1, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 1335
    .local v1, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1337
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1338
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 1344
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 1348
    .end local v1           #cm:Lcom/android/internal/telephony/CallManager;
    :goto_1
    return-void

    .line 1342
    .restart local v1       #cm:Lcom/android/internal/telephony/CallManager;
    :cond_2
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1345
    .end local v1           #cm:Lcom/android/internal/telephony/CallManager;
    :catch_0
    move-exception v2

    .line 1346
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchHoldingAndActive: caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static toResumeMusicForATT(Z)V
    .locals 4
    .parameter "resume"

    .prologue
    .line 611
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 612
    .local v1, resumeIntent:Landroid/content/Intent;
    if-eqz p0, :cond_0

    const-string v0, "resume"

    .line 613
    .local v0, command:Ljava/lang/String;
    :goto_0
    const-string v2, "command"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    const-string v2, "phone"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 615
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 616
    return-void

    .line 612
    .end local v0           #command:Ljava/lang/String;
    :cond_0
    const-string v0, "pause"

    goto :goto_0
.end method

.method private static triggerOTA(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 4264
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.MmsSystemEventReceiver.KT_SEND_MSISDN_UPDATE_SMS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4265
    .local v0, it:Landroid/content/Intent;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4266
    return-void
.end method

.method static turnOnDockSpeakerForDialing(Lcom/android/phone/PhoneApp;)Z
    .locals 6
    .parameter "phoneApp"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4195
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isHandsFreePlugged()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isDockMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4197
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 4199
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtils;->allIdle(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4200
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4201
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    sget-object v4, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 4202
    const-string v4, "turnOnDockSpeakerForDialing()..."

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4203
    invoke-static {p0, v2, v3}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 4210
    .end local v0           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method static turnOnDockSpeakerForRinging(Lcom/android/phone/PhoneApp;)Z
    .locals 6
    .parameter "phoneApp"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4171
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isHandsFreePlugged()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/util/ConfigUtils;->isCarTypeUiMode(Landroid/content/res/Configuration;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4173
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 4174
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtils;->allIdle(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4175
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4176
    .local v1, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4177
    const-string v4, "turnOnDockSpeakerForRinging()..."

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 4179
    invoke-static {p0, v2, v3}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 4185
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    .end local v1           #ringingCall:Lcom/android/internal/telephony/Call;
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method static turnOnNoiseSuppression(Landroid/content/Context;ZZ)V
    .locals 3
    .parameter "context"
    .parameter "flag"
    .parameter "store"

    .prologue
    .line 2680
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2682
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2699
    :cond_0
    :goto_0
    return-void

    .line 2686
    :cond_1
    if-eqz p1, :cond_2

    .line 2687
    const-string v1, "noise_suppression=auto"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2693
    :goto_1
    if-eqz p2, :cond_0

    .line 2694
    sput-boolean p1, Lcom/android/phone/PhoneUtils;->sIsNoiseSuppressionEnabled:Z

    goto :goto_0

    .line 2689
    :cond_2
    const-string v1, "noise_suppression=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static turnOnSpeaker(Landroid/content/Context;ZZ)V
    .locals 3
    .parameter "context"
    .parameter "flag"
    .parameter "store"

    .prologue
    .line 2633
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 2635
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 2637
    if-eqz p2, :cond_0

    .line 2638
    sput-boolean p1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    .line 2640
    :cond_0
    if-eqz p1, :cond_1

    .line 2641
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->notifySpeakerphone()V

    .line 2650
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2651
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 2654
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 2656
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/CallManager;->setEchoSuppressionEnabled(Z)V

    .line 2657
    return-void

    .line 2643
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_1
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    goto :goto_0
.end method

.method private static updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneApp;)V
    .locals 2
    .parameter "app"

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 1065
    :goto_0
    return-void

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    goto :goto_0
.end method

.method public static updatePhoneNumber(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "res"
    .parameter "number"

    .prologue
    .line 5162
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5164
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 5165
    .local v0, config:Landroid/content/res/Configuration;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ar"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2b

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 5167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5168
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5169
    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5175
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_0
    return-object p1
.end method

.method public static updatePhoneUtilsafterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .parameter "phone"

    .prologue
    .line 4932
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 4933
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    sget-object v1, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v0}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4934
    sget-object v1, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4935
    return-void
.end method
