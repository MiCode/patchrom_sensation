.class public Lcom/android/phone/PhoneInterfaceManager;
.super Lcom/android/internal/telephony/ITelephony$Stub;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneInterfaceManager$3;,
        Lcom/android/phone/PhoneInterfaceManager$iSIMThread;,
        Lcom/android/phone/PhoneInterfaceManager$CFUHelper;,
        Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;,
        Lcom/android/phone/PhoneInterfaceManager$CheckSubsidyLockPin;,
        Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;,
        Lcom/android/phone/PhoneInterfaceManager$UnlockSim;,
        Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;,
        Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;,
        Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    }
.end annotation


# static fields
.field public static final ACTION_SIP_SELECT_PHONE:Ljava/lang/String; = "com.android.phone.SIP_SELECT_PHONE"

.field private static final CMD_ANSWER_RINGING_CALL:I = 0x4

.field private static final CMD_CLOSE_CHANNEL:I = 0x2c

.field private static final CMD_END_CALL:I = 0x5

.field private static final CMD_EXCHANGE_APDU:I = 0x28

.field private static final CMD_HANDLE_NEIGHBORING_CELL:I = 0x2

.field private static final CMD_HANDLE_PIN_MMI:I = 0x1

.field private static final CMD_HTC_CDMA_END_CALL:I = 0xa

.field private static final CMD_HTC_CSIM_RSP:I = 0xb

.field private static final CMD_HTC_CW_QUERY_CAVE:I = 0x66

.field private static final CMD_HTC_CW_QUERY_CAVE_RESULT:I = 0x67

.field private static final CMD_HTC_CW_QUERY_MD5:I = 0x6a

.field private static final CMD_HTC_CW_QUERY_MD5_RESULT:I = 0x6b

.field private static final CMD_HTC_CW_QUERY_SSD_UPDATE:I = 0x72

.field private static final CMD_HTC_CW_QUERY_SSD_UPDATE_RESULT:I = 0x73

.field private static final CMD_HTC_CW_QUERY_UIMAUTH:I = 0x76

.field private static final CMD_HTC_CW_QUERY_UIMAUTH_RESULT:I = 0x77

.field private static final CMD_HTC_CW_QUERY_VPM:I = 0x6e

.field private static final CMD_HTC_CW_QUERY_VPM_RESULT:I = 0x6f

.field private static final CMD_HTC_CW_REQUEST_CAVE:I = 0x64

.field private static final CMD_HTC_CW_REQUEST_CAVE_RESULT:I = 0x65

.field private static final CMD_HTC_CW_REQUEST_MD5:I = 0x68

.field private static final CMD_HTC_CW_REQUEST_MD5_RESULT:I = 0x69

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE:I = 0x70

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE_CONFIRM:I = 0x74

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE_CONFIRM_RESULT:I = 0x75

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE_RESULT:I = 0x71

.field private static final CMD_HTC_CW_REQUEST_VPM:I = 0x6c

.field private static final CMD_HTC_CW_REQUEST_VPM_RESULT:I = 0x6d

.field private static final CMD_HTC_EXT_BASE:I = 0x3e8

.field private static final CMD_HTC_FETCH_SIGNATURE_KEYS:I = 0x14

.field private static final CMD_HTC_GET_EHRPD_DEVICE_CAPABILITY:I = 0x25

.field private static final CMD_HTC_GET_EHRPD_DEVICE_CAPABILITY_RESULT:I = 0x26

.field private static final CMD_HTC_GET_EHRPD_DISABLE_CAPABILITY:I = 0x23

.field private static final CMD_HTC_GET_EHRPD_DISABLE_CAPABILITY_RESULT:I = 0x24

.field private static final CMD_HTC_GET_EHRPD_DOMAIN_NAME_CHANGE:I = 0x20

.field private static final CMD_HTC_GET_EHRPD_DOMAIN_NAME_CHANGE_RESULT:I = 0x22

.field private static final CMD_HTC_GET_PDN_SETTINGS:I = 0xc

.field private static final CMD_HTC_GET_PDN_SETTINGS_RESULT:I = 0xd

.field private static final CMD_HTC_GET_PREF_NET_TYPE:I = 0x10

.field private static final CMD_HTC_GET_PREF_NET_TYPE_RESULT:I = 0x11

.field private static final CMD_HTC_KIDZONE_ACT:I = 0x3e9

.field private static final CMD_HTC_SEND_REJECT_MSG:I = 0x3c

.field private static final CMD_HTC_SET_CW_UW_DREG:I = 0x1f7

.field private static final CMD_HTC_SET_CW_UW_DREG_RESULT:I = 0x1f8

.field private static final CMD_HTC_SET_CW_UW_REG:I = 0x1f5

.field private static final CMD_HTC_SET_CW_UW_REG_RESULT:I = 0x1f6

.field private static final CMD_HTC_SET_EHRPD_CAPABILITY:I = 0x1e

.field private static final CMD_HTC_SET_EHRPD_CAPABILITY_RESULT:I = 0x1f

.field private static final CMD_HTC_SET_PDN_SETTINGS:I = 0xe

.field private static final CMD_HTC_SET_PDN_SETTINGS_RESULT:I = 0xf

.field private static final CMD_HTC_SET_PREF_NET_TYPE:I = 0x12

.field private static final CMD_HTC_SET_PREF_NET_TYPE_RESULT:I = 0x13

.field private static final CMD_OPEN_CHANNEL:I = 0x2a

.field private static final CMD_SILENCE_RINGER:I = 0x6

.field private static final CW_CMD_BASE_NUM:I = 0x1f4

.field private static final DBG:Z = false

.field private static final DEBUG_SIGNATURE:Z = false

.field private static final DELAY_WHEN_SIGNATURE_MISMATCH_MS:J = 0x1388L

.field public static final DSA_ACTION:Ljava/lang/String; = "com.sprint.dsa.DSA_ACTIVITY"

.field public static final DSA_EXTRA:Ljava/lang/String; = "com.sprint.dsa.url"

.field public static final DSA_TYPE:Ljava/lang/String; = "vnd.sprint.dsa/vnd.sprint.dsa.main"

.field private static final EVENT_CLOSE_CHANNEL_DONE:I = 0x2d

.field private static final EVENT_EXCHANGE_APDU_DONE:I = 0x29

.field private static final EVENT_NEIGHBORING_CELL_DONE:I = 0x3

.field private static final EVENT_OPEN_CHANNEL_DONE:I = 0x2b

.field private static final EVENT_SEND_MESSAGE:I = 0x35

.field static final EVENT_T3G_CMMB_3G_AUTH_RSP:I = 0x34

.field static final EVENT_T3G_CMMB_GSM_AUTH_RSP:I = 0x33

.field public static final EXTRA_ACTUAL_NUMBER_TO_DIAL:Ljava/lang/String; = "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

.field public static final EXTRA_ALREADY_CALLED:Ljava/lang/String; = "android.phone.extra.ALREADY_CALLED"

.field public static final EXTRA_NEW_CALL_INTENT:Ljava/lang/String; = "android.phone.extra.NEW_CALL_INTENT"

.field public static final EXTRA_ORIGINAL_URI:Ljava/lang/String; = "android.phone.extra.ORIGINAL_URI"

.field public static final EXTRA_SIP_PHONE_URI:Ljava/lang/String; = "android.phone.extra.SIP_PHONE_URI"

.field private static final HTC_CW_AUTHEN_AKACAVE_SUPPORTED:I = 0x4

.field private static final HTC_CW_AUTHEN_CAVE_SUPPORTED:I = 0x1

.field private static final HTC_CW_AUTHEN_MD5_SUPPORTED:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneInterfaceManager"

.field static final OEM_RIL_HOOK_T3G_CMMB_3G_AUTH:I = 0x50001

.field static final OEM_RIL_HOOK_T3G_CMMB_BASE:I = 0x50000

.field static final OEM_RIL_HOOK_T3G_CMMB_GSM_AUTH:I = 0x50000

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.PROCESS_OUTGOING_CALLS"

.field private static final RESULT_HTC_CW_AUTHEN_FAIL:I = 0x2

.field private static final RESULT_HTC_CW_AUTHEN_SUCCESS:I = 0x0

.field private static final SECRET_CODE_PREFIX:Ljava/lang/String; = "##"

.field private static final SECRET_HELP_PREFIX:Ljava/lang/String; = "#4357"

.field private static final WM_START_EMERGENCYTONE:I = 0x65


# instance fields
.field private DEBUG_RETRIEVE_NETWORK_TYPE:Z

.field private TAG_NETWORK_TYPE:Ljava/lang/String;

.field private lastError:I

.field mApp:Lcom/android/phone/PhoneApp;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field private mCSIMResult:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

.field private mOemResult:[B

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mPlatformSignature:[Landroid/content/pm/Signature;

.field private mShareSignature:[Landroid/content/pm/Signature;

.field private mSignatureLock:Ljava/lang/Object;

.field mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

.field mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "app"
    .parameter "phone"

    .prologue
    const/4 v1, 0x0

    .line 761
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephony$Stub;-><init>()V

    .line 144
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mLock:Ljava/lang/Object;

    .line 801
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$1;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mHandler:Landroid/os/Handler;

    .line 3037
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager;->DEBUG_RETRIEVE_NETWORK_TYPE:Z

    .line 3038
    iget-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager;->DEBUG_RETRIEVE_NETWORK_TYPE:Z

    if-eqz v0, :cond_0

    const-string v0, "RetrieveNetworkType"

    :goto_0
    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->TAG_NETWORK_TYPE:Ljava/lang/String;

    .line 3114
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mSignatureLock:Ljava/lang/Object;

    .line 762
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    .line 763
    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 764
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 765
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    .line 768
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 769
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(I)V

    .line 773
    new-instance v0, Lcom/android/phone/sip/SipProfileDb;

    invoke-direct {v0, p1}, Lcom/android/phone/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

    .line 774
    new-instance v0, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v0, p1}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 777
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->publish()V

    .line 778
    return-void

    :cond_0
    move-object v0, v1

    .line 3038
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/PhoneInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/PhoneInterfaceManager;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager;->mOemResult:[B

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallInternal()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->silenceRingerInternal()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/phone/PhoneInterfaceManager;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager;->mCSIMResult:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/phone/PhoneInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mSignatureLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/PhoneInterfaceManager;[Landroid/content/pm/Signature;)[Landroid/content/pm/Signature;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPlatformSignature:[Landroid/content/pm/Signature;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/PhoneInterfaceManager;Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager;->getPackageSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/PhoneInterfaceManager;[Landroid/content/pm/Signature;)[Landroid/content/pm/Signature;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager;->mShareSignature:[Landroid/content/pm/Signature;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private answerRingingCallInternal()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1235
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 1236
    .local v2, hasRingingCall:Z
    const/4 v3, 0x0

    .line 1237
    .local v3, isCallAnwsered:Z
    if-eqz v2, :cond_0

    .line 1238
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 1239
    .local v0, hasActiveCall:Z
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 1240
    .local v1, hasHoldingCall:Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1246
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    move-result v3

    .line 1255
    :goto_0
    sget-boolean v5, Lcom/android/phone/util/BuildUtils;->INCOMING_CALL_3D_LOCKSCREEN:Z

    if-eqz v5, :cond_0

    .line 1256
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v4

    .line 1257
    .local v4, screen:Lcom/android/phone/InCallScreen;
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 1258
    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->updateFakeBottomTaskbarAfterAnswerCall()V

    .line 1259
    invoke-virtual {v4, v7}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 1260
    invoke-virtual {v4, v7}, Lcom/android/phone/InCallScreen;->updateKeyguardShowWhenLockPolicy(Z)V

    .line 1268
    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    .end local v4           #screen:Lcom/android/phone/InCallScreen;
    :cond_0
    return-void

    .line 1251
    .restart local v0       #hasActiveCall:Z
    .restart local v1       #hasHoldingCall:Z
    :cond_1
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    goto :goto_0
.end method

.method private callingWithGivenSignature([Landroid/content/pm/Signature;IZ)Z
    .locals 12
    .parameter "givenSignature"
    .parameter "uid"
    .parameter "delayWhenNotMatch"

    .prologue
    .line 3160
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 3161
    .local v7, packages:[Ljava/lang/String;
    if-eqz v7, :cond_4

    array-length v10, v7

    if-lez v10, :cond_4

    .line 3170
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-direct {p0, v10, v11}, Lcom/android/phone/PhoneInterfaceManager;->getPackageSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v8

    .line 3171
    .local v8, pkgSignatures:[Landroid/content/pm/Signature;
    if-eqz v8, :cond_4

    array-length v10, v8

    if-lez v10, :cond_4

    .line 3172
    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManager;->mSignatureLock:Ljava/lang/Object;

    monitor-enter v11

    .line 3173
    if-nez p1, :cond_0

    .line 3175
    :try_start_0
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager;->mSignatureLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3180
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3182
    if-eqz p1, :cond_3

    array-length v10, p1

    if-lez v10, :cond_3

    .line 3183
    move-object v0, p1

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v9, v0, v3

    .line 3184
    .local v9, sig:Landroid/content/pm/Signature;
    move-object v1, v8

    .local v1, arr$:[Landroid/content/pm/Signature;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v5, :cond_2

    aget-object v6, v1, v2

    .line 3185
    .local v6, matchSig:Landroid/content/pm/Signature;
    if-eqz v6, :cond_1

    invoke-virtual {v9, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3189
    const/4 v10, 0x1

    .line 3205
    .end local v1           #arr$:[Landroid/content/pm/Signature;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .end local v6           #matchSig:Landroid/content/pm/Signature;
    .end local v8           #pkgSignatures:[Landroid/content/pm/Signature;
    .end local v9           #sig:Landroid/content/pm/Signature;
    :goto_3
    return v10

    .line 3180
    .restart local v8       #pkgSignatures:[Landroid/content/pm/Signature;
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 3184
    .restart local v1       #arr$:[Landroid/content/pm/Signature;
    .restart local v2       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #matchSig:Landroid/content/pm/Signature;
    .restart local v9       #sig:Landroid/content/pm/Signature;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3183
    .end local v6           #matchSig:Landroid/content/pm/Signature;
    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_1

    .line 3195
    .end local v1           #arr$:[Landroid/content/pm/Signature;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v9           #sig:Landroid/content/pm/Signature;
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No signature found : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 3196
    const/4 v10, 0x1

    goto :goto_3

    .line 3200
    .end local v8           #pkgSignatures:[Landroid/content/pm/Signature;
    :cond_4
    if-eqz p3, :cond_5

    .line 3202
    const-wide/16 v10, 0x1388

    :try_start_3
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 3205
    :cond_5
    :goto_4
    const/4 v10, 0x0

    goto :goto_3

    .line 3203
    :catch_0
    move-exception v10

    goto :goto_4

    .line 3176
    .restart local v8       #pkgSignatures:[Landroid/content/pm/Signature;
    :catch_1
    move-exception v10

    goto :goto_0
.end method

.method private callingWithPlatformSignature(Z)Z
    .locals 2
    .parameter "delayWhenNotMatch"

    .prologue
    .line 3142
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->getCallingUid()I

    move-result v0

    .line 3143
    .local v0, uid:I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_1

    .line 3144
    :cond_0
    const/4 v1, 0x1

    .line 3146
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPlatformSignature:[Landroid/content/pm/Signature;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->callingWithGivenSignature([Landroid/content/pm/Signature;IZ)Z

    move-result v1

    goto :goto_0
.end method

.method private callingWithShareSignature(Z)Z
    .locals 2
    .parameter "delayWhenNotMatch"

    .prologue
    .line 3151
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->getCallingUid()I

    move-result v0

    .line 3152
    .local v0, uid:I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 3153
    const/4 v1, 0x1

    .line 3155
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mShareSignature:[Landroid/content/pm/Signature;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->callingWithGivenSignature([Landroid/content/pm/Signature;IZ)Z

    move-result v1

    goto :goto_0
.end method

.method private convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I
    .locals 3
    .parameter "state"

    .prologue
    const/4 v0, 0x1

    .line 3271
    sget-object v1, Lcom/android/phone/PhoneInterfaceManager$3;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3293
    :goto_0
    :pswitch_0
    return v0

    .line 3276
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 3278
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 3280
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 3282
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 3284
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 3286
    :pswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 3288
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 3290
    :pswitch_8
    const/16 v0, 0x9

    goto :goto_0

    .line 3271
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private createTelUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 1908
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1909
    const/4 v1, 0x0

    .line 1914
    :goto_0
    return-object v1

    .line 1912
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1913
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1914
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private enforceCallPermission()V
    .locals 3

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.CALL_PHONE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    return-void
.end method

.method private enforceModifyPermission()V
    .locals 3

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    return-void
.end method

.method private enforceReadPermission()V
    .locals 3

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    return-void
.end method

.method private exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 2067
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3fb

    if-eq v1, v2, :cond_0

    .line 2068
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2069
    :cond_0
    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> exchangeAPDU "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    const/16 v11, 0x28

    new-instance v1, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;)V

    invoke-direct {p0, v11, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IccIoResult;

    .line 2075
    .local v9, response:Lcom/android/internal/telephony/IccIoResult;
    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< exchangeAPDU "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    iget v1, v9, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    shl-int/lit8 v1, v1, 0x8

    iget v2, v9, Lcom/android/internal/telephony/IccIoResult;->sw2:I

    add-int/2addr v1, v2

    const/high16 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 2078
    .local v10, s:Ljava/lang/String;
    iget-object v1, v9, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    if-eqz v1, :cond_1

    .line 2079
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v9, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2080
    :cond_1
    return-object v10
.end method

.method private getPackageSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 2
    .parameter "mPm"
    .parameter "packageName"

    .prologue
    .line 3124
    const/16 v1, 0x40

    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 3126
    .local v0, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 3131
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3137
    .end local v0           #pkgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v1

    .line 3136
    :catch_0
    move-exception v1

    .line 3137
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSecretCode(Ljava/lang/String;)Z
    .locals 5
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 3630
    if-nez p1, :cond_1

    .line 3663
    :cond_0
    :goto_0
    return v1

    .line 3635
    :cond_1
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 3637
    .local v0, phoneType:I
    if-ne v0, v4, :cond_2

    sget-boolean v3, Lcom/android/phone/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v3, :cond_2

    const-string v3, "*2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 3640
    goto :goto_0

    .line 3643
    :cond_2
    if-ne v0, v4, :cond_3

    sget-boolean v3, Lcom/android/phone/HtcFeatureList;->FEATURE_VIRGIN_611:Z

    if-eqz v3, :cond_3

    const-string v3, "611"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 3646
    goto :goto_0

    .line 3649
    :cond_3
    if-ne v0, v4, :cond_4

    sget-boolean v3, Lcom/android/phone/HtcFeatureList;->FEATURE_POUNDPOUND_SECRETCODE_SEND:Z

    if-eq v3, v2, :cond_5

    :cond_4
    sget-boolean v3, Lcom/android/phone/HtcFeatureList;->WORLDPHONE_FEATURE_POUNDPOUND_SECRETCODE_SEND:Z

    if-ne v3, v2, :cond_0

    .line 3652
    :cond_5
    const-string v3, "#4357"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v2, :cond_6

    move v1, v2

    .line 3653
    goto :goto_0

    .line 3654
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    const-string v3, "##"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "##4357"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v2, :cond_0

    move v1, v2

    .line 3660
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1918
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    return-void
.end method

.method private static parseString([BI)Ljava/lang/String;
    .locals 6
    .parameter "data"
    .parameter "offset"

    .prologue
    .line 2938
    const/4 v2, 0x0

    .line 2939
    .local v2, result:Ljava/lang/String;
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    const/4 v1, 0x0

    .local v1, length:I
    :goto_0
    add-int v3, p1, v1

    array-length v4, p0

    if-ge v3, v4, :cond_0

    add-int v3, p1, v1

    aget-byte v3, p0, v3

    if-eqz v3, :cond_0

    .line 2943
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int v5, p1, v1

    aget-byte v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2946
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .end local v2           #result:Ljava/lang/String;
    const-string v3, "ISO-8859-1"

    invoke-direct {v2, p0, p1, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2953
    .restart local v2       #result:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 2948
    .end local v2           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2949
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v3, "PhoneInterfaceManager"

    const-string v4, "Unknown string!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2950
    const/4 v2, 0x0

    .restart local v2       #result:Ljava/lang/String;
    goto :goto_1
.end method

.method private publish()V
    .locals 3

    .prologue
    .line 785
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 786
    const-string v1, "phone"

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 789
    :catch_0
    move-exception v0

    .line 791
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PhoneInterfaceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "command"
    .parameter "argument"

    .prologue
    .line 730
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 731
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This method will deadlock if called from the main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 734
    :cond_0
    new-instance v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    invoke-direct {v1, p2}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 735
    .local v1, request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v2, p1, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 736
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 739
    monitor-enter v1

    .line 740
    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 742
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 743
    :catch_0
    move-exception v2

    goto :goto_0

    .line 747
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 748
    iget-object v2, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v2

    .line 747
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private sendRequestAsync(I)V
    .locals 1
    .parameter "command"

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->sendEmptyMessage(I)Z

    .line 759
    return-void
.end method

.method private sendRequestAsync(III)V
    .locals 2
    .parameter "command"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 3763
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 3764
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3765
    return-void
.end method

.method private showCallScreenInternal(ZZ)Z
    .locals 7
    .parameter "specifyInitialDialpadState"
    .parameter "initialDialpadState"

    .prologue
    const/4 v4, 0x0

    .line 1052
    sget-boolean v5, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v5, :cond_1

    .line 1089
    :cond_0
    :goto_0
    return v4

    .line 1057
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->isIdle()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1062
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1064
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1067
    .local v0, callingId:J
    if-eqz p1, :cond_2

    .line 1068
    :try_start_0
    invoke-static {p2}, Lcom/android/phone/PhoneApp;->createInCallIntent(Z)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1073
    .local v3, intent:Landroid/content/Intent;
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4, v3}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1083
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1085
    const/4 v4, 0x1

    goto :goto_0

    .line 1070
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v3

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 1074
    :catch_0
    move-exception v2

    .line 1079
    .local v2, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "PhoneInterfaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showCallScreenInternal: transition to InCallScreen failed; intent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1083
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private silenceRingerInternal()V
    .locals 2

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 1293
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    .line 1295
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->stopCallWaitingToneIfNecessary()Z

    .line 1298
    :cond_1
    return-void
.end method


# virtual methods
.method public answerRingingCall()V
    .locals 1

    .prologue
    .line 1217
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1218
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(I)V

    .line 1219
    return-void
.end method

.method public answerRingingCallExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3790
    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 4
    .parameter "number"

    .prologue
    .line 1036
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCallPermission()V

    .line 1038
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1039
    .local v1, url:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1047
    :goto_0
    return-void

    .line 1043
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1044
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1045
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getCallScreenClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1046
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public callExt(Ljava/lang/String;I)V
    .locals 0
    .parameter "number"
    .parameter "phoneType"

    .prologue
    .line 3777
    return-void
.end method

.method public cancelMissedCallsNotification()V
    .locals 1

    .prologue
    .line 1804
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1805
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->cancelMissedCallNotification()V

    .line 1806
    return-void
.end method

.method public checkTestIcc()Z
    .locals 1

    .prologue
    .line 2982
    const/4 v0, 0x0

    return v0
.end method

.method public confirmFirstDataRoaming()V
    .locals 4

    .prologue
    .line 1663
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1669
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->confirmFirstDataRoaming()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1674
    :goto_0
    return-void

    .line 1670
    :catch_0
    move-exception v0

    .line 1671
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone confirmFirstDataRoaming exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;)V
    .locals 5
    .parameter "number"

    .prologue
    .line 1016
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1017
    .local v2, url:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1028
    :cond_0
    :goto_0
    return-void

    .line 1022
    :cond_1
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 1023
    .local v1, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v3, :cond_0

    .line 1024
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1025
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1026
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public dialExt(Ljava/lang/String;I)V
    .locals 0
    .parameter "number"
    .parameter "phoneType"

    .prologue
    .line 3771
    return-void
.end method

.method public dialWithoutBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 23
    .parameter "intent"
    .parameter "number"

    .prologue
    .line 2391
    sget-boolean v20, Lcom/android/phone/HtcFeatureList;->FEATURE_ASK_EXIT_E911:Z

    if-eqz v20, :cond_0

    sget-boolean v20, Lcom/android/phone/HtcCdmaPhoneApp;->mEnterEmergencyMode:Z

    if-eqz v20, :cond_0

    .line 2392
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 2393
    new-instance v5, Landroid/content/Intent;

    const-string v20, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2394
    .local v5, exitEMC:Landroid/content/Intent;
    const/high16 v20, 0x1002

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 2536
    .end local v5           #exitEMC:Landroid/content/Intent;
    :goto_0
    return-void

    .line 2403
    :cond_0
    const-string v20, "PhoneInterfaceManager"

    const-string v21, "dialWithoutBroadcast"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    const-string v20, "android.phone.extra.ALREADY_CALLED"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 2407
    .local v3, alreadyCalled:Z
    if-eqz v3, :cond_1

    .line 2408
    const-string v20, "PhoneInterfaceManager"

    const-string v21, "CALL already placed -- returning."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2412
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    .line 2416
    .local v4, app:Lcom/android/phone/PhoneApp;
    const-string v20, "*147359*682*"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    sget-boolean v20, Lcom/android/phone/PhoneUtils;->SUPPORT_OTA:Z

    if-eqz v20, :cond_2

    .line 2417
    iget-object v15, v4, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v15, Lcom/android/internal/telephony/PhoneProxy;

    .line 2418
    .local v15, phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v6, v20

    check-cast v6, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 2419
    .local v6, gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v6, v0, v1}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    goto :goto_0

    .line 2424
    .end local v6           #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v15           #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    :cond_2
    if-nez p2, :cond_3

    .line 2425
    const-string v20, "PhoneInterfaceManager"

    const-string v21, "dialWithoutBroadcast CALL cancelled -- returning."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2428
    :cond_3
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 2429
    const-string v20, "PhoneInterfaceManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "dialWithoutBroadcast Cannot modify outgoing call to emergency number "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2433
    :cond_4
    const-string v20, "android.phone.extra.ORIGINAL_URI"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2436
    .local v14, originalUri:Ljava/lang/String;
    if-nez v14, :cond_5

    .line 2437
    const-string v20, "PhoneInterfaceManager"

    const-string v21, "dialWithoutBroadcast Intent is missing EXTRA_ORIGINAL_URI -- returning."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2441
    :cond_5
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 2446
    .local v19, uri:Landroid/net/Uri;
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    .line 2447
    .local v17, scheme:Ljava/lang/String;
    const-string v20, "sip"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_6

    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_b

    :cond_6
    const/4 v7, 0x1

    .line 2449
    .local v7, isSIP:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v8

    .line 2452
    .local v8, mCallOption:Ljava/lang/String;
    if-eqz v8, :cond_7

    const-string v20, "SIP_ALWAYS"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 2453
    const/4 v7, 0x1

    .line 2457
    :cond_7
    if-eqz v4, :cond_8

    if-nez v7, :cond_8

    .line 2458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v15, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v15, Lcom/android/internal/telephony/PhoneProxy;

    .line 2460
    .restart local v15       #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "GSM"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 2462
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2465
    .local v12, newDialString:Ljava/lang/String;
    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2467
    .local v11, networkPortion:Ljava/lang/String;
    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v6, v20

    check-cast v6, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 2469
    .restart local v6       #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v11, v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v10

    .line 2471
    .local v10, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    if-nez v10, :cond_c

    .line 2492
    .end local v6           #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v10           #mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .end local v11           #networkPortion:Ljava/lang/String;
    .end local v12           #newDialString:Ljava/lang/String;
    .end local v15           #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    :cond_8
    :goto_2
    const/4 v9, 0x0

    .line 2493
    .local v9, mUseSipPhone:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/sip/SipProfileDb;->getProfilesCount()I

    move-result v16

    .line 2495
    .local v16, profileCount:I
    const-string v20, "PhoneInterfaceManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "-- mCallOption "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    const-string v20, "PhoneInterfaceManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "-- profileCount "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    new-instance v13, Landroid/content/Intent;

    const-string v20, "android.intent.action.CALL"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2499
    .local v13, newIntent:Landroid/content/Intent;
    const-string v20, "android.intent.extra.PHONE_NUMBER"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2500
    const-string v20, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2502
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/phone/PhoneUtils;->checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 2503
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/phone/PhoneUtils;->copyDialExtra(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 2505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v20, v0

    const-class v21, Lcom/android/phone/InCallScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2506
    const/high16 v20, 0x1000

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2508
    const-string v20, "sip"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_9

    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 2509
    :cond_9
    const/4 v9, 0x1

    .line 2521
    :cond_a
    :goto_3
    const-string v20, "PhoneInterfaceManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mUseSipPhone = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    if-nez v9, :cond_12

    .line 2526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2447
    .end local v7           #isSIP:Z
    .end local v8           #mCallOption:Ljava/lang/String;
    .end local v9           #mUseSipPhone:Z
    .end local v13           #newIntent:Landroid/content/Intent;
    .end local v16           #profileCount:I
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 2473
    .restart local v6       #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .restart local v7       #isSIP:Z
    .restart local v8       #mCallOption:Ljava/lang/String;
    .restart local v10       #mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .restart local v11       #networkPortion:Ljava/lang/String;
    .restart local v12       #newDialString:Ljava/lang/String;
    .restart local v15       #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    :cond_c
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v20

    if-nez v20, :cond_8

    .line 2477
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isModeCLIRForLexikon()Z

    move-result v20

    if-eqz v20, :cond_d

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v20

    if-eqz v20, :cond_d

    .line 2480
    const-string v20, "PhoneInterfaceManager"

    const-string v21, "isModeCLIRForLexikon"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2484
    :cond_d
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v6, v0, v1}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    goto/16 :goto_0

    .line 2510
    .end local v6           #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v10           #mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .end local v11           #networkPortion:Ljava/lang/String;
    .end local v12           #newDialString:Ljava/lang/String;
    .end local v15           #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    .restart local v9       #mUseSipPhone:Z
    .restart local v13       #newIntent:Landroid/content/Intent;
    .restart local v16       #profileCount:I
    :cond_e
    const-string v20, "tel"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    if-eqz v16, :cond_f

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 2511
    :cond_f
    const/4 v9, 0x0

    goto :goto_3

    .line 2513
    :cond_10
    if-eqz v8, :cond_11

    const-string v20, "SIP_ASK_ME_EACH_TIME"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 2515
    const/4 v9, 0x1

    goto :goto_3

    .line 2517
    :cond_11
    if-eqz v8, :cond_a

    const-string v20, "SIP_ALWAYS"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 2518
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 2530
    :cond_12
    new-instance v18, Landroid/content/Intent;

    const-string v20, "com.android.phone.SIP_SELECT_PHONE"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2531
    .local v18, selectPhoneIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v20, v0

    const-class v21, Lcom/android/phone/SipCallOptionHandler;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2532
    const-string v20, "android.phone.extra.NEW_CALL_INTENT"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2533
    const/high16 v20, 0x1000

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public dialWithoutDelay(Landroid/content/Intent;)Z
    .locals 18
    .parameter "intent"

    .prologue
    .line 827
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCallPermission()V

    .line 832
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 833
    .local v9, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 835
    .local v7, number:Ljava/lang/String;
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_DISABLE_3_WAY_CALL:Z

    if-eqz v1, :cond_1

    .line 837
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v16

    .line 838
    .local v16, state:Lcom/android/internal/telephony/Phone$State;
    sget-boolean v1, Lcom/android/phone/HtcCdmaPhoneApp;->mEnterEmergencyMode:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v16

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v16

    if-ne v0, v1, :cond_1

    .line 842
    :cond_0
    const-string v1, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FEATURE_DISABLE_3_WAY_CALL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    new-instance v17, Lcom/android/phone/PhoneInterfaceManager$2;

    invoke-direct/range {v17 .. v18}, Lcom/android/phone/PhoneInterfaceManager$2;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    .line 853
    .local v17, thread:Ljava/lang/Thread;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->start()V

    .line 854
    const/4 v1, 0x0

    .line 1002
    .end local v7           #number:Ljava/lang/String;
    .end local v9           #action:Ljava/lang/String;
    .end local v16           #state:Lcom/android/internal/telephony/Phone$State;
    .end local v17           #thread:Ljava/lang/Thread;
    :goto_0
    return v1

    .line 860
    .restart local v7       #number:Ljava/lang/String;
    .restart local v9       #action:Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_2

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 864
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 867
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p1

    invoke-static {v1, v0, v7}, Lcom/android/phone/util/HomeDialing;->isAvailable(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 868
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {v1}, Lcom/android/phone/util/HomeDialing;->havePreference(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 869
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p1

    invoke-static {v1, v7, v0}, Lcom/android/phone/util/HomeDialing;->appendPreferredCountryCode(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v7

    .line 877
    :cond_3
    if-eqz v7, :cond_6

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v12, 0x1

    .line 884
    .local v12, emergencyNumber:Z
    :goto_1
    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 885
    if-eqz v12, :cond_7

    const-string v9, "android.intent.action.CALL_EMERGENCY"

    .line 888
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 891
    :cond_4
    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 892
    if-eqz v12, :cond_8

    .line 893
    const-string v1, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot call emergency number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with CALL Intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 904
    .local v14, invokeFrameworkDialer:Landroid/content/Intent;
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 905
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 906
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1, v14}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 907
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 871
    .end local v12           #emergencyNumber:Z
    .end local v14           #invokeFrameworkDialer:Landroid/content/Intent;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p1

    invoke-static {v1, v0, v7}, Lcom/android/phone/util/HomeDialing;->startHomeDialingActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 872
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 877
    :cond_6
    const/4 v12, 0x0

    goto :goto_1

    .line 885
    .restart local v12       #emergencyNumber:Z
    :cond_7
    const-string v9, "android.intent.action.CALL"

    goto :goto_2

    .line 909
    :cond_8
    const/4 v10, 0x0

    .line 951
    .local v10, callNow:Z
    :goto_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 959
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 960
    const/4 v10, 0x1

    .line 963
    :cond_9
    if-eqz v10, :cond_a

    .line 964
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-class v3, Lcom/android/phone/InCallScreen;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 965
    const/high16 v1, 0x1000

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 966
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 969
    :cond_a
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 970
    .local v2, broadcastIntent:Landroid/content/Intent;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 971
    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 973
    :cond_b
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 974
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->copyDialExtra(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 976
    const-string v1, "android.phone.extra.ALREADY_CALLED"

    invoke-virtual {v2, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 977
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    .line 978
    .local v15, originalData:Landroid/net/Uri;
    const-string v1, "android.phone.extra.ORIGINAL_URI"

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 987
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-boolean v1, v1, Lcom/android/phone/PhoneApp;->mNeedToBroadcast:Z

    if-nez v1, :cond_10

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/phone/PhoneInterfaceManager;->isSecretCode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 989
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/android/phone/PhoneInterfaceManager;->dialWithoutBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 997
    :goto_4
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 910
    .end local v2           #broadcastIntent:Landroid/content/Intent;
    .end local v10           #callNow:Z
    .end local v15           #originalData:Landroid/net/Uri;
    :cond_c
    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 916
    if-nez v12, :cond_d

    .line 917
    const-string v1, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot call non-emergency number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with EMERGENCY_CALL Intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 923
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "emergency_tone"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 924
    .local v13, iEmergencyTone:I
    packed-switch v13, :pswitch_data_0

    .line 935
    :cond_e
    :goto_5
    const/4 v10, 0x1

    .line 936
    .restart local v10       #callNow:Z
    goto/16 :goto_3

    .line 927
    .end local v10           #callNow:Z
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isPureGsmUmtsPhone(Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_e

    .line 928
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 929
    const-string v1, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OoO get ThreadID before EMC tone == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 1000
    .end local v7           #number:Ljava/lang/String;
    .end local v9           #action:Ljava/lang/String;
    .end local v12           #emergencyNumber:Z
    .end local v13           #iEmergencyTone:I
    :catch_0
    move-exception v11

    .line 1001
    .local v11, e:Ljava/lang/Exception;
    const-string v1, "PhoneInterfaceManager"

    const-string v3, "dialWithoutDelay"

    invoke-static {v1, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1002
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 937
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v7       #number:Ljava/lang/String;
    .restart local v9       #action:Ljava/lang/String;
    .restart local v12       #emergencyNumber:Z
    :cond_f
    :try_start_1
    const-string v1, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled Intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 993
    .restart local v2       #broadcastIntent:Landroid/content/Intent;
    .restart local v10       #callNow:Z
    .restart local v15       #originalData:Landroid/net/Uri;
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v3, "android.permission.PROCESS_OUTGOING_CALLS"

    new-instance v4, Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;-><init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/phone/PhoneApp;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 924
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 7
    .parameter "type"

    .prologue
    const/4 v4, 0x3

    .line 1727
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1733
    const/4 v3, 0x3

    .line 1734
    .local v3, result:I
    if-eqz p1, :cond_6

    .line 1735
    const/4 v0, 0x0

    .line 1736
    .local v0, checkPlatformKey:Z
    const/4 v1, 0x0

    .line 1737
    .local v1, checkSprintKey:Z
    const-string v5, "admin"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1738
    const/4 v0, 0x1

    .line 1740
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x94

    if-ne v5, v6, :cond_0

    .line 1741
    const/4 v1, 0x1

    .line 1753
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 1754
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/phone/PhoneInterfaceManager;->callingWithPlatformSignature(Z)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1771
    .end local v0           #checkPlatformKey:Z
    .end local v1           #checkSprintKey:Z
    :cond_1
    :goto_1
    return v4

    .line 1745
    .restart local v0       #checkPlatformKey:Z
    .restart local v1       #checkSprintKey:Z
    :cond_2
    const-string v5, "ims"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1746
    const/4 v0, 0x1

    goto :goto_0

    .line 1748
    :cond_3
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xa8

    if-ne v5, v6, :cond_0

    const-string v5, "verizon"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1750
    const/4 v0, 0x1

    goto :goto_0

    .line 1757
    :cond_4
    if-eqz v1, :cond_5

    .line 1759
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->getCallingUid()I

    move-result v6

    invoke-static {v5, v6}, Lcom/htc/content/HtcContext;->callingWithPlatformOrSprintSignature(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1766
    :cond_5
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/Phone;->disableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v0           #checkPlatformKey:Z
    .end local v1           #checkSprintKey:Z
    :cond_6
    :goto_2
    move v4, v3

    .line 1771
    goto :goto_1

    .line 1767
    .restart local v0       #checkPlatformKey:Z
    .restart local v1       #checkSprintKey:Z
    :catch_0
    move-exception v2

    .line 1768
    .local v2, ex:Ljava/lang/Exception;
    const-string v4, "PhoneInterfaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone disableApnType exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public disableApnTypeExt(Ljava/lang/String;I)I
    .locals 1
    .parameter "type"
    .parameter "phoneType"

    .prologue
    .line 3838
    const/4 v0, 0x0

    return v0
.end method

.method public disableDataConnectivity()Z
    .locals 6

    .prologue
    .line 1776
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1781
    const/4 v2, 0x0

    .line 1783
    .local v2, result:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1785
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1786
    const/4 v2, 0x1

    .line 1790
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #result:Z
    :goto_0
    return v2

    .line 1787
    .restart local v2       #result:Z
    :catch_0
    move-exception v1

    .line 1788
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone disableDataConnectivity exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disableLocationUpdates()V
    .locals 3

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.CONTROL_LOCATION_UPDATES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    .line 1846
    return-void
.end method

.method public disableLocationUpdatesExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3880
    return-void
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 7
    .parameter "type"

    .prologue
    const/4 v4, 0x3

    .line 1678
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1684
    const/4 v3, 0x3

    .line 1685
    .local v3, result:I
    if-eqz p1, :cond_6

    .line 1686
    const/4 v0, 0x0

    .line 1687
    .local v0, checkPlatformKey:Z
    const/4 v1, 0x0

    .line 1688
    .local v1, checkSprintKey:Z
    const-string v5, "admin"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1689
    const/4 v0, 0x1

    .line 1691
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x94

    if-ne v5, v6, :cond_0

    .line 1692
    const/4 v1, 0x1

    .line 1704
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 1705
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/phone/PhoneInterfaceManager;->callingWithPlatformSignature(Z)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1722
    .end local v0           #checkPlatformKey:Z
    .end local v1           #checkSprintKey:Z
    :cond_1
    :goto_1
    return v4

    .line 1696
    .restart local v0       #checkPlatformKey:Z
    .restart local v1       #checkSprintKey:Z
    :cond_2
    const-string v5, "ims"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1697
    const/4 v0, 0x1

    goto :goto_0

    .line 1699
    :cond_3
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xa8

    if-ne v5, v6, :cond_0

    const-string v5, "verizon"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1701
    const/4 v0, 0x1

    goto :goto_0

    .line 1708
    :cond_4
    if-eqz v1, :cond_5

    .line 1710
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->getCallingUid()I

    move-result v6

    invoke-static {v5, v6}, Lcom/htc/content/HtcContext;->callingWithPlatformOrSprintSignature(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1717
    :cond_5
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/Phone;->enableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v0           #checkPlatformKey:Z
    .end local v1           #checkSprintKey:Z
    :cond_6
    :goto_2
    move v4, v3

    .line 1722
    goto :goto_1

    .line 1718
    .restart local v0       #checkPlatformKey:Z
    .restart local v1       #checkSprintKey:Z
    :catch_0
    move-exception v2

    .line 1719
    .local v2, ex:Ljava/lang/Exception;
    const-string v4, "PhoneInterfaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone enableApnType exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public enableApnTypeExt(Ljava/lang/String;I)I
    .locals 1
    .parameter "type"
    .parameter "phoneType"

    .prologue
    .line 3834
    const/4 v0, 0x0

    return v0
.end method

.method public enableDataConnectivity()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 1638
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1643
    const/4 v2, 0x0

    .line 1645
    .local v2, result:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1647
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 1652
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #result:Z
    :goto_0
    return v2

    .line 1649
    .restart local v2       #result:Z
    :catch_0
    move-exception v1

    .line 1650
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone enableDataConnectivity exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableLocationUpdates()V
    .locals 3

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.CONTROL_LOCATION_UPDATES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    .line 1840
    return-void
.end method

.method public enableLocationUpdatesExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3876
    return-void
.end method

.method public enableMpdp(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 3387
    return-void
.end method

.method public endCall()Z
    .locals 2

    .prologue
    .line 1148
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCallPermission()V

    .line 1149
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public endCallExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3784
    const/4 v0, 0x0

    return v0
.end method

.method public getActiveCallConnectTime()J
    .locals 5

    .prologue
    .line 2576
    const-wide/16 v1, 0x0

    .line 2580
    .local v1, connectTime:J
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 2582
    .local v3, mForegroundCall:Lcom/android/internal/telephony/Call;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2584
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2586
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 2588
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v1

    .line 2592
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_0
    return-wide v1
.end method

.method public getActiveCallNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2549
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 2550
    const/4 v2, 0x0

    .line 2554
    .local v2, phoneNumber:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2556
    .local v1, mForegroundCall:Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2558
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2560
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 2562
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 2565
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2567
    const-string v3, "conference"

    .line 2571
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :goto_0
    return-object v3

    :cond_1
    move-object v3, v2

    goto :goto_0
.end method

.method public getActivePDPList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3391
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActivePhoneType()I
    .locals 1

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getBackgroundCallNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2597
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 2598
    const/4 v2, 0x0

    .line 2602
    .local v2, phoneNumber:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2604
    .local v1, mBackgroundCall:Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2606
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2608
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 2610
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 2614
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_0
    return-object v2
.end method

.method public getCFUNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2634
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 2635
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCFUNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCFUNumberFromOperator()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2647
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 2648
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 2649
    .local v0, getCFU:Lcom/android/phone/PhoneInterfaceManager$CFUHelper;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->start()V

    .line 2651
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->getCFU()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(Lcom/android/internal/telephony/Phone$State;)I

    move-result v0

    return v0
.end method

.method public getCallStateExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3858
    const/4 v0, 0x0

    return v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocation()Landroid/os/Bundle;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1822
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1831
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1832
    .local v0, data:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1833
    return-object v0

    .line 1824
    .end local v0           #data:Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 1828
    .local v1, e:Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCellLocationExt(I)Landroid/os/Bundle;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3871
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentCallState()I
    .locals 5

    .prologue
    .line 3247
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 3248
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3249
    .local v1, foregroundCall:Lcom/android/internal/telephony/Call;
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3250
    .local v0, backgroundCall:Lcom/android/internal/telephony/Call;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 3252
    .local v3, state:Lcom/android/internal/telephony/Call$State;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3254
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 3265
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/phone/PhoneInterfaceManager;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v4

    return v4

    .line 3256
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3258
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    goto :goto_0

    .line 3260
    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3262
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    goto :goto_0
.end method

.method public getDataActivity()I
    .locals 1

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I

    move-result v0

    return v0
.end method

.method public getDataActivityExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3866
    const/4 v0, 0x0

    return v0
.end method

.method public getDataState()I
    .locals 1

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/Phone$DataState;)I

    move-result v0

    return v0
.end method

.method public getDataStateExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3862
    const/4 v0, 0x0

    return v0
.end method

.method public getDetailIccStatus()[I
    .locals 1

    .prologue
    .line 1333
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 1334
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDetailIccStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getExtVoiceCallPhoneType()I
    .locals 1

    .prologue
    .line 3922
    const/4 v0, 0x0

    return v0
.end method

.method public getGprsState()I
    .locals 1

    .prologue
    .line 1658
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 1659
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getGprsState()I

    move-result v0

    return v0
.end method

.method public getGsmNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2974
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHtcNetworkType([Ljava/lang/String;)I
    .locals 2
    .parameter "stack"

    .prologue
    .line 3041
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getNetworkType()I

    move-result v1

    .line 3042
    .local v1, networkType:I
    const/4 v0, 0x0

    .line 3110
    .local v0, debugNetworkTypeShown:Z
    return v1
.end method

.method public getIncallRecordingFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2866
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 2087
    iget v0, p0, Lcom/android/phone/PhoneInterfaceManager;->lastError:I

    return v0
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    .line 2059
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1851
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1862
    :goto_0
    const/4 v1, 0x0

    .line 1865
    .local v1, cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v3, v4}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1871
    :goto_1
    return-object v1

    .line 1853
    .end local v1           #cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    :catch_0
    move-exception v2

    .line 1858
    .local v2, e:Ljava/lang/SecurityException;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1867
    .end local v2           #e:Ljava/lang/SecurityException;
    .restart local v1       #cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    :catch_1
    move-exception v2

    .line 1868
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNeighboringCellInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getNeighboringCellInfoExt(I)Ljava/util/List;
    .locals 1
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3885
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkType()I
    .locals 9

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 1967
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0xa8

    if-ne v7, v8, :cond_d

    sget-boolean v7, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_AND_LTE_SUPPORT:Z

    if-eqz v7, :cond_d

    .line 1969
    const-string v7, "gsm.network.type"

    const-string v8, "unknown"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1972
    .local v0, radioString:Ljava/lang/String;
    const-string v7, "GPRS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2036
    .end local v0           #radioString:Ljava/lang/String;
    :goto_0
    :pswitch_0
    return v2

    .line 1974
    .restart local v0       #radioString:Ljava/lang/String;
    :cond_0
    const-string v2, "EDGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 1975
    goto :goto_0

    .line 1976
    :cond_1
    const-string v2, "UMTS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    .line 1977
    goto :goto_0

    .line 1978
    :cond_2
    const-string v2, "HSDPA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1979
    const/16 v2, 0x8

    goto :goto_0

    .line 1980
    :cond_3
    const-string v2, "HSUPA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1981
    const/16 v2, 0x9

    goto :goto_0

    .line 1982
    :cond_4
    const-string v2, "HSPA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1983
    const/16 v2, 0xa

    goto :goto_0

    .line 1984
    :cond_5
    const-string v2, "CDMA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v5

    .line 1985
    goto :goto_0

    .line 1986
    :cond_6
    const-string v2, "CDMA - 1xRTT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1987
    const/4 v2, 0x7

    goto :goto_0

    .line 1988
    :cond_7
    const-string v2, "CDMA - EvDo rev. 0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1989
    const/4 v2, 0x5

    goto :goto_0

    .line 1990
    :cond_8
    const-string v2, "CDMA - EvDo rev. A"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1991
    const/4 v2, 0x6

    goto :goto_0

    .line 1992
    :cond_9
    const-string v2, "CDMA - EvDo rev. B"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1993
    const/16 v2, 0xc

    goto :goto_0

    .line 1994
    :cond_a
    const-string v2, "CDMA - eHRPD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1995
    const/16 v2, 0xe

    goto :goto_0

    .line 1996
    :cond_b
    const-string v2, "LTE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1997
    const/16 v2, 0xd

    goto :goto_0

    :cond_c
    move v2, v6

    .line 1999
    goto :goto_0

    .line 2004
    .end local v0           #radioString:Ljava/lang/String;
    :cond_d
    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v1

    .line 2005
    .local v1, radiotech:I
    packed-switch v1, :pswitch_data_0

    move v2, v6

    .line 2036
    goto/16 :goto_0

    :pswitch_1
    move v2, v3

    .line 2009
    goto/16 :goto_0

    :pswitch_2
    move v2, v4

    .line 2011
    goto/16 :goto_0

    .line 2013
    :pswitch_3
    const/16 v2, 0x8

    goto/16 :goto_0

    .line 2015
    :pswitch_4
    const/16 v2, 0x9

    goto/16 :goto_0

    .line 2017
    :pswitch_5
    const/16 v2, 0xa

    goto/16 :goto_0

    :pswitch_6
    move v2, v5

    .line 2020
    goto/16 :goto_0

    .line 2022
    :pswitch_7
    const/4 v2, 0x7

    goto/16 :goto_0

    .line 2024
    :pswitch_8
    const/4 v2, 0x5

    goto/16 :goto_0

    .line 2026
    :pswitch_9
    const/4 v2, 0x6

    goto/16 :goto_0

    .line 2028
    :pswitch_a
    const/16 v2, 0xc

    goto/16 :goto_0

    .line 2030
    :pswitch_b
    const/16 v2, 0xe

    goto/16 :goto_0

    .line 2032
    :pswitch_c
    const/16 v2, 0xd

    goto/16 :goto_0

    .line 2034
    :pswitch_d
    const/16 v2, 0xf

    goto/16 :goto_0

    .line 2005
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public getNetworkTypeExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3900
    const/4 v0, 0x0

    return v0
.end method

.method public getPdnSettings(I)Ljava/lang/String;
    .locals 2
    .parameter "profileSlot"

    .prologue
    .line 2987
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_AND_LTE_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 2988
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2989
    const/16 v0, 0xc

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2992
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPowerKeyFlag()Z
    .locals 6

    .prologue
    .line 1124
    const/4 v1, 0x0

    .line 1128
    .local v1, result:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getPowerKeyFlag()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v2, v1

    .line 1139
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 1132
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 1134
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 1137
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPowerKeyFlag result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 1139
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public getPreferredNetworkType()I
    .locals 2

    .prologue
    .line 3012
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 3013
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_AND_LTE_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 3014
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3017
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getServiceState()I
    .locals 1

    .prologue
    .line 2096
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 2097
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    return v0
.end method

.method public getSubsidyLockTypes()I
    .locals 1

    .prologue
    .line 1338
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 1339
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSubsidyLock()I

    move-result v0

    return v0
.end method

.method public getUSSDVerificationStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3299
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 3300
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUSSDVerificationStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUSSDVerificationStrings()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3309
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 3310
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUSSDVerificationStrings()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVTLoopBackMode()Z
    .locals 1

    .prologue
    .line 2970
    const/4 v0, 0x0

    return v0
.end method

.method public getVTSimulatedMode()Z
    .locals 1

    .prologue
    .line 2961
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public getVoiceMessageCountExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3892
    const/4 v0, 0x0

    return v0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .parameter "dialString"

    .prologue
    .line 1799
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1800
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public handlePinMmiExt(Ljava/lang/String;I)Z
    .locals 1
    .parameter "dialString"
    .parameter "phoneType"

    .prologue
    .line 3854
    const/4 v0, 0x0

    return v0
.end method

.method public hasIccCard()Z
    .locals 1

    .prologue
    .line 2047
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public hasIccCardExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3908
    const/4 v0, 0x0

    return v0
.end method

.method public hasVTCall()Z
    .locals 1

    .prologue
    .line 2978
    const/4 v0, 0x0

    return v0
.end method

.method public htcCdmaEndCall()Z
    .locals 2

    .prologue
    .line 2122
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCallPermission()V

    .line 2123
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public htcCdmaExitRadioPowerSaveMode()V
    .locals 1

    .prologue
    .line 2106
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 2107
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->htcCdmaExitRadioPowerSaveMode()V

    .line 2108
    return-void
.end method

.method public htcModemLinkOn()Z
    .locals 1

    .prologue
    .line 2114
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 2115
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->htcModemLinkOn()Z

    move-result v0

    return v0
.end method

.method public isCallWaiting()Z
    .locals 3

    .prologue
    .line 1311
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1313
    .local v0, ringingCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 1315
    const/4 v1, 0x1

    .line 1318
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isConcurrentVoiceAndData()Z
    .locals 1

    .prologue
    .line 3842
    const/4 v0, 0x0

    return v0
.end method

.method public isConcurrentVoiceAndDataExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3846
    const/4 v0, 0x0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossibleExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3850
    const/4 v0, 0x0

    return v0
.end method

.method public isFdnEnabled()Z
    .locals 2

    .prologue
    .line 2542
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    .line 2543
    .local v0, bEnable:Z
    return v0
.end method

.method public isIdle()Z
    .locals 2

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIdleExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3805
    const/4 v0, 0x0

    return v0
.end method

.method public isOffhook()Z
    .locals 2

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOffhookExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3797
    const/4 v0, 0x0

    return v0
.end method

.method public isRadioOn()Z
    .locals 2

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRadioOnExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3821
    const/4 v0, 0x0

    return v0
.end method

.method public isRinging()Z
    .locals 2

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRingingExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3801
    const/4 v0, 0x0

    return v0
.end method

.method public isSimPinEnabled()Z
    .locals 1

    .prologue
    .line 1327
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 1328
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isSimPinEnabled()Z

    move-result v0

    return v0
.end method

.method public isUimPinEnabled()Z
    .locals 1

    .prologue
    .line 3809
    const/4 v0, 0x0

    return v0
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 1952
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public performHtcPhoneAction(I)V
    .locals 7
    .parameter "action"

    .prologue
    const/4 v6, 0x4

    const/16 v5, 0x3e9

    const/4 v4, 0x0

    .line 3322
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performHtcPhoneAction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 3324
    packed-switch p1, :pswitch_data_0

    .line 3379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 3382
    :cond_0
    :goto_0
    return-void

    .line 3326
    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v1

    .line 3327
    .local v1, screen:Lcom/android/phone/InCallScreen;
    sget-boolean v2, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_KIDZONE:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->needKidzonePwd()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3330
    const/4 v2, 0x1

    invoke-direct {p0, v5, v2, v4}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(III)V

    goto :goto_0

    .line 3332
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(I)V

    goto :goto_0

    .line 3337
    .end local v1           #screen:Lcom/android/phone/InCallScreen;
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v1

    .line 3338
    .restart local v1       #screen:Lcom/android/phone/InCallScreen;
    sget-boolean v2, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_KIDZONE:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->needKidzonePwd()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3342
    const/4 v2, 0x2

    invoke-direct {p0, v5, v2, v4}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(III)V

    goto :goto_0

    .line 3344
    :cond_2
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3349
    .end local v1           #screen:Lcom/android/phone/InCallScreen;
    :pswitch_2
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(I)V

    goto :goto_0

    .line 3354
    :pswitch_3
    const-string v2, "ACTION_SEND_MSG"

    invoke-direct {p0, v2}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 3355
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v1

    .line 3356
    .restart local v1       #screen:Lcom/android/phone/InCallScreen;
    sget-boolean v2, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_KIDZONE:Z

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->needKidzonePwd()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3359
    invoke-direct {p0, v5, v6, v4}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(III)V

    goto :goto_0

    .line 3361
    :cond_3
    const/16 v2, 0x3c

    invoke-direct {p0, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(I)V

    goto :goto_0

    .line 3369
    .end local v1           #screen:Lcom/android/phone/InCallScreen;
    :pswitch_4
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 3370
    .local v0, notifier:Lcom/android/phone/CallNotifier;
    if-eqz v0, :cond_0

    .line 3371
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->ringAndTurnOnScreen()V

    goto :goto_0

    .line 3324
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public queryCAVE()I
    .locals 2

    .prologue
    .line 3698
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 3699
    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryMD5()I
    .locals 2

    .prologue
    .line 3727
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 3728
    const/16 v0, 0x6a

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public querySSDUpdate()I
    .locals 2

    .prologue
    .line 3706
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 3707
    const/16 v0, 0x72

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryUIMAUTH()I
    .locals 2

    .prologue
    .line 3731
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 3732
    const/16 v0, 0x76

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryVPM()I
    .locals 2

    .prologue
    .line 3718
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 3719
    const/16 v0, 0x6e

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public requestCAVE(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "randu"

    .prologue
    .line 3694
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3695
    const/16 v0, 0x64

    invoke-direct {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestCW_UW_DREG()V
    .locals 4

    .prologue
    .line 3683
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_0

    .line 3684
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3686
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    const/16 v2, 0x1f8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->requestCW_UW_DREG(Landroid/os/Message;)V

    .line 3689
    :cond_0
    return-void
.end method

.method public requestCW_UW_REG()V
    .locals 4

    .prologue
    .line 3675
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_0

    .line 3676
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3678
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    const/16 v2, 0x1f6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->requestCW_UW_REG(Landroid/os/Message;)V

    .line 3681
    :cond_0
    return-void
.end method

.method public requestEhrpdDomainNameChangeState()I
    .locals 2

    .prologue
    .line 3225
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3226
    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3228
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public requestGetEhrpdDeviceCapability()I
    .locals 2

    .prologue
    .line 3239
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3240
    const/16 v0, 0x25

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3242
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public requestGetEhrpdDisableCapability()I
    .locals 2

    .prologue
    .line 3232
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3233
    const/16 v0, 0x23

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3235
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public requestISIMRead(IIIII)Ljava/lang/String;
    .locals 6
    .parameter "command"
    .parameter "field"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"

    .prologue
    .line 3412
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3413
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 3414
    .local v0, isimThread:Lcom/android/phone/PhoneInterfaceManager$iSIMThread;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->start()V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 3415
    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->requestISIMRead(IIIII)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "chapid"
    .parameter "chapchallengelength"
    .parameter "chpachallenge"

    .prologue
    .line 3722
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3723
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 3724
    .local v0, paraMD5:[Ljava/lang/String;
    const/16 v1, 0x68

    invoke-direct {p0, v1, v0}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public requestQueryISIMSupported()Z
    .locals 2

    .prologue
    .line 3405
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3406
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 3407
    .local v0, isimThread:Lcom/android/phone/PhoneInterfaceManager$iSIMThread;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->start()V

    .line 3408
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->requestQueryISIMSupported()Z

    move-result v1

    return v1
.end method

.method public requestResetWSIMState()Z
    .locals 2

    .prologue
    .line 3426
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3427
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 3428
    .local v0, isimThread:Lcom/android/phone/PhoneInterfaceManager$iSIMThread;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->start()V

    .line 3429
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->requestResetWSIMState()Z

    move-result v1

    return v1
.end method

.method public requestSSDUpdate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "randssd"

    .prologue
    .line 3702
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3703
    const/16 v0, 0x70

    invoke-direct {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestSSDUpdateConfirm(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "authbs"

    .prologue
    .line 3710
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3711
    const/16 v0, 0x74

    invoke-direct {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestSetEhrpdDisableCapability(I)V
    .locals 2
    .parameter "ehrpdmode"

    .prologue
    .line 3219
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3220
    const/16 v0, 0x1e

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3222
    :cond_0
    return-void
.end method

.method public requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "command"

    .prologue
    .line 3419
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3420
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 3421
    .local v0, isimThread:Lcom/android/phone/PhoneInterfaceManager$iSIMThread;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->start()V

    .line 3422
    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManager$iSIMThread;->requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public requestSetLBSNTFY(I)V
    .locals 1
    .parameter "lbsvalue"

    .prologue
    .line 3669
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3670
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestSetLBSNTFY(I)V

    .line 3671
    return-void
.end method

.method public requestVPM()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3714
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3715
    const/16 v0, 0x6c

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public resetPdnForSettingsChange()V
    .locals 1

    .prologue
    .line 3004
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_AND_LTE_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 3005
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3006
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->resetPdnForSettingsChange()V

    .line 3009
    :cond_0
    return-void
.end method

.method public sendAT_BRIC()V
    .locals 3

    .prologue
    .line 1155
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1156
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 1157
    .local v0, commands:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "UNIAT"

    aput-object v2, v0, v1

    .line 1158
    const/4 v1, 0x1

    const-string v2, "AT@BRIC=1\r"

    aput-object v2, v0, v1

    .line 1159
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1160
    return-void
.end method

.method public sendAT_PushMail(II)V
    .locals 5
    .parameter "type"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1189
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 1191
    .local v0, commands:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "UNIAT"

    aput-object v2, v0, v1

    .line 1192
    if-nez p1, :cond_1

    .line 1193
    const-string v1, "AT+PushMail=0\r"

    aput-object v1, v0, v3

    .line 1199
    :goto_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x61

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xad

    if-ne v1, v2, :cond_2

    .line 1202
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, p2, v4}, Lcom/android/internal/telephony/Phone;->requestSetPushMailDormantTime(IILandroid/os/Message;)V

    .line 1210
    :goto_1
    return-void

    .line 1195
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+PushMail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    .line 1206
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1207
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1
.end method

.method public sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "command"

    .prologue
    .line 2656
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 2657
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 2659
    .local v1, result:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2661
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, p1, v4}, Lcom/android/internal/telephony/Phone;->genericSimIO(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2668
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 2670
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mCSIMResult:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2676
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 2678
    return-object v1

    .line 2672
    :catch_0
    move-exception v0

    .line 2674
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "interrupted while trying to sendAllowedCSIMCommand"

    invoke-direct {p0, v2}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2676
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public sendCmmbAuth3GReq([B[B)[B
    .locals 8
    .parameter "szRAND"
    .parameter "szAUTN"

    .prologue
    .line 2872
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 2873
    const/4 v3, 0x1

    new-array v2, v3, [B

    .line 2875
    .local v2, result:[B
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2877
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2878
    .local v1, p:Landroid/os/Parcel;
    const v3, 0x50001

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2879
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2880
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2881
    const-string v3, "PhoneInterfaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendCmmbAuth3GReq szRAND = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcom/android/phone/PhoneInterfaceManager;->parseString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " szAUTN = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p2, v6}, Lcom/android/phone/PhoneInterfaceManager;->parseString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    const/16 v7, 0x34

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 2886
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2890
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 2892
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mOemResult:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2899
    :goto_0
    :try_start_2
    monitor-exit v4

    .line 2901
    return-object v2

    .line 2895
    :catch_0
    move-exception v0

    .line 2897
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "interrupted while trying to sendCmmbAuthGSMReq"

    invoke-direct {p0, v3}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2899
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #p:Landroid/os/Parcel;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public sendCmmbAuthGSMReq([B)[B
    .locals 8
    .parameter "szRAND"

    .prologue
    .line 2905
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 2906
    const/4 v3, 0x1

    new-array v2, v3, [B

    .line 2908
    .local v2, result:[B
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2910
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2911
    .local v1, p:Landroid/os/Parcel;
    const/high16 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2912
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2913
    const-string v3, "PhoneInterfaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendCmmbAuthGSMReq szRAND(byte) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcom/android/phone/PhoneInterfaceManager;->parseString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    const/16 v7, 0x33

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 2918
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2922
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 2924
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mOemResult:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2931
    :goto_0
    :try_start_2
    monitor-exit v4

    .line 2933
    return-object v2

    .line 2927
    :catch_0
    move-exception v0

    .line 2929
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "interrupted while trying to sendCmmbAuthGSMReq"

    invoke-direct {p0, v3}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2931
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #p:Landroid/os/Parcel;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public sendLanguageChange(I)V
    .locals 4
    .parameter "languageCode"

    .prologue
    .line 3395
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3396
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 3397
    .local v0, commands:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "UNIAT"

    aput-object v2, v0, v1

    .line 3398
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AT+HTC_LANGUAGE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3400
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 3401
    return-void
.end method

.method public setActivePhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3930
    return-void
.end method

.method public setCFUNumber(ZLjava/lang/String;)Z
    .locals 2
    .parameter "enable"
    .parameter "dialNumber"

    .prologue
    .line 2639
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 2640
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 2641
    .local v0, setCFU:Lcom/android/phone/PhoneInterfaceManager$CFUHelper;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->start()V

    .line 2643
    invoke-virtual {v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager$CFUHelper;->setCFU(ZLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 3936
    const/4 v0, 0x1

    return v0
.end method

.method public setExtVoiceCallPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3916
    return-void
.end method

.method public setPdnSettings(ILjava/lang/String;)V
    .locals 3
    .parameter "profileSlot"
    .parameter "settings"

    .prologue
    .line 2996
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_AND_LTE_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 2997
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2998
    const/16 v0, 0xe

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3001
    :cond_0
    return-void
.end method

.method public setPowerKeyFlag()V
    .locals 2

    .prologue
    .line 1111
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1114
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->setPowerKeyFlag(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1120
    :goto_0
    return-void

    .line 1116
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPreferredNetworkType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 3022
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_AND_LTE_SUPPORT:Z

    if-eqz v0, :cond_1

    .line 3023
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->callingWithShareSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3027
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3029
    const/16 v0, 0x12

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3032
    :cond_1
    return-void
.end method

.method public setRadio(Z)Z
    .locals 1
    .parameter "turnOn"

    .prologue
    .line 1620
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1632
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1634
    const/4 v0, 0x1

    return v0
.end method

.method public setRadioExt(ZI)Z
    .locals 1
    .parameter "turnOn"
    .parameter "phoneType"

    .prologue
    .line 3830
    const/4 v0, 0x1

    return v0
.end method

.method public setTimeZone(ZI)V
    .locals 4
    .parameter "sign"
    .parameter "offset"

    .prologue
    .line 1163
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1164
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 1165
    .local v1, commands:[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "UNIAT"

    aput-object v3, v1, v2

    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1167
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v2, "at@settimezone="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    if-eqz p1, :cond_1

    .line 1169
    const-string v2, "1,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    :goto_0
    if-gez p2, :cond_0

    .line 1175
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1178
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1179
    const-string v2, "\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1181
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1182
    return-void

    .line 1171
    :cond_1
    const-string v2, "0,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public setUSSDVerificationStatus(Ljava/lang/String;)V
    .locals 1
    .parameter "status"

    .prologue
    .line 3304
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 3305
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUSSDVerificationStatus(Ljava/lang/String;)V

    .line 3306
    return-void
.end method

.method public setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "ussd"
    .parameter "hexCode"
    .parameter "digits"

    .prologue
    .line 3316
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 3317
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3318
    return-void
.end method

.method public setVTLoopBackMode(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2966
    return-void
.end method

.method public setVTSimulatedMode(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2957
    return-void
.end method

.method public showCallScreen()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1097
    invoke-direct {p0, v0, v0}, Lcom/android/phone/PhoneInterfaceManager;->showCallScreenInternal(ZZ)Z

    move-result v0

    return v0
.end method

.method public showCallScreenWithDialpad(Z)Z
    .locals 1
    .parameter "showDialpad"

    .prologue
    .line 1104
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->showCallScreenInternal(ZZ)Z

    move-result v0

    return v0
.end method

.method public silenceRinger()V
    .locals 1

    .prologue
    .line 1275
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1276
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(I)V

    .line 1277
    return-void
.end method

.method public silenceRingerExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3794
    return-void
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .locals 2
    .parameter "pin"

    .prologue
    .line 1344
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1345
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 1346
    .local v0, checkSimPin:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->start()V

    .line 1347
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->unlockSim(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public supplyPinExt(Ljava/lang/String;I)Z
    .locals 1
    .parameter "pin"
    .parameter "phoneType"

    .prologue
    .line 3813
    const/4 v0, 0x0

    return v0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "puk"
    .parameter "pin"

    .prologue
    .line 1351
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1352
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 1353
    .local v0, checkSimPuk:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->start()V

    .line 1354
    invoke-virtual {v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->unlockSim(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "type"
    .parameter "pin"

    .prologue
    .line 1368
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1369
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$CheckSubsidyLockPin;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$CheckSubsidyLockPin;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 1370
    .local v0, checkSubsidyLockPin:Lcom/android/phone/PhoneInterfaceManager$CheckSubsidyLockPin;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$CheckSubsidyLockPin;->start()V

    .line 1371
    invoke-virtual {v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager$CheckSubsidyLockPin;->checkSubsidyPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public switchHoldAndActiveCall()V
    .locals 3

    .prologue
    .line 2620
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 2623
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2629
    :goto_0
    return-void

    .line 2625
    :catch_0
    move-exception v0

    .line 2627
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "switchHoldAndActiveCall e="

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public toggleRadioOnOff()V
    .locals 2

    .prologue
    .line 1616
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1617
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1618
    return-void

    .line 1617
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toggleRadioOnOffExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3826
    return-void
.end method

.method public unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "puk"
    .parameter "newpin"

    .prologue
    .line 1359
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1360
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 1361
    .local v0, unBlockSimPin:Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;->start()V

    .line 1362
    invoke-virtual {v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;->unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public updateRegDregState(II)V
    .locals 2
    .parameter "state"
    .parameter "expire"

    .prologue
    .line 3736
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3738
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3739
    .local v0, it:Landroid/content/Intent;
    const-string v1, "cw_reg_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3740
    const-string v1, "cw_reg_expire"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3741
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3742
    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    .line 1609
    return-void
.end method

.method public updateServiceLocationExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3818
    return-void
.end method

.method public updateSipInviteState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "result"
    .parameter "ip"
    .parameter "port"
    .parameter "streamId"

    .prologue
    .line 3744
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 3746
    const-string v1, "cdma.cw.dataip"

    invoke-static {v1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3747
    const-string v1, "cdma.cw.dataport"

    invoke-static {v1, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3748
    const-string v1, "cdma.cw.streamid"

    invoke-static {v1, p4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3749
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_CW_SIP_INVITE_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3750
    .local v0, it:Landroid/content/Intent;
    const-string v1, "cw_sip_invite_result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3751
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3752
    return-void
.end method
