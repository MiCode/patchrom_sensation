.class public Lcom/android/phone/BluetoothHandsfree;
.super Ljava/lang/Object;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothHandsfree$38;,
        Lcom/android/phone/BluetoothHandsfree$DebugThread;,
        Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;,
        Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;,
        Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;,
        Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;,
        Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;,
        Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;
    }
.end annotation


# static fields
.field private static final BATTERY_CHANGED:I = 0xd

.field private static final BRSF_AG_EC_NR:I = 0x2

.field private static final BRSF_AG_ENHANCED_CALL_CONTROL:I = 0x80

.field private static final BRSF_AG_ENHANCED_CALL_STATUS:I = 0x40

.field private static final BRSF_AG_ENHANCED_ERR_RESULT_CODES:I = 0x100

.field private static final BRSF_AG_IN_BAND_RING:I = 0x8

.field private static final BRSF_AG_REJECT_CALL:I = 0x20

.field private static final BRSF_AG_THREE_WAY_CALLING:I = 0x1

.field private static final BRSF_AG_VOICE_RECOG:I = 0x4

.field private static final BRSF_AG_VOICE_TAG_NUMBE:I = 0x10

.field private static final BRSF_HF_CLIP:I = 0x4

.field private static final BRSF_HF_CW_THREE_WAY_CALLING:I = 0x2

.field private static final BRSF_HF_EC_NR:I = 0x1

.field private static final BRSF_HF_ENHANCED_CALL_CONTROL:I = 0x40

.field private static final BRSF_HF_ENHANCED_CALL_STATUS:I = 0x20

.field private static final BRSF_HF_REMOTE_VOL_CONTROL:I = 0x10

.field private static final BRSF_HF_VOICE_REG_ACT:I = 0x8

.field private static final BT_CAPABILITIES_NUM:I = 0x7

.field private static final CDMA_MAX_CONNECTIONS:I = 0x2

.field private static final CHECK_CALL_STARTED:I = 0x4

.field private static final CHECK_VOICE_RECOGNITION_STARTED:I = 0x5

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DELAYED_SCO_CLOSE:I = 0x9

.field private static final DTMF_SEND_CNF:I = 0xa

.field private static final GSM_MAX_CONNECTIONS:I = 0x6

.field private static final HEADSET_NAME:Ljava/lang/String; = "bt_headset_name"

.field private static final HEADSET_NREC:Ljava/lang/String; = "bt_headset_nrec"

.field private static final MESSAGE_CHECK_PENDING_ANSWER:I = 0x8

.field private static final MESSAGE_CHECK_PENDING_CIEV:I = 0x7

.field private static final MESSAGE_CHECK_PENDING_SCO:I = 0x6

.field private static final SCO_AUDIO_STATE:I = 0xb

.field private static final SCO_CLOSED:I = 0x3

.field private static final SCO_CONNECTION_CHECK:I = 0xc

.field private static final SIGNAL_STRENGTH_CHANGED:I = 0xe

.field private static final START_CALL_TIMEOUT:I = 0x2710

.field private static final START_VOICE_RECOGNITION_TIMEOUT:I = 0x1388

.field private static final STOP_TONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Bluetooth HS/HF"

.field private static final TONE_LENGTH_MS:I = 0x96

.field private static final TONE_RELATIVE_VOLUME:I = 0x32

.field public static final TYPE_HANDSFREE:I = 0x2

.field public static final TYPE_HEADSET:I = 0x1

.field public static final TYPE_UNKNOWN:I

.field private static final VDBG:Z

.field private static sInstance:Lcom/android/phone/BluetoothHandsfree;

.field private static sVoiceCommandIntent:Landroid/content/Intent;


# instance fields
.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

.field private mA2dpState:I

.field private mA2dpSuspended:Z

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioPossible:Z

.field private mAudioState:I

.field private mBgndEarliestConnectionTime:J

.field private mBiaArray:[I

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private final mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

.field private mCDMAToneEnabled:Z

.field private final mCM:Lcom/android/internal/telephony/CallManager;

.field private mCcwa:Z

.field private mCdmaIsSecondCallActive:Z

.field mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

.field private mClccTimestamps:[J

.field private mClccUsed:[Z

.field private mClip:Z

.field private mCmee:Z

.field private mColp:Z

.field private mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

.field private mConnectedSco:Landroid/bluetooth/BluetoothSocket;

.field private final mContext:Landroid/content/Context;

.field private mDTMFBurstCnfPending:Z

.field private mDTMFQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

.field private mFakeCall:I

.field private mFakeCallsetup:I

.field private mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

.field private mHeadset:Landroid/bluetooth/HeadsetBase;

.field private mHeadsetType:I

.field private mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

.field private mIndicatorsEnabled:Z

.field private mIsPTS:Z

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mLocalBrsf:I

.field private mPendingAnswer:Z

.field private mPendingAudioState:Z

.field private mPendingBusyTone:Z

.field private mPendingCIEV:Z

.field private mPendingSco:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneState:Lcom/android/internal/telephony/Phone$State;

.field private final mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mPsCallState:I

.field private mRemoteBrsf:I

.field private mRing:Z

.field private mScoGain:I

.field private mServiceConnectionEstablished:Z

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

.field private final mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mSkypeOut:Z

.field private mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field mToneStopper:Landroid/os/Handler;

.field private mUserWantsAudio:Z

.field private mVirtualCallStarted:Z

.field private mVoiceRecognitionStarted:Z

.field private mWaitingForCallStart:Z

.field private mWaitingForVoiceRecognition:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V
    .locals 13
    .parameter "context"
    .parameter "cm"

    .prologue
    const/4 v12, 0x2

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 276
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput v8, p0, Lcom/android/phone/BluetoothHandsfree;->mFakeCall:I

    .line 105
    iput v8, p0, Lcom/android/phone/BluetoothHandsfree;->mFakeCallsetup:I

    .line 106
    iput v8, p0, Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I

    .line 107
    iput-boolean v8, p0, Lcom/android/phone/BluetoothHandsfree;->mSkypeOut:Z

    .line 119
    iput-object v11, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    .line 120
    iput-object v11, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    .line 121
    iput-object v11, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    .line 127
    iput-boolean v8, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingCIEV:Z

    .line 128
    iput-boolean v8, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingAnswer:Z

    .line 129
    iput-boolean v8, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingBusyTone:Z

    .line 131
    iput-boolean v8, p0, Lcom/android/phone/BluetoothHandsfree;->mRing:Z

    .line 141
    iput-boolean v8, p0, Lcom/android/phone/BluetoothHandsfree;->mCcwa:Z

    .line 142
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J

    .line 143
    iput-boolean v8, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    .line 144
    iput-boolean v8, p0, Lcom/android/phone/BluetoothHandsfree;->mColp:Z

    .line 145
    iput-boolean v8, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    .line 146
    iput-boolean v8, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    .line 158
    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 159
    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 163
    const/high16 v6, -0x8000

    iput v6, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    .line 179
    new-instance v6, Ljava/lang/Object;

    invoke-direct/range {v6 .. v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGeneratorLock:Ljava/lang/Object;

    .line 180
    iput-boolean v8, p0, Lcom/android/phone/BluetoothHandsfree;->mCDMAToneEnabled:Z

    .line 183
    iput-boolean v8, p0, Lcom/android/phone/BluetoothHandsfree;->mDTMFBurstCnfPending:Z

    .line 185
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mDTMFQueue:Ljava/util/Queue;

    .line 187
    iput-boolean v8, p0, Lcom/android/phone/BluetoothHandsfree;->mIsPTS:Z

    .line 189
    iput v8, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    .line 190
    iput v8, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    .line 194
    const/4 v6, 0x7

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mBiaArray:[I

    .line 201
    iput-boolean v8, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    .line 223
    iput-boolean v8, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    .line 258
    new-instance v6, Lcom/android/phone/BluetoothHandsfree$1;

    invoke-direct {v6, p0}, Lcom/android/phone/BluetoothHandsfree$1;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mSimReceiver:Landroid/content/BroadcastReceiver;

    .line 2250
    new-instance v6, Lcom/android/phone/BluetoothHandsfree$2;

    invoke-direct {v6, p0}, Lcom/android/phone/BluetoothHandsfree$2;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 2275
    new-instance v6, Lcom/android/phone/BluetoothHandsfree$3;

    invoke-direct {v6, p0}, Lcom/android/phone/BluetoothHandsfree$3;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mToneStopper:Landroid/os/Handler;

    .line 278
    iput-object p2, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 279
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 280
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    .line 281
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 282
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v6, :cond_8

    move v1, v7

    .line 283
    .local v1, bluetoothCapable:Z
    :goto_0
    iput-object v11, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    .line 284
    iput v8, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    .line 285
    if-eqz v1, :cond_0

    .line 286
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v9, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v6, v9, v10, v12}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 289
    :cond_0
    iput v8, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    .line 290
    iput-object v11, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 291
    iput-boolean v8, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    .line 293
    const-string v6, "power"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mPowerManager:Landroid/os/PowerManager;

    .line 294
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mPowerManager:Landroid/os/PowerManager;

    const-string v9, "Bluetooth HS/HF:StartCall"

    invoke-virtual {v6, v7, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 296
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 297
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mPowerManager:Landroid/os/PowerManager;

    const-string v9, "Bluetooth HS/HF:VoiceRecognition"

    invoke-virtual {v6, v7, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 299
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 301
    const-string v6, "keyguard"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 302
    .local v3, km:Landroid/app/KeyguardManager;
    const-string v6, "Bluetooth HS/HF"

    invoke-virtual {v3, v6}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 304
    const/16 v6, 0x162

    iput v6, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    .line 309
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0xab

    if-ne v6, v9, :cond_1

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v9, 0x63

    if-eq v6, v9, :cond_2

    .line 312
    :cond_1
    iget v6, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    .line 314
    :cond_2
    sget-object v6, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    if-nez v6, :cond_5

    .line 315
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    .line 316
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0x9b

    if-ne v6, v9, :cond_4

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v9, 0x30

    if-eq v6, v9, :cond_3

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v9, 0x20

    if-ne v6, v9, :cond_4

    .line 319
    :cond_3
    sget-object v6, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    const-string v9, "com.nuance.android.vsuite.vsuiteapp"

    const-string v10, "com.nuance.android.vsuite.vsuiteapp.VSuiteStartSession"

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    :cond_4
    sget-object v6, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    const/high16 v9, 0x1000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 324
    :cond_5
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    sget-object v9, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    invoke-virtual {v6, v9, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/bluetooth/BluetoothHeadset;->isBluetoothVoiceDialingEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 326
    iget v6, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    .line 329
    :cond_6
    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "BluetoothHandsfreeHandler"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 330
    .local v5, thread:Landroid/os/HandlerThread;
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 331
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 332
    .local v4, looper:Landroid/os/Looper;
    new-instance v6, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    invoke-direct {v6, p0, v4, v11}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;-><init>(Lcom/android/phone/BluetoothHandsfree;Landroid/os/Looper;Lcom/android/phone/BluetoothHandsfree$1;)V

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    .line 334
    new-instance v6, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    invoke-direct {v6, p0, v11}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    .line 335
    iput-boolean v7, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    .line 336
    iput-boolean v8, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    .line 337
    iput-boolean v8, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    .line 338
    new-instance v6, Lcom/android/phone/BluetoothAtPhonebook;

    iget-object v9, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9, p0}, Lcom/android/phone/BluetoothAtPhonebook;-><init>(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;)V

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    .line 339
    const-string v6, "audio"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    .line 340
    invoke-virtual {p0, v8}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    .line 342
    if-eqz v1, :cond_7

    .line 343
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->resetAtState()V

    .line 346
    :cond_7
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "dtmf_tone_type"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 348
    .local v0, DTMFToneType:I
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v12, :cond_9

    move v6, v7

    :goto_1
    if-nez v0, :cond_a

    :goto_2
    and-int/2addr v6, v7

    iput-boolean v6, p0, Lcom/android/phone/BluetoothHandsfree;->mCDMAToneEnabled:Z

    .line 351
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 352
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string v6, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 355
    return-void

    .end local v0           #DTMFToneType:I
    .end local v1           #bluetoothCapable:Z
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v3           #km:Landroid/app/KeyguardManager;
    .end local v4           #looper:Landroid/os/Looper;
    .end local v5           #thread:Landroid/os/HandlerThread;
    :cond_8
    move v1, v8

    .line 282
    goto/16 :goto_0

    .restart local v0       #DTMFToneType:I
    .restart local v1       #bluetoothCapable:Z
    .restart local v3       #km:Landroid/app/KeyguardManager;
    .restart local v4       #looper:Landroid/os/Looper;
    .restart local v5       #thread:Landroid/os/HandlerThread;
    :cond_9
    move v6, v8

    .line 348
    goto :goto_1

    :cond_a
    move v7, v8

    goto :goto_2

    .line 194
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothAtPhonebook;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    return-object v0
.end method

.method static synthetic access$10100(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->inDebug()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mSkypeOut:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mSkypeOut:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mFakeCallsetup:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/phone/BluetoothHandsfree;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mFakeCallsetup:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mFakeCall:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/phone/BluetoothHandsfree;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mFakeCall:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->resetConnectScoThread()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->closeConnectedSco()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRing:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mRing:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingAnswer:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingAnswer:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mColp:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mColp:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/phone/BluetoothHandsfree;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone$State;)Lcom/android/internal/telephony/Phone$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    return v0
.end method

.method static synthetic access$3502(Lcom/android/phone/BluetoothHandsfree;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    return p1
.end method

.method static synthetic access$3600(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingCIEV:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingCIEV:Z

    return p1
.end method

.method static synthetic access$3700()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    return v0
.end method

.method static synthetic access$3800(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-static {p0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->allowAudioAnytime()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->connectScoThread()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/phone/BluetoothHandsfree;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBiaArray:[I

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/phone/BluetoothHandsfree;)Ljava/util/Queue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDTMFQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mDTMFBurstCnfPending:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->callStarted()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I

    return v0
.end method

.method static synthetic access$4602(Lcom/android/phone/BluetoothHandsfree;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I

    return p1
.end method

.method static synthetic access$4700(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    return v0
.end method

.method static synthetic access$4702(Lcom/android/phone/BluetoothHandsfree;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    return p1
.end method

.method static synthetic access$4800(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/phone/BluetoothHandsfree;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J

    return-wide v0
.end method

.method static synthetic access$5002(Lcom/android/phone/BluetoothHandsfree;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCcwa:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mCcwa:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    return v0
.end method

.method static synthetic access$5300(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5402(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingBusyTone:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    return v0
.end method

.method static synthetic access$5702(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    return v0
.end method

.method static synthetic access$5902(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/phone/BluetoothHandsfree;)Landroid/app/KeyguardManager$KeyguardLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$6702(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$6800(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingAudioState:Z

    return v0
.end method

.method static synthetic access$6802(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingAudioState:Z

    return p1
.end method

.method static synthetic access$6900(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioState:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    return-object v0
.end method

.method static synthetic access$7002(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/android/phone/BluetoothHandsfree;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGeneratorLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/ToneGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$7202(Lcom/android/phone/BluetoothHandsfree;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGenerator:Landroid/media/ToneGenerator;

    return-object p1
.end method

.method static synthetic access$7900(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->redial()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/BluetoothHandsfree;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree;->setAudioState(ILandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    return v0
.end method

.method static synthetic access$8002(Lcom/android/phone/BluetoothHandsfree;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    return p1
.end method

.method static synthetic access$8100(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/phone/BluetoothHandsfree;I)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->doSpeedDial(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->expectCallStart()V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIsPTS:Z

    return v0
.end method

.method static synthetic access$8500(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isIncallAudio()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8600(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    return v0
.end method

.method static synthetic access$8602(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    return-object p1
.end method

.method static synthetic access$9100(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCDMAToneEnabled:Z

    return v0
.end method

.method static synthetic access$9200(Lcom/android/phone/BluetoothHandsfree;C)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->sendShortDtmfToNetwork(C)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->cdmaGetClccResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9400(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->gsmGetClccResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVoiceRecognitionInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9600(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isCellularCallInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9700()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->expectVoiceRecognition()V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;II[Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 80
    invoke-direct/range {p0 .. p5}, Lcom/android/phone/BluetoothHandsfree;->broadcastVendorSpecificEventIntent(Ljava/lang/String;II[Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private allowAudioAnytime()Z
    .locals 3

    .prologue
    .line 4245
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-eqz v2, :cond_0

    .line 4246
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 4247
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 4248
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4249
    .local v1, name:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    if-nez v2, :cond_0

    const-string v2, "Parrot 3200LS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4250
    const/4 v2, 0x0

    .line 4253
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #name:Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private broadcastVendorSpecificEventIntent(Ljava/lang/String;II[Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "command"
    .parameter "companyId"
    .parameter "commandType"
    .parameter "arguments"
    .parameter "device"

    .prologue
    .line 2449
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2451
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2452
    const-string v1, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2455
    const-string v1, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_ARGS"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2456
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.bluetooth.headset.intent.category.companyid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2461
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2462
    return-void
.end method

.method private declared-synchronized callStarted()V
    .locals 1

    .prologue
    .line 4122
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    if-eqz v0, :cond_0

    .line 4123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    .line 4124
    const-string v0, "OK"

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 4125
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4126
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4129
    :cond_0
    monitor-exit p0

    return-void

    .line 4122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private cdmaConnectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 12
    .parameter "index"
    .parameter "c"

    .prologue
    .line 2987
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2988
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 2989
    .local v3, foregroundCall:Lcom/android/internal/telephony/Call;
    iget-object v10, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v10}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    .line 2991
    .local v1, currCdmaCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    iget-object v10, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v10}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v6

    .line 2994
    .local v6, prevCdmaCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v10, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v6, v10, :cond_3

    sget-object v10, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v10, :cond_3

    .line 2998
    const/4 v8, 0x0

    .line 3038
    .local v8, state:I
    :goto_0
    const/4 v4, 0x0

    .line 3039
    .local v4, mpty:I
    sget-object v10, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v10, :cond_9

    .line 3040
    sget-object v10, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v6, v10, :cond_8

    .line 3043
    const/4 v4, 0x1

    .line 3057
    .end local v3           #foregroundCall:Lcom/android/internal/telephony/Call;
    :cond_0
    :goto_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v2, 0x1

    .line 3059
    .local v2, direction:I
    :goto_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 3060
    .local v5, number:Ljava/lang/String;
    const/4 v9, -0x1

    .line 3061
    .local v9, type:I
    if-eqz v5, :cond_1

    .line 3062
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v9

    .line 3065
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+CLCC: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, p1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",0,"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3066
    .local v7, result:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 3067
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3069
    .end local v2           #direction:I
    .end local v4           #mpty:I
    .end local v5           #number:Ljava/lang/String;
    .end local v7           #result:Ljava/lang/String;
    .end local v8           #state:I
    .end local v9           #type:I
    :cond_2
    :goto_3
    return-object v7

    .line 3000
    .restart local v3       #foregroundCall:Lcom/android/internal/telephony/Call;
    :cond_3
    sget-object v10, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SWITCH_PARTIES_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v10, :cond_4

    move-object v10, v3

    check-cast v10, Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CdmaCall;->isGeneric()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 3002
    const-string v10, ">>>>>special case : CALL IN PROGRESS<<<<<"

    invoke-static {v10}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3003
    const/4 v8, 0x0

    .restart local v8       #state:I
    goto/16 :goto_0

    .line 3006
    .end local v8           #state:I
    :cond_4
    sget-object v10, Lcom/android/phone/BluetoothHandsfree$38;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 3034
    :pswitch_0
    const/4 v7, 0x0

    goto :goto_3

    .line 3012
    :pswitch_1
    if-nez p1, :cond_6

    .line 3013
    iget-boolean v10, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    if-eqz v10, :cond_5

    const/4 v8, 0x1

    .restart local v8       #state:I
    :goto_4
    goto/16 :goto_0

    .end local v8           #state:I
    :cond_5
    const/4 v8, 0x0

    goto :goto_4

    .line 3015
    :cond_6
    iget-boolean v10, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    if-eqz v10, :cond_7

    const/4 v8, 0x0

    .line 3017
    .restart local v8       #state:I
    :goto_5
    goto/16 :goto_0

    .line 3015
    .end local v8           #state:I
    :cond_7
    const/4 v8, 0x1

    goto :goto_5

    .line 3019
    :pswitch_2
    const/4 v8, 0x1

    .line 3020
    .restart local v8       #state:I
    goto/16 :goto_0

    .line 3022
    .end local v8           #state:I
    :pswitch_3
    const/4 v8, 0x2

    .line 3023
    .restart local v8       #state:I
    goto/16 :goto_0

    .line 3025
    .end local v8           #state:I
    :pswitch_4
    const/4 v8, 0x3

    .line 3026
    .restart local v8       #state:I
    goto/16 :goto_0

    .line 3028
    .end local v8           #state:I
    :pswitch_5
    const/4 v8, 0x4

    .line 3029
    .restart local v8       #state:I
    goto/16 :goto_0

    .line 3031
    .end local v8           #state:I
    :pswitch_6
    const/4 v8, 0x5

    .line 3032
    .restart local v8       #state:I
    goto/16 :goto_0

    .line 3050
    .restart local v4       #mpty:I
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 3052
    :cond_9
    sget-object v10, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SWITCH_PARTIES_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v10, :cond_0

    check-cast v3, Lcom/android/internal/telephony/cdma/CdmaCall;

    .end local v3           #foregroundCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->isGeneric()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3054
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 3057
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 3006
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized cdmaGetClccResult()Landroid/bluetooth/AtCommandResult;
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 2911
    monitor-enter p0

    const/4 v9, 0x2

    :try_start_0
    new-array v0, v9, [Lcom/android/internal/telephony/Connection;

    .line 2912
    .local v0, clccConnections:[Lcom/android/internal/telephony/Connection;
    iget-object v9, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 2913
    .local v4, foregroundCall:Lcom/android/internal/telephony/Call;
    iget-object v9, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 2915
    .local v7, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 2918
    .local v8, ringingCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v9, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_2

    .line 2920
    const/4 v9, 0x0

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    aput-object v10, v0, v9

    .line 2953
    :cond_0
    :goto_0
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2954
    .local v6, result:Landroid/bluetooth/AtCommandResult;
    const/4 v3, 0x0

    .line 2955
    .local v3, fakeClccEntry:Ljava/lang/String;
    iget v9, p0, Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I

    if-ne v9, v12, :cond_5

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    if-nez v9, :cond_5

    .line 2956
    const-string v3, "+CLCC: 1,1,0,0,1,\"SKYPE & PHONE\",129"

    .line 2957
    invoke-virtual {v6, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2981
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v6

    .line 2921
    .end local v3           #fakeClccEntry:Ljava/lang/String;
    .end local v6           #result:Landroid/bluetooth/AtCommandResult;
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2923
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2925
    const/4 v9, 0x0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    aput-object v10, v0, v9

    .line 2926
    const/4 v9, 0x1

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    aput-object v10, v0, v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2911
    .end local v0           #clccConnections:[Lcom/android/internal/telephony/Connection;
    .end local v4           #foregroundCall:Lcom/android/internal/telephony/Call;
    .end local v7           #ringingCall:Lcom/android/internal/telephony/Call;
    .end local v8           #ringingCallState:Lcom/android/internal/telephony/Call$State;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 2928
    .restart local v0       #clccConnections:[Lcom/android/internal/telephony/Connection;
    .restart local v4       #foregroundCall:Lcom/android/internal/telephony/Call;
    .restart local v7       #ringingCall:Lcom/android/internal/telephony/Call;
    .restart local v8       #ringingCallState:Lcom/android/internal/telephony/Call$State;
    :cond_3
    :try_start_2
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-gt v9, v11, :cond_4

    .line 2931
    const/4 v9, 0x0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    aput-object v10, v0, v9

    goto :goto_0

    .line 2936
    :cond_4
    const/4 v9, 0x0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    aput-object v10, v0, v9

    .line 2937
    const/4 v9, 0x1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    aput-object v10, v0, v9

    goto :goto_0

    .line 2960
    .restart local v3       #fakeClccEntry:Ljava/lang/String;
    .restart local v6       #result:Landroid/bluetooth/AtCommandResult;
    :cond_5
    const/4 v2, 0x1

    .line 2961
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    array-length v9, v0

    if-ge v5, v9, :cond_7

    aget-object v9, v0, v5

    if-eqz v9, :cond_7

    .line 2962
    aget-object v9, v0, v5

    invoke-direct {p0, v5, v9}, Lcom/android/phone/BluetoothHandsfree;->cdmaConnectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v1

    .line 2963
    .local v1, clccEntry:Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 2964
    invoke-virtual {v6, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2965
    add-int/lit8 v2, v2, 0x1

    .line 2961
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2968
    .end local v1           #clccEntry:Ljava/lang/String;
    :cond_7
    iget v9, p0, Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I

    if-ne v9, v12, :cond_9

    .line 2969
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+CLCC: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",1,0,0,0,\"Skype\",129"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2978
    :cond_8
    :goto_3
    if-eqz v3, :cond_1

    invoke-virtual {v6, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto :goto_1

    .line 2971
    :cond_9
    iget v9, p0, Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I

    if-ne v9, v11, :cond_8

    .line 2972
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2973
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+CLCC: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",1,5,0,0,\"Skype\",129"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 2975
    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+CLCC: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",1,4,0,0,\"Skype\",129"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_3
.end method

.method private closeConnectedSco()V
    .locals 4

    .prologue
    .line 650
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    if-eqz v2, :cond_1

    .line 652
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :goto_0
    const/4 v0, 0x0

    .line 658
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-eqz v2, :cond_0

    .line 659
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 661
    :cond_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 662
    const/16 v2, 0xa

    invoke-direct {p0, v2, v0}, Lcom/android/phone/BluetoothHandsfree;->setAudioState(ILandroid/bluetooth/BluetoothDevice;)V

    .line 664
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    .line 666
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    return-void

    .line 653
    :catch_0
    move-exception v1

    .line 654
    .local v1, e:Ljava/io/IOException;
    const-string v2, "Bluetooth HS/HF"

    const-string v3, "Error when closing Sco socket"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private configAudioParameters()V
    .locals 4

    .prologue
    .line 786
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 788
    const-string v0, "<unknown>"

    .line 790
    :cond_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bt_headset_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bt_headset_nrec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=on"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 791
    return-void
.end method

.method private connectScoThread()V
    .locals 4

    .prologue
    .line 624
    const-class v2, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    monitor-enter v2

    .line 626
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    if-nez v1, :cond_1

    .line 627
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 628
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_0

    .line 629
    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lcom/android/phone/BluetoothHandsfree;->setAudioState(ILandroid/bluetooth/BluetoothDevice;)V

    .line 632
    :cond_0
    new-instance v1, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v3}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;-><init>(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    .line 633
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    const-string v3, "HandsfreeScoSocketConnectThread"

    invoke-virtual {v1, v3}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->setName(Ljava/lang/String;)V

    .line 635
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->start()V

    .line 637
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    monitor-exit v2

    .line 638
    return-void

    .line 637
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private connectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 13
    .parameter "index"
    .parameter "c"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2854
    sget-object v11, Lcom/android/phone/BluetoothHandsfree$38;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 2874
    :pswitch_0
    const/4 v6, 0x0

    .line 2903
    :cond_0
    :goto_0
    return-object v6

    .line 2856
    :pswitch_1
    const/4 v7, 0x0

    .line 2876
    .local v7, state:I
    :goto_1
    iget-object v11, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_1

    if-ne v7, v9, :cond_1

    .line 2877
    iget-object v11, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v11}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 2878
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_1

    .line 2879
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2880
    .local v4, name:Ljava/lang/String;
    const-string v11, "Parrot 3200LS"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2881
    const/4 v7, 0x0

    .line 2885
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 2886
    .local v3, mpty:I
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2887
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_2

    .line 2888
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v11

    if-eqz v11, :cond_4

    move v3, v9

    .line 2891
    :cond_2
    :goto_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v11

    if-eqz v11, :cond_5

    move v2, v9

    .line 2893
    .local v2, direction:I
    :goto_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 2894
    .local v5, number:Ljava/lang/String;
    const/4 v8, -0x1

    .line 2895
    .local v8, type:I
    if-eqz v5, :cond_3

    .line 2896
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v8

    .line 2899
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+CLCC: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, p1, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",0,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2900
    .local v6, result:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 2901
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 2859
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    .end local v2           #direction:I
    .end local v3           #mpty:I
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #result:Ljava/lang/String;
    .end local v7           #state:I
    .end local v8           #type:I
    :pswitch_2
    const/4 v7, 0x1

    .line 2860
    .restart local v7       #state:I
    goto/16 :goto_1

    .line 2862
    .end local v7           #state:I
    :pswitch_3
    const/4 v7, 0x2

    .line 2863
    .restart local v7       #state:I
    goto/16 :goto_1

    .line 2865
    .end local v7           #state:I
    :pswitch_4
    const/4 v7, 0x3

    .line 2866
    .restart local v7       #state:I
    goto/16 :goto_1

    .line 2868
    .end local v7           #state:I
    :pswitch_5
    const/4 v7, 0x4

    .line 2869
    .restart local v7       #state:I
    goto/16 :goto_1

    .line 2871
    .end local v7           #state:I
    :pswitch_6
    const/4 v7, 0x5

    .line 2872
    .restart local v7       #state:I
    goto/16 :goto_1

    .restart local v0       #call:Lcom/android/internal/telephony/Call;
    .restart local v3       #mpty:I
    :cond_4
    move v3, v10

    .line 2888
    goto :goto_2

    :cond_5
    move v2, v10

    .line 2891
    goto :goto_3

    .line 2854
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method private doSpeedDial(I)Landroid/bluetooth/AtCommandResult;
    .locals 8
    .parameter "location"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x1000

    const/4 v5, 0x1

    .line 2712
    if-ne p1, v5, :cond_1

    .line 2714
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    .line 2715
    .local v2, voiceMailNumber:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2716
    const-string v3, "Bluetooth HS/HF"

    const-string v4, ">>>>No Voice Mail Number<<<<"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2746
    .end local v2           #voiceMailNumber:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 2720
    .restart local v2       #voiceMailNumber:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2723
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "voicemail"

    const-string v5, ""

    invoke-static {v4, v5, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2725
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2726
    invoke-static {v0}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z

    .line 2745
    .end local v2           #voiceMailNumber:Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->expectCallStart()V

    .line 2746
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 2728
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-virtual {v3, p1}, Lcom/android/phone/BluetoothAtPhonebook;->getSpeedDialNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 2729
    .local v1, number:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 2730
    const-string v3, "Bluetooth HS/HF"

    const-string v4, ">>>>No Speed Dial Number<<<<"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 2734
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2736
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    invoke-static {v4, v1, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2738
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2739
    invoke-static {v0}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private declared-synchronized expectCallStart()V
    .locals 4

    .prologue
    .line 4113
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    .line 4114
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 4115
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4116
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4117
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4119
    :cond_0
    monitor-exit p0

    return-void

    .line 4113
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized expectVoiceRecognition()V
    .locals 7

    .prologue
    .line 4134
    monitor-enter p0

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    .line 4135
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/phone/BluetoothHandsfree;->setAVRCPOn(Z)V

    .line 4136
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 4137
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4138
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4139
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 4140
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v3}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 4141
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4143
    .local v2, pm:Landroid/os/IPowerManager;
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4148
    .end local v2           #pm:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 4144
    .restart local v2       #pm:Landroid/os/IPowerManager;
    :catch_0
    move-exception v0

    .line 4145
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Bluetooth HS/HF"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4134
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #pm:Landroid/os/IPowerManager;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 2246
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 2247
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized gsmGetClccResult()Landroid/bluetooth/AtCommandResult;
    .locals 25

    .prologue
    .line 2754
    monitor-enter p0

    const/16 v23, 0x6

    :try_start_0
    move/from16 v0, v23

    new-array v4, v0, [Lcom/android/internal/telephony/Connection;

    .line 2755
    .local v4, clccConnections:[Lcom/android/internal/telephony/Connection;
    new-instance v18, Ljava/util/LinkedList;

    invoke-direct/range {v18 .. v18}, Ljava/util/LinkedList;-><init>()V

    .line 2756
    .local v18, newConnections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 2758
    .local v7, connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    .line 2759
    .local v13, foregroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 2760
    .local v2, backgroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v20

    .line 2762
    .local v20, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 2763
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 2765
    :cond_0
    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 2766
    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 2768
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 2769
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 2773
    :cond_2
    const/16 v23, 0x6

    move/from16 v0, v23

    new-array v6, v0, [Z

    .line 2774
    .local v6, clccUsed:[Z
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    const/16 v23, 0x6

    move/from16 v0, v23

    if-ge v15, v0, :cond_3

    .line 2775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v23, v0

    aget-boolean v23, v23, v15

    aput-boolean v23, v6, v15

    .line 2776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-boolean v24, v23, v15

    .line 2774
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 2778
    :cond_3
    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 2779
    .local v3, c:Lcom/android/internal/telephony/Connection;
    const/4 v14, 0x0

    .line 2780
    .local v14, found:Z
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v21

    .line 2781
    .local v21, timestamp:J
    const/4 v15, 0x0

    :goto_2
    const/16 v23, 0x6

    move/from16 v0, v23

    if-ge v15, v0, :cond_5

    .line 2782
    aget-boolean v23, v6, v15

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccTimestamps:[J

    move-object/from16 v23, v0

    aget-wide v23, v23, v15

    cmp-long v23, v21, v23

    if-nez v23, :cond_6

    .line 2783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aput-boolean v24, v23, v15

    .line 2784
    const/4 v14, 0x1

    .line 2785
    aput-object v3, v4, v15

    .line 2789
    :cond_5
    if-nez v14, :cond_4

    .line 2790
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2754
    .end local v2           #backgroundCall:Lcom/android/internal/telephony/Call;
    .end local v3           #c:Lcom/android/internal/telephony/Connection;
    .end local v4           #clccConnections:[Lcom/android/internal/telephony/Connection;
    .end local v6           #clccUsed:[Z
    .end local v7           #connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .end local v13           #foregroundCall:Lcom/android/internal/telephony/Call;
    .end local v14           #found:Z
    .end local v15           #i:I
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v18           #newConnections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .end local v20           #ringingCall:Lcom/android/internal/telephony/Call;
    .end local v21           #timestamp:J
    :catchall_0
    move-exception v23

    monitor-exit p0

    throw v23

    .line 2781
    .restart local v2       #backgroundCall:Lcom/android/internal/telephony/Call;
    .restart local v3       #c:Lcom/android/internal/telephony/Connection;
    .restart local v4       #clccConnections:[Lcom/android/internal/telephony/Connection;
    .restart local v6       #clccUsed:[Z
    .restart local v7       #connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .restart local v13       #foregroundCall:Lcom/android/internal/telephony/Call;
    .restart local v14       #found:Z
    .restart local v15       #i:I
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v18       #newConnections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .restart local v20       #ringingCall:Lcom/android/internal/telephony/Call;
    .restart local v21       #timestamp:J
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 2811
    .end local v3           #c:Lcom/android/internal/telephony/Connection;
    .end local v14           #found:Z
    .end local v21           #timestamp:J
    .local v9, earliestConnection:Lcom/android/internal/telephony/Connection;
    .local v10, earliestTimestamp:J
    .local v17, j:I
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aput-boolean v24, v23, v15

    .line 2812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccTimestamps:[J

    move-object/from16 v23, v0

    aput-wide v10, v23, v15

    .line 2813
    aput-object v9, v4, v15

    .line 2814
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 2795
    .end local v9           #earliestConnection:Lcom/android/internal/telephony/Connection;
    .end local v10           #earliestTimestamp:J
    .end local v17           #j:I
    :cond_8
    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_b

    .line 2797
    const/4 v15, 0x0

    .line 2798
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v23, v0

    aget-boolean v23, v23, v15

    if-eqz v23, :cond_9

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 2800
    :cond_9
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/telephony/Connection;

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v10

    .line 2801
    .restart local v10       #earliestTimestamp:J
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/Connection;

    .line 2802
    .restart local v9       #earliestConnection:Lcom/android/internal/telephony/Connection;
    const/16 v17, 0x0

    .restart local v17       #j:I
    :goto_4
    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->size()I

    move-result v23

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 2803
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/telephony/Connection;

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v21

    .line 2804
    .restart local v21       #timestamp:J
    cmp-long v23, v21, v10

    if-gez v23, :cond_a

    .line 2805
    move-wide/from16 v10, v21

    .line 2806
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #earliestConnection:Lcom/android/internal/telephony/Connection;
    check-cast v9, Lcom/android/internal/telephony/Connection;

    .line 2802
    .restart local v9       #earliestConnection:Lcom/android/internal/telephony/Connection;
    :cond_a
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 2818
    .end local v9           #earliestConnection:Lcom/android/internal/telephony/Connection;
    .end local v10           #earliestTimestamp:J
    .end local v17           #j:I
    .end local v21           #timestamp:J
    :cond_b
    new-instance v19, Landroid/bluetooth/AtCommandResult;

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2819
    .local v19, result:Landroid/bluetooth/AtCommandResult;
    const/4 v12, 0x0

    .line 2820
    .local v12, fakeClccEntry:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v23

    if-eqz v23, :cond_d

    .line 2821
    const-string v12, "+CLCC: 1,1,0,0,1,\"SKYPE & PHONE\",129"

    .line 2822
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2848
    :cond_c
    :goto_5
    monitor-exit p0

    return-object v19

    .line 2825
    :cond_d
    const/4 v8, 0x1

    .line 2826
    .local v8, count:I
    const/4 v15, 0x0

    :goto_6
    :try_start_2
    array-length v0, v4

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v15, v0, :cond_f

    .line 2827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v23, v0

    aget-boolean v23, v23, v15

    if-eqz v23, :cond_e

    .line 2828
    aget-object v23, v4, v15

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v15, v1}, Lcom/android/phone/BluetoothHandsfree;->connectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v5

    .line 2829
    .local v5, clccEntry:Ljava/lang/String;
    if-eqz v5, :cond_e

    .line 2830
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2831
    add-int/lit8 v8, v8, 0x1

    .line 2826
    .end local v5           #clccEntry:Ljava/lang/String;
    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 2835
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 2836
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "+CLCC: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",1,0,0,0,\"Skype\",129"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2845
    :cond_10
    :goto_7
    if-eqz v12, :cond_c

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto :goto_5

    .line 2838
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 2839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v23

    if-eqz v23, :cond_12

    .line 2840
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "+CLCC: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",1,5,0,0,\"Skype\",129"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_7

    .line 2842
    :cond_12
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "+CLCC: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",1,4,0,0,\"Skype\",129"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    goto :goto_7
.end method

.method private inDebug()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4241
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "debug.bt.hfp"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static init(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)Lcom/android/phone/BluetoothHandsfree;
    .locals 4
    .parameter "context"
    .parameter "cm"

    .prologue
    .line 247
    const-class v1, Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v1

    .line 249
    :try_start_0
    sget-object v0, Lcom/android/phone/BluetoothHandsfree;->sInstance:Lcom/android/phone/BluetoothHandsfree;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/BluetoothHandsfree;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V

    sput-object v0, Lcom/android/phone/BluetoothHandsfree;->sInstance:Lcom/android/phone/BluetoothHandsfree;

    .line 254
    :goto_0
    sget-object v0, Lcom/android/phone/BluetoothHandsfree;->sInstance:Lcom/android/phone/BluetoothHandsfree;

    monitor-exit v1

    return-object v0

    .line 252
    :cond_0
    const-string v0, "Bluetooth HS/HF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/BluetoothHandsfree;->sInstance:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initializeHandsfreeAtParser()V
    .locals 4

    .prologue
    .line 3205
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->getAtParser()Landroid/bluetooth/AtParser;

    move-result-object v0

    .line 3206
    .local v0, parser:Landroid/bluetooth/AtParser;
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 3209
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    const/16 v2, 0x41

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$8;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$8;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/Character;Landroid/bluetooth/AtCommandHandler;)V

    .line 3248
    const/16 v2, 0x44

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$9;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$9;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/Character;Landroid/bluetooth/AtCommandHandler;)V

    .line 3294
    const-string v2, "+CHUP"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$10;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$10;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3333
    const-string v2, "+BRSF"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$11;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$11;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3363
    const-string v2, "+CCWA"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$12;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$12;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3395
    const-string v2, "+CMER"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$13;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$13;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3448
    const-string v2, "+CMEE"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$14;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$14;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3482
    const-string v2, "+BLDN"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$15;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$15;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3491
    const-string v2, "+CIND"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$16;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$16;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3505
    const-string v2, "+CSQ"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$17;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$17;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3514
    const-string v2, "+CREG"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$18;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$18;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3523
    const-string v2, "+VTS"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$19;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$19;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3568
    const-string v2, "+CLCC"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$20;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$20;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3608
    const-string v2, "+CHLD"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$21;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$21;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3770
    const-string v2, "+COPS"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$22;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$22;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3807
    const-string v2, "+CPIN"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$23;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$23;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3816
    const-string v2, "+BTRH"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$24;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$24;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3832
    const-string v2, "+CIMI"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$25;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$25;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3847
    const-string v2, "+BIA"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$26;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$26;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3870
    const-string v2, "+CLIP"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$27;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$27;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3894
    const-string v2, "+COLP"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$28;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$28;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3921
    const-string v2, "+CGSN"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$29;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$29;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3931
    const-string v2, "+CGMM"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$30;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$30;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3945
    const-string v2, "+CGMI"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$31;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$31;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3959
    const-string v2, "+NREC"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$32;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$32;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3974
    const-string v2, "+BVRA"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$33;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$33;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4020
    const-string v2, "+CNUM"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$34;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$34;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4034
    const-string v2, "+VGM"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$35;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$35;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4044
    const-string v2, "+VGS"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$36;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$36;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4072
    const-string v2, "+CPAS"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$37;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$37;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4090
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-virtual {v2, v0}, Lcom/android/phone/BluetoothAtPhonebook;->register(Landroid/bluetooth/AtParser;)V

    .line 4091
    return-void
.end method

.method private initializeHeadsetAtParser()V
    .locals 3

    .prologue
    .line 3104
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getAtParser()Landroid/bluetooth/AtParser;

    move-result-object v0

    .line 3107
    .local v0, parser:Landroid/bluetooth/AtParser;
    const-string v1, "+CKPD"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$5;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$5;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3163
    const-string v1, "+VGM"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$6;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$6;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3173
    const-string v1, "+VGS"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$7;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$7;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3198
    return-void
.end method

.method private isA2dpMultiProfile()Z
    .locals 2

    .prologue
    .line 2638
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCellularCallInProgress()Z
    .locals 1

    .prologue
    .line 4275
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 4276
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIncallAudio()Z
    .locals 3

    .prologue
    .line 741
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 743
    .local v0, state:Lcom/android/internal/telephony/Call$State;
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isVirtualCallInProgress()Z
    .locals 1

    .prologue
    .line 4281
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    return v0
.end method

.method private isVoiceRecognitionInProgress()Z
    .locals 1

    .prologue
    .line 4197
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 4487
    const-string v0, "Bluetooth HS/HF"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4488
    return-void
.end method

.method private redial()Landroid/bluetooth/AtCommandResult;
    .locals 5

    .prologue
    .line 2676
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothAtPhonebook;->getLastDialledNumber()Ljava/lang/String;

    move-result-object v0

    .line 2678
    .local v0, number:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2683
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2707
    :goto_0
    return-object v1

    .line 2686
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2688
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$4;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/BluetoothHandsfree$4;-><init>(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2700
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->terminateScoUsingVirtualVoiceCall()Z

    .line 2706
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->expectCallStart()V

    .line 2707
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0
.end method

.method private registerAllVendorSpecificCommands()V
    .locals 3

    .prologue
    .line 3091
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getAtParser()Landroid/bluetooth/AtParser;

    move-result-object v0

    .line 3094
    .local v0, parser:Landroid/bluetooth/AtParser;
    const-string v1, "+XEVENT"

    const/16 v2, 0x55

    invoke-direct {p0, v1, v2, v0}, Lcom/android/phone/BluetoothHandsfree;->registerVendorSpecificCommand(Ljava/lang/String;ILandroid/bluetooth/AtParser;)V

    .line 3097
    return-void
.end method

.method private registerVendorSpecificCommand(Ljava/lang/String;ILandroid/bluetooth/AtParser;)V
    .locals 2
    .parameter "commandName"
    .parameter "companyId"
    .parameter "parser"

    .prologue
    .line 3083
    new-instance v0, Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;-><init>(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;ILcom/android/phone/BluetoothHandsfree$1;)V

    invoke-virtual {p3, p1, v0}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3085
    return-void
.end method

.method private resetAllIndicators()V
    .locals 3

    .prologue
    .line 4482
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 4483
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mBiaArray:[I

    const/4 v2, 0x1

    aput v2, v1, v0

    .line 4482
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4485
    :cond_0
    return-void
.end method

.method private resetConnectScoThread()V
    .locals 2

    .prologue
    .line 642
    const-class v1, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    monitor-enter v1

    .line 643
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    .line 644
    monitor-exit v1

    .line 645
    return-void

    .line 644
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendShortDtmfToNetwork(C)V
    .locals 7
    .parameter "dtmfDigit"

    .prologue
    const/4 v3, 0x1

    .line 2407
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mDTMFQueue:Ljava/util/Queue;

    monitor-enter v2

    .line 2408
    :try_start_0
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mDTMFBurstCnfPending:Z

    if-ne v1, v3, :cond_0

    .line 2410
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mDTMFQueue:Ljava/util/Queue;

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2413
    const-string v1, "sendShortDtmfToNetwork(), Insert to DTMF queue()."

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 2423
    :goto_0
    monitor-exit v2

    .line 2424
    return-void

    .line 2417
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 2418
    .local v0, dtmfStr:Ljava/lang/String;
    const-string v1, "Bluetooth HS/HF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dtmfsent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v1, v0, v3, v4, v5}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 2421
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mDTMFBurstCnfPending:Z

    goto :goto_0

    .line 2423
    .end local v0           #dtmfStr:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendURC(Ljava/lang/String;)V
    .locals 1
    .parameter "urc"

    .prologue
    .line 2651
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2652
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Bluetooth HS/HF"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0, p1}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    .line 2655
    :cond_1
    return-void
.end method

.method private sendURC(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "urc"
    .parameter "debugInfo"

    .prologue
    .line 2658
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2659
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Bluetooth HS/HF"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0, p1}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    .line 2662
    :cond_1
    return-void
.end method

.method private declared-synchronized setAudioState(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "state"
    .parameter "device"

    .prologue
    .line 2236
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    .line 2237
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 2238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingAudioState:Z

    .line 2239
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2243
    :goto_0
    monitor-exit p0

    return-void

    .line 2242
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p2, p1}, Landroid/bluetooth/BluetoothHeadset;->setAudioState(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startDebug()V
    .locals 2

    .prologue
    .line 4257
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    if-nez v0, :cond_0

    .line 4258
    new-instance v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/BluetoothHandsfree$DebugThread;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    .line 4259
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$DebugThread;->start()V

    .line 4261
    :cond_0
    return-void
.end method

.method private stopDebug()V
    .locals 1

    .prologue
    .line 4264
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    if-eqz v0, :cond_0

    .line 4265
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$DebugThread;->interrupt()V

    .line 4266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    .line 4268
    :cond_0
    return-void
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 231
    packed-switch p0, :pswitch_data_0

    .line 239
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 233
    :pswitch_0
    const-string v0, "unknown"

    goto :goto_0

    .line 235
    :pswitch_1
    const-string v0, "headset"

    goto :goto_0

    .line 237
    :pswitch_2
    const-string v0, "handsfree"

    goto :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method PbsendURC(Ljava/lang/String;)V
    .locals 1
    .parameter "urc"

    .prologue
    .line 2666
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2667
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Bluetooth HS/HF"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0, p1}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    .line 2670
    :cond_1
    return-void
.end method

.method declared-synchronized audioOff()V
    .locals 2

    .prologue
    .line 2587
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    if-eqz v0, :cond_2

    .line 2588
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2589
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "resuming A2DP stream after disconnecting SCO"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 2590
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->resumeSink(Landroid/bluetooth/BluetoothDevice;)Z

    .line 2592
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    .line 2598
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2599
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 2601
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    .line 2603
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingBusyTone:Z

    if-eqz v0, :cond_4

    .line 2604
    const-string v0, "+CIEV: 3,0"

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 2605
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingBusyTone:Z

    .line 2608
    :cond_4
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    if-eqz v0, :cond_5

    .line 2609
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->shutdown()V

    .line 2610
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    .line 2615
    :cond_5
    const-class v1, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2616
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    if-eqz v0, :cond_6

    .line 2617
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->shutdown()V

    .line 2618
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->resetConnectScoThread()V

    .line 2620
    :cond_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2622
    :try_start_2
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->closeConnectedSco()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2623
    monitor-exit p0

    return-void

    .line 2620
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2587
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized audioOn()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2477
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2478
    sget-boolean v2, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "audioOn(): headset is not connected!"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2532
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 2481
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    if-nez v3, :cond_2

    .line 2482
    sget-boolean v2, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "audioOn(): service connection not yet established!"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2477
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2486
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    if-eqz v3, :cond_4

    .line 2487
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "audioOn(): audio is already connected"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    :cond_3
    move v1, v2

    .line 2488
    goto :goto_0

    .line 2491
    :cond_4
    iget-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    if-nez v3, :cond_5

    .line 2492
    sget-boolean v2, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "audioOn(): user requested no audio, ignoring"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2496
    :cond_5
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    if-eqz v1, :cond_7

    .line 2497
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "audioOn(): SCO already pending"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    :cond_6
    move v1, v2

    .line 2498
    goto :goto_0

    .line 2501
    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    .line 2502
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    .line 2503
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_9

    .line 2504
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_8

    const-string v1, "suspending A2DP stream for SCO"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 2505
    :cond_8
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothA2dp;->suspendSink(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    .line 2506
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    if-eqz v1, :cond_b

    .line 2507
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    .line 2508
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2509
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2528
    .end local v0           #msg:Landroid/os/Message;
    :cond_9
    :goto_1
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    if-nez v1, :cond_a

    .line 2529
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->connectScoThread()V

    :cond_a
    move v1, v2

    .line 2532
    goto/16 :goto_0

    .line 2511
    :cond_b
    const-string v1, "Bluetooth HS/HF"

    const-string v3, "Could not suspend A2DP stream for SCO, going ahead with SCO"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public cdmaSetSecondCallState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 4473
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    .line 4474
    return-void
.end method

.method public cdmaSwapSecondCallState()V
    .locals 1

    .prologue
    .line 4468
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    .line 4469
    return-void

    .line 4468
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized connectHeadset(Landroid/bluetooth/HeadsetBase;I)V
    .locals 3
    .parameter "headset"
    .parameter "headsetType"

    .prologue
    const/4 v2, 0x1

    .line 704
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    .line 705
    iput p2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    .line 706
    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    if-ne v1, v2, :cond_2

    .line 707
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->initializeHeadsetAtParser()V

    .line 713
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->registerAllVendorSpecificCommands()V

    .line 715
    invoke-virtual {p1}, Landroid/bluetooth/HeadsetBase;->startEventThread()V

    .line 716
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->configAudioParameters()V

    .line 718
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->inDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 719
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->startDebug()V

    .line 721
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->getHeadsetName()Ljava/lang/String;

    move-result-object v0

    .line 722
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v1, "PTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 723
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mIsPTS:Z

    .line 728
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isIncallAudio()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 729
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 735
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->resetAllIndicators()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    monitor-exit p0

    return-void

    .line 709
    .end local v0           #name:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 704
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 725
    .restart local v0       #name:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mIsPTS:Z

    goto :goto_1

    .line 730
    :cond_4
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 732
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2000(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method declared-synchronized disconnectHeadset()V
    .locals 1

    .prologue
    .line 752
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 753
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    .line 756
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->terminateScoUsingVirtualVoiceCall()Z

    .line 758
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    .line 759
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->stopDebug()V

    .line 760
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->resetAtState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    monitor-exit p0

    return-void

    .line 752
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getHeadset()Landroid/bluetooth/HeadsetBase;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    return-object v0
.end method

.method getHeadsetName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2626
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-eqz v1, :cond_0

    .line 2627
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 2628
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2630
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method handleBurstDtmfConfirmation()V
    .locals 6

    .prologue
    .line 2431
    const/4 v1, 0x0

    .line 2432
    .local v1, dtmfChar:Ljava/lang/Character;
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mDTMFQueue:Ljava/util/Queue;

    monitor-enter v3

    .line 2433
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mDTMFBurstCnfPending:Z

    .line 2434
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mDTMFQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2435
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mDTMFQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Character;

    move-object v1, v0

    .line 2436
    const-string v2, "Bluetooth HS/HF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The dtmf character removed from queue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2439
    if-eqz v1, :cond_1

    .line 2440
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/BluetoothHandsfree;->sendShortDtmfToNetwork(C)V

    .line 2442
    :cond_1
    return-void

    .line 2438
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method ignoreRing()V
    .locals 0

    .prologue
    .line 2643
    return-void
.end method

.method declared-synchronized initiateScoUsingVirtualVoiceCall()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4292
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "initiateScoUsingVirtualVoiceCall: Received"

    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 4294
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isCellularCallInProgress()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVoiceRecognitionInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4295
    :cond_1
    const-string v2, "Bluetooth HS/HF"

    const-string v3, "initiateScoUsingVirtualVoiceCall: Call in progress"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4323
    :goto_0
    monitor-exit p0

    return v1

    .line 4300
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2300(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4301
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 4303
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    const-string v3, "+CIEV: 3,2"

    invoke-virtual {v0, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 4304
    const-string v3, "+CIEV: 2,1"

    invoke-virtual {v0, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 4305
    const-string v3, "+CIEV: 3,0"

    invoke-virtual {v0, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 4306
    invoke-virtual {v0}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 4307
    sget-boolean v3, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "Bluetooth HS/HF"

    const-string v4, "initiateScoUsingVirtualVoiceCall: Sent Call-setup procedure"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4310
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    .line 4313
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    move-result v3

    if-nez v3, :cond_4

    .line 4314
    const-string v2, "initiateScoUsingVirtualVoiceCall: audioON failed"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 4315
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->terminateScoUsingVirtualVoiceCall()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4292
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 4319
    :cond_4
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z

    .line 4322
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "initiateScoUsingVirtualVoiceCall: Done"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    move v1, v2

    .line 4323
    goto :goto_0
.end method

.method isAudioOn()Z
    .locals 1

    .prologue
    .line 2634
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHeadsetConnected()Z
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    if-nez v0, :cond_1

    .line 697
    :cond_0
    const/4 v0, 0x0

    .line 699
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method declared-synchronized onBluetoothDisabled()V
    .locals 1

    .prologue
    .line 685
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 687
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->shutdown()V

    .line 689
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    :cond_0
    monitor-exit p0

    return-void

    .line 685
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onBluetoothEnabled()V
    .locals 2

    .prologue
    .line 676
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    if-nez v0, :cond_0

    .line 677
    new-instance v0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    .line 678
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    const-string v1, "incomingScoAcceptThread"

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->setName(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    :cond_0
    monitor-exit p0

    return-void

    .line 676
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onCallConnected()V
    .locals 2

    .prologue
    .line 2539
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2543
    :goto_0
    monitor-exit p0

    return-void

    .line 2541
    :cond_0
    :try_start_1
    const-string v0, "Bluetooth HS/HF"

    const-string v1, "onCallConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->fastUpdateForCallConnect()V
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$7400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2539
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onCallDisconnected(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .locals 2
    .parameter "cause"

    .prologue
    .line 2549
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2553
    :goto_0
    monitor-exit p0

    return-void

    .line 2551
    :cond_0
    :try_start_1
    const-string v0, "Bluetooth HS/HF"

    const-string v1, "onCallDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->fastUpdateForCallDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    invoke-static {v0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$7500(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2549
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method playTone(I)V
    .locals 6
    .parameter "tone"

    .prologue
    .line 2328
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2329
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2331
    :try_start_1
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v3, 0x6

    const/16 v4, 0x64

    invoke-direct {v1, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2341
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mToneStopper:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2342
    packed-switch p1, :pswitch_data_0

    .line 2394
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1, p1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 2395
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mToneStopper:Landroid/os/Handler;

    const/4 v3, 0x1

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2396
    monitor-exit v2

    .line 2397
    :goto_1
    return-void

    .line 2332
    :catch_0
    move-exception v0

    .line 2333
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Bluetooth HS/HF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught while creating local tone generator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 2335
    monitor-exit v2

    goto :goto_1

    .line 2396
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2344
    :pswitch_1
    const/4 p1, 0x0

    .line 2345
    goto :goto_0

    .line 2348
    :pswitch_2
    const/4 p1, 0x1

    .line 2349
    goto :goto_0

    .line 2352
    :pswitch_3
    const/4 p1, 0x2

    .line 2353
    goto :goto_0

    .line 2356
    :pswitch_4
    const/4 p1, 0x3

    .line 2357
    goto :goto_0

    .line 2360
    :pswitch_5
    const/4 p1, 0x4

    .line 2361
    goto :goto_0

    .line 2364
    :pswitch_6
    const/4 p1, 0x5

    .line 2365
    goto :goto_0

    .line 2368
    :pswitch_7
    const/4 p1, 0x6

    .line 2369
    goto :goto_0

    .line 2372
    :pswitch_8
    const/4 p1, 0x7

    .line 2373
    goto :goto_0

    .line 2376
    :pswitch_9
    const/16 p1, 0x8

    .line 2377
    goto :goto_0

    .line 2380
    :pswitch_a
    const/16 p1, 0x9

    .line 2381
    goto :goto_0

    .line 2384
    :pswitch_b
    const/16 p1, 0xa

    .line 2385
    goto :goto_0

    .line 2388
    :pswitch_c
    const/16 p1, 0xb

    goto :goto_0

    .line 2342
    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_c
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
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public reportCmeError(I)Landroid/bluetooth/AtCommandResult;
    .locals 3
    .parameter "error"

    .prologue
    .line 4101
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    if-eqz v1, :cond_0

    .line 4102
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 4103
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CME ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 4106
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0
.end method

.method declared-synchronized resetAtState()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 764
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCcwa:Z

    .line 765
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    .line 766
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mColp:Z

    .line 767
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    .line 768
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    .line 769
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    .line 770
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree;->mFakeCall:I

    .line 771
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree;->mFakeCallsetup:I

    .line 772
    const/4 v1, 0x6

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mClccTimestamps:[J

    .line 773
    const/4 v1, 0x6

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    .line 774
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 775
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 774
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 777
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    .line 778
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothAtPhonebook;->resetAtState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    monitor-exit p0

    return-void

    .line 764
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public sendScoGainUpdate(I)V
    .locals 2
    .parameter "gain"

    .prologue
    .line 4094
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 4095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+VGS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 4096
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    .line 4098
    :cond_0
    return-void
.end method

.method public setAVRCPOn(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 4477
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->setAVRCPOn(Z)V

    .line 4478
    return-void
.end method

.method declared-synchronized setSkypeCallState(I)V
    .locals 3
    .parameter "psCallState"

    .prologue
    .line 2556
    monitor-enter p0

    :try_start_0
    const-string v0, "Bluetooth HS/HF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSkypeCallState(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 2559
    :goto_0
    monitor-exit p0

    return-void

    .line 2558
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->handlePsCallStateChange(I)V
    invoke-static {v0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$7600(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2556
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setVirtualCallInProgress(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 4285
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    .line 4286
    return-void
.end method

.method startDtmfSession()V
    .locals 5

    .prologue
    .line 2297
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2298
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2300
    :try_start_1
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v3, 0x6

    const/16 v4, 0x64

    invoke-direct {v1, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2307
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 2308
    return-void

    .line 2302
    :catch_0
    move-exception v0

    .line 2303
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Bluetooth HS/HF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught while creating local tone generator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0

    .line 2307
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method declared-synchronized startVoiceRecognition()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4152
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isCellularCallInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    if-eqz v1, :cond_2

    .line 4155
    :cond_0
    const-string v1, "Bluetooth HS/HF"

    const-string v2, "startVoiceRecognition: Call in progress"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4176
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 4159
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    .line 4161
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    if-eqz v1, :cond_4

    .line 4163
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    .line 4164
    const-string v1, "OK"

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 4169
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    move-result v0

    .line 4170
    .local v0, ret:Z
    if-nez v0, :cond_3

    .line 4171
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    .line 4173
    :cond_3
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4174
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4152
    .end local v0           #ret:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 4167
    :cond_4
    :try_start_2
    const-string v1, "+BVRA: 1"

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method stopDtmfSession()V
    .locals 2

    .prologue
    .line 2312
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2313
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 2314
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 2315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 2317
    :cond_0
    monitor-exit v1

    .line 2319
    return-void

    .line 2317
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized stopVoiceRecognition()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4180
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v2}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 4181
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVoiceRecognitionInProgress()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 4192
    :goto_0
    monitor-exit p0

    return v0

    .line 4185
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    .line 4187
    const-string v0, "+BVRA: 0"

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 4188
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v2, :cond_1

    .line 4189
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->setAVRCPOn(Z)V

    .line 4190
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move v0, v1

    .line 4192
    goto :goto_0

    .line 4180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized terminateScoUsingVirtualVoiceCall()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4327
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "terminateScoUsingVirtualVoiceCall: Received"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 4329
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 4349
    :goto_0
    monitor-exit p0

    return v1

    .line 4334
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 4337
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2300(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4338
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 4340
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    const-string v1, "+CIEV: 2,0"

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 4341
    invoke-virtual {v0}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 4342
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "terminateScoUsingVirtualVoiceCall: Sent Call-setup procedure"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 4344
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    .line 4345
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z

    .line 4348
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "terminateScoUsingVirtualVoiceCall: Done"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4349
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 4327
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method updateBtHandsfreeAfterRadioTechnologyChange()V
    .locals 1

    .prologue
    .line 2467
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateBtPhoneStateAfterRadioTechnologyChange()V
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$7300(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    .line 2468
    return-void
.end method

.method declared-synchronized userWantsAudioOff()V
    .locals 1

    .prologue
    .line 2574
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    .line 2575
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2576
    monitor-exit p0

    return-void

    .line 2574
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized userWantsAudioOn()V
    .locals 1

    .prologue
    .line 2566
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    .line 2567
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2568
    monitor-exit p0

    return-void

    .line 2566
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
