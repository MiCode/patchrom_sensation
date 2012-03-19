.class public Lcom/android/phone/CallNotifier;
.super Landroid/os/Handler;
.source "CallNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;,
        Lcom/android/phone/CallNotifier$CallWaitingInfo;,
        Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;,
        Lcom/android/phone/CallNotifier$InCallTonePlayer;
    }
.end annotation


# static fields
.field private static final CALLERINFO_QUERYING:I = -0x1

.field private static final CALLERINFO_QUERY_READY:I = 0x0

.field private static final CALLWAITING_ADDCALL_DISABLE_TIME:I = 0x7530

.field private static final CALLWAITING_ADDCALL_DISABLE_TIMEOUT:I = 0x18

.field private static final CALLWAITING_CALLERINFO_DISPLAY_DONE:I = 0x17

.field private static final CALLWAITING_CALLERINFO_DISPLAY_TIME:I = 0x4e20

.field private static final CDMA_CALL_WAITING_REJECT:I = 0x1b

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DISPLAYINFO_NOTIFICATION_DONE:I = 0x19

.field private static final DISPLAYINFO_NOTIFICATION_TIME:I = 0x1388

.field private static final EMERGENCY_TONE_ALERT:I = 0x1

.field private static final EMERGENCY_TONE_OFF:I = 0x0

.field private static final EMERGENCY_TONE_VIBRATE:I = 0x2

.field private static final EVENT_DIRECT_OTA_UPDATE:I = 0x1c

.field private static final EVENT_OTA_PROVISION_CHANGE:I = 0x1a

.field private static final EVENT_REQUEST_GSENSOR_FOR_MT_RINGING:I = 0x33

.field private static final LOG_TAG:Ljava/lang/String; = "CallNotifier"

.field private static final MSG_ADD_CALL:I = 0x320

.field private static final MSG_CAHNGE_AUDIO_MODE:I = 0x321

.field private static final PHONE_BATTERY_LOW:I = 0x16

.field private static final PHONE_CALL_CONNECTED:I = 0x32

.field private static final PHONE_CDMA_CALL_WAITING:I = 0x8

.field private static final PHONE_DISCONNECT:I = 0x3

.field private static final PHONE_ENHANCED_VP_OFF:I = 0xa

.field private static final PHONE_ENHANCED_VP_ON:I = 0x9

.field private static final PHONE_INCOMING_RING:I = 0x5

.field private static final PHONE_MWI_CHANGED:I = 0x15

.field private static final PHONE_NEW_RINGING_CONNECTION:I = 0x2

.field private static final PHONE_RESEND_MUTE:I = 0xc

.field private static final PHONE_RINGBACK_TONE:I = 0xb

.field private static final PHONE_STATE_CHANGED:I = 0x1

.field private static final PHONE_STATE_DISPLAYINFO:I = 0x6

.field private static final PHONE_STATE_SIGNALINFO:I = 0x7

.field private static final PHONE_UNKNOWN_CONNECTION_APPEARED:I = 0x4

.field private static final RINGBACK_TONE_OFF:I = 0x2

.field private static final RINGBACK_TONE_ON:I = 0x1

.field private static final RINGER_CUSTOM_RINGTONE_QUERY_TIMEOUT:I = 0x64

.field private static final RINGTONE_QUERY_WAIT_TIME:I = 0x1f4

.field private static final TONE_RELATIVE_VOLUME_SIGNALINFO:I = 0x50

.field private static final VDBG:Z

.field private static mAudioFocusOn:Z

.field private static mMutebyPScall:Z


# instance fields
.field bInKeyguardRestrictedInputMode:Z

.field private drivingModeCallFlagged:Z

.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallLog:Lcom/android/phone/CallLogAsync;

.field private mCallWaitingTimeOut:Z

.field private mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mCallerInfoQueryState:I

.field private mCallerInfoQueryStateGuard:Ljava/lang/Object;

.field private mCurrentEmergencyToneState:I

.field mCurrentPhoneState:Lcom/android/internal/telephony/Phone$State;

.field private mDialerSrv:Lcom/htc/service/dialer/IDialerService;

.field private mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

.field mFlipECompass:Lcom/android/phone/FlipToSpeakerAttrE;

.field mFlipGSensor:Lcom/android/phone/FlipToSpeakerAttrG;

.field private mHasSIPCall:Z

.field private mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field public mIsAnswering:Z

.field private mIsCdmaRedialCall:Z

.field private mIsEmergencyToneOn:I

.field private mIsOtaCall:Z

.field private mIsRinging:Z

.field private mIsVIP:Z

.field private mKeyguardEnabled:Z

.field private mNeedToSetScreenTimeout:Z

.field mPhoneSensorFunctions:Lcom/android/phone/HtcPhoneSensorFunctions;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mPowerManagerService:Landroid/os/IPowerManager;

.field private mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

.field private mRinger:Lcom/android/phone/Ringer;

.field private mScreenOn:Z

.field private final mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private mShowLockScreenMode:Z

.field private mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

.field private mSilentRingerRequested:Z

.field private final mSkypePhoneStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSrvConn:Landroid/content/ServiceConnection;

.field private mTelcelClearCodes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVoicePrivacyState:Z

.field public mWaitingInfo:Lcom/android/phone/CallNotifier$CallWaitingInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mbNewRingingConnectionInKeyguardRestrictedInputMode:Z

.field mbisN11Number:Z

.field final platform:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 121
    sput-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    .line 300
    sput-boolean v0, Lcom/android/phone/CallNotifier;->mAudioFocusOn:Z

    .line 301
    sput-boolean v0, Lcom/android/phone/CallNotifier;->mMutebyPScall:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V
    .locals 8
    .parameter "app"
    .parameter "phone"
    .parameter "ringer"
    .parameter "btMgr"
    .parameter "callLog"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 326
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 124
    iput-object v7, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 170
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 180
    new-instance v3, Ljava/lang/Object;

    invoke-direct/range {v3 .. v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    .line 236
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->drivingModeCallFlagged:Z

    .line 260
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 261
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 265
    iput v6, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    .line 277
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mKeyguardEnabled:Z

    .line 284
    iput-object v7, p0, Lcom/android/phone/CallNotifier;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    .line 285
    iput-object v7, p0, Lcom/android/phone/CallNotifier;->mSrvConn:Landroid/content/ServiceConnection;

    .line 294
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mIsOtaCall:Z

    .line 297
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mCurrentPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 305
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mHasSIPCall:Z

    .line 310
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mIsAnswering:Z

    .line 315
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mScreenOn:Z

    .line 316
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mNeedToSetScreenTimeout:Z

    .line 317
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mShowLockScreenMode:Z

    .line 321
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mIsRinging:Z

    .line 632
    new-instance v3, Lcom/android/phone/CallNotifier$1;

    invoke-direct {v3, p0}, Lcom/android/phone/CallNotifier$1;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2583
    iput-object v7, p0, Lcom/android/phone/CallNotifier;->mWaitingInfo:Lcom/android/phone/CallNotifier$CallWaitingInfo;

    .line 3293
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mbisN11Number:Z

    .line 3296
    const-string v3, "ro.board.platform"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->platform:Ljava/lang/String;

    .line 3438
    new-instance v3, Lcom/android/phone/CallNotifier$3;

    invoke-direct {v3, p0}, Lcom/android/phone/CallNotifier$3;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mSkypePhoneStateReceiver:Landroid/content/BroadcastReceiver;

    .line 4250
    new-instance v3, Lcom/android/phone/CallNotifier$4;

    invoke-direct {v3, p0}, Lcom/android/phone/CallNotifier$4;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 327
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    .line 328
    iget-object v3, p1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 329
    iput-object p5, p0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    .line 331
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    .line 334
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 337
    const-string v3, "CallNotifier"

    const-string v4, "CallNotifier() - NotifyWifiPhoneCallEnd()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 344
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 345
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 349
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 356
    :try_start_0
    new-instance v3, Landroid/media/ToneGenerator;

    const/4 v4, 0x0

    const/16 v5, 0x50

    invoke-direct {v3, v4, v5}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_0
    iput-object p3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 365
    iput-object p4, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 367
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 369
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 374
    new-instance v3, Lcom/android/phone/HtcPhoneSensorFunctions;

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v3, p1, v4, p0}, Lcom/android/phone/HtcPhoneSensorFunctions;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/CallManager;Lcom/android/phone/CallNotifier;)V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mPhoneSensorFunctions:Lcom/android/phone/HtcPhoneSensorFunctions;

    .line 375
    new-instance v3, Lcom/android/phone/FlipToSpeakerAttrE;

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v3, v4}, Lcom/android/phone/FlipToSpeakerAttrE;-><init>(Lcom/android/internal/telephony/CallManager;)V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mFlipECompass:Lcom/android/phone/FlipToSpeakerAttrE;

    .line 376
    new-instance v3, Lcom/android/phone/FlipToSpeakerAttrG;

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v3, v4}, Lcom/android/phone/FlipToSpeakerAttrG;-><init>(Lcom/android/internal/telephony/CallManager;)V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mFlipGSensor:Lcom/android/phone/FlipToSpeakerAttrG;

    .line 380
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->setupReceiveSkypePhoneIntent()V

    .line 383
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gsm.lockscreen.mode.status"

    const-string v5, "false"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 384
    const-string v3, "CallNotifier"

    const-string v4, "CallNotifier(), initialize the lockscreen status to false "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->initTelcelClearCodes()V

    .line 394
    sget-boolean v3, Lcom/android/phone/util/BuildUtils;->INCOMING_CALL_3D_LOCKSCREEN:Z

    if-eqz v3, :cond_1

    .line 395
    new-instance v3, Landroid/content/Intent;

    const-string v4, "ACTION_LOCKSCREEN_PHONE_STATE_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, v6}, Lcom/android/phone/CallNotifier;->broadcastRingingCallWithStatus(Landroid/content/Intent;I)V

    .line 400
    :cond_1
    return-void

    .line 358
    .end local v2           #telephonyManager:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 359
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "CallNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CallNotifier: Exception caught while creating mSignalInfoToneGenerator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iput-object v7, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/CallNotifier;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onMwiChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallNotifier;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onCfiChanged(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CallNotifier;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/CallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/phone/CallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/phone/CallNotifier;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput p1, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    return p1
.end method

.method static synthetic access$1502(Lcom/android/phone/CallNotifier;Lcom/htc/service/dialer/IDialerService;)Lcom/htc/service/dialer/IDialerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/phone/CallNotifier;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->handlePSCallStateChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/phone/CallNotifier;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/phone/CallNotifier;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/phone/CallNotifier;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mNeedToSetScreenTimeout:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/phone/CallNotifier;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/phone/CallNotifier;->mNeedToSetScreenTimeout:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/phone/CallNotifier;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->updateScreenDimWithPhoneState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 118
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    return-void
.end method

.method private broadcastRingingCallWithStatus(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "state"

    .prologue
    .line 4097
    const-string v0, "call_state"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4098
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4099
    return-void
.end method

.method private centerControllerAudioFocusOnOff(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 3659
    const-string v4, "CallNotifier"

    const-string v5, "centerControllerAudioFocusOnOff()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3661
    const-string v4, "clientName"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3663
    .local v0, mClientName:Ljava/lang/String;
    const-string v4, "requestFocus"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 3665
    .local v1, mMute:Z
    const-string v4, "timestamp"

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3666
    .local v2, timestamp:J
    const-string v4, "CallNotifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "centerControllerAudioFocusOnOff()......client name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " requestFocus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " timestamp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3668
    new-instance p1, Landroid/content/Intent;

    .end local p1
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 3669
    .restart local p1
    const-string v4, "android.intent.action.INCALL_AUDIO_FOCUS_CHANGE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3670
    const-string v4, "requestFocus"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3671
    const-string v4, "timestamp"

    invoke-virtual {p1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3672
    if-eqz v1, :cond_0

    sget-boolean v4, Lcom/android/phone/CallNotifier;->mAudioFocusOn:Z

    if-eqz v4, :cond_0

    .line 3687
    :goto_0
    return-void

    .line 3675
    :cond_0
    if-eqz v1, :cond_2

    sget-boolean v4, Lcom/android/phone/CallNotifier;->mAudioFocusOn:Z

    if-nez v4, :cond_2

    .line 3677
    const-string v4, "clientName"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3678
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/phone/CallNotifier;->mAudioFocusOn:Z

    .line 3685
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4, p1}, Lcom/android/phone/PhoneApp;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 3680
    :cond_2
    if-nez v1, :cond_1

    sget-boolean v4, Lcom/android/phone/CallNotifier;->mAudioFocusOn:Z

    if-eqz v4, :cond_1

    .line 3682
    const-string v4, "clientName"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3683
    sput-boolean v7, Lcom/android/phone/CallNotifier;->mAudioFocusOn:Z

    goto :goto_1
.end method

.method private checkBlackList(Ljava/lang/String;)Z
    .locals 7
    .parameter "number"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3140
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsVIP:Z

    .line 3141
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    if-eqz v5, :cond_2

    .line 3148
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    invoke-interface {v5, p1}, Lcom/htc/service/dialer/IDialerService;->getCallManagerInfo(Ljava/lang/String;)I

    move-result v1

    .line 3149
    .local v1, info:I
    and-int/lit8 v5, v1, 0x1

    if-lez v5, :cond_0

    move v2, v3

    .line 3150
    .local v2, shouldSendToVoicemail:Z
    :goto_0
    and-int/lit8 v5, v1, 0x2

    if-lez v5, :cond_1

    move v5, v3

    :goto_1
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mIsVIP:Z

    .line 3153
    if-eqz v2, :cond_2

    .line 3154
    const-string v5, "Callnotifier"

    const-string v6, "hit black list. hanging up."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3162
    .end local v1           #info:I
    .end local v2           #shouldSendToVoicemail:Z
    :goto_2
    return v3

    .restart local v1       #info:I
    :cond_0
    move v2, v4

    .line 3149
    goto :goto_0

    .restart local v2       #shouldSendToVoicemail:Z
    :cond_1
    move v5, v4

    .line 3150
    goto :goto_1

    .line 3157
    .end local v1           #info:I
    .end local v2           #shouldSendToVoicemail:Z
    :catch_0
    move-exception v0

    .line 3158
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    move v3, v4

    .line 3162
    goto :goto_2
.end method

.method private checkIfKeepPreviousCallWaiting()V
    .locals 6

    .prologue
    .line 2588
    const-string v3, "CallNotifier"

    const-string v4, "checkIfKeepPreviousCallWaiting"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 2590
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_5

    .line 2592
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2593
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_1

    .line 2595
    const/4 v1, 0x0

    .line 2596
    .local v1, isMissedType:Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2598
    const/4 v1, 0x1

    .line 2600
    :cond_0
    if-nez v1, :cond_2

    .line 2622
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #isMissedType:Z
    :cond_1
    :goto_0
    return-void

    .line 2604
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    .restart local v1       #isMissedType:Z
    :cond_2
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mWaitingInfo:Lcom/android/phone/CallNotifier$CallWaitingInfo;

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    if-nez v3, :cond_3

    .line 2606
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mWaitingInfo:Lcom/android/phone/CallNotifier$CallWaitingInfo;

    #calls: Lcom/android/phone/CallNotifier$CallWaitingInfo;->saveCallWaiting()V
    invoke-static {v3}, Lcom/android/phone/CallNotifier$CallWaitingInfo;->access$1200(Lcom/android/phone/CallNotifier$CallWaitingInfo;)V

    .line 2608
    :cond_3
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mWaitingInfo:Lcom/android/phone/CallNotifier$CallWaitingInfo;

    if-eqz v3, :cond_4

    .line 2610
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mWaitingInfo:Lcom/android/phone/CallNotifier$CallWaitingInfo;

    .line 2612
    :cond_4
    new-instance v3, Lcom/android/phone/CallNotifier$CallWaitingInfo;

    invoke-direct {v3, p0}, Lcom/android/phone/CallNotifier$CallWaitingInfo;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mWaitingInfo:Lcom/android/phone/CallNotifier$CallWaitingInfo;

    .line 2613
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mWaitingInfo:Lcom/android/phone/CallNotifier$CallWaitingInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/CallNotifier$CallWaitingInfo;->number:Ljava/lang/String;

    .line 2614
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mWaitingInfo:Lcom/android/phone/CallNotifier$CallWaitingInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    iput v4, v3, Lcom/android/phone/CallNotifier$CallWaitingInfo;->presentation:I

    .line 2615
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mWaitingInfo:Lcom/android/phone/CallNotifier$CallWaitingInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/phone/CallNotifier$CallWaitingInfo;->date:J

    goto :goto_0

    .line 2620
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #isMissedType:Z
    :cond_5
    const-string v3, "CallNotifier"

    const-string v4, "not a WAITING"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doBatteryLifeImprovementWhenPhoneStateChanged(Lcom/android/internal/telephony/Phone$State;)V
    .locals 7
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 4280
    invoke-static {}, Lcom/android/phone/util/BuildUtils;->isPowerImprovementEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4283
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCurrentPhoneState:Lcom/android/internal/telephony/Phone$State;

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_2

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v5, :cond_2

    .line 4285
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPowerManagerService:Landroid/os/IPowerManager;

    if-eqz v5, :cond_2

    .line 4286
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v3

    .line 4288
    .local v3, isWiredHeadsetConnected:Z
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v5}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v5

    if-eqz v5, :cond_5

    move v1, v2

    .line 4290
    .local v1, isBTConnected:Z
    :goto_0
    if-nez v3, :cond_0

    if-eqz v1, :cond_6

    .line 4291
    .local v2, isHandsFreePlugged:Z
    :cond_0
    :goto_1
    if-eqz v2, :cond_2

    .line 4293
    :try_start_0
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_1

    .line 4294
    const-string v5, "CallNotifier"

    const-string v6, "-- onPhoneStateChanged OFFHOOK call userActivityPhoneOffHook"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4297
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->updateScreenDimWithPhoneState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4306
    .end local v1           #isBTConnected:Z
    .end local v2           #isHandsFreePlugged:Z
    .end local v3           #isWiredHeadsetConnected:Z
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCurrentPhoneState:Lcom/android/internal/telephony/Phone$State;

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v5, :cond_4

    .line 4307
    iget-boolean v5, p0, Lcom/android/phone/CallNotifier;->mShowLockScreenMode:Z

    if-eqz v5, :cond_4

    .line 4308
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mShowLockScreenMode:Z

    .line 4311
    :try_start_1
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-interface {v4}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4312
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_3

    .line 4313
    const-string v4, "CallNotifier"

    const-string v5, "-- onPhoneStateChanged IDLE and screen is on: call userActivityPhoneOffHook directly"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4317
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->updateScreenDimWithPhoneState()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4332
    :cond_4
    :goto_3
    return-void

    .restart local v3       #isWiredHeadsetConnected:Z
    :cond_5
    move v1, v4

    .line 4288
    goto :goto_0

    .restart local v1       #isBTConnected:Z
    :cond_6
    move v2, v4

    .line 4290
    goto :goto_1

    .line 4298
    .restart local v2       #isHandsFreePlugged:Z
    :catch_0
    move-exception v0

    .line 4299
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "CallNotifier"

    const-string v6, "bettery lif improvement"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 4319
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #isBTConnected:Z
    .end local v2           #isHandsFreePlugged:Z
    .end local v3           #isWiredHeadsetConnected:Z
    :cond_7
    :try_start_2
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_8

    .line 4320
    const-string v4, "CallNotifier"

    const-string v5, "-- onPhoneStateChanged IDLE but screen is off"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4323
    :cond_8
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mNeedToSetScreenTimeout:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 4325
    :catch_1
    move-exception v0

    .line 4326
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "CallNotifier"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private static final feedbackCallLog(ZJ)V
    .locals 5
    .parameter "isIncoming"
    .parameter "duration"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4134
    new-array v0, v2, [Ljava/lang/String;

    .line 4135
    .local v0, keys:[Ljava/lang/String;
    new-array v1, v2, [Ljava/lang/String;

    .line 4137
    .local v1, values:[Ljava/lang/String;
    const-string v2, "call_type"

    aput-object v2, v0, v3

    .line 4138
    if-eqz p0, :cond_0

    const-string v2, "MT"

    :goto_0
    aput-object v2, v1, v3

    .line 4140
    const-string v2, "duration"

    aput-object v2, v0, v4

    .line 4141
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 4143
    const-string v2, "com.android.phone"

    const-string v3, "user_action"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/util/phone/ProfilingUtils;->userProfiling([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4144
    return-void

    .line 4138
    :cond_0
    const-string v2, "MO"

    goto :goto_0
.end method

.method private getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3
    .parameter "conn"

    .prologue
    .line 3068
    const/4 v0, 0x0

    .line 3069
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 3071
    .local v1, o:Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 3072
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 3080
    .end local v1           #o:Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v0

    .line 3075
    .restart local v1       #o:Ljava/lang/Object;
    :cond_2
    instance-of v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_1

    .line 3076
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v1           #o:Ljava/lang/Object;
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0
.end method

.method private getConnectionSize(Ljava/util/List;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3768
    .local p1, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v2, 0x0

    .line 3769
    .local v2, size:I
    if-eqz p1, :cond_1

    .line 3770
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 3771
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 3772
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 3776
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return v2
.end method

.method private getFgBgConnectionSize()I
    .locals 2

    .prologue
    .line 3764
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->getConnectionSize(Ljava/util/List;)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->getConnectionSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .locals 5
    .parameter "conn"
    .parameter "callerInfo"

    .prologue
    .line 3003
    const/4 v1, 0x0

    .line 3005
    .local v1, number:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3006
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 3045
    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 3046
    const/4 v3, 0x0

    .line 3057
    :goto_1
    return-object v3

    .line 3013
    :cond_1
    if-eqz p2, :cond_2

    iget-object v3, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3015
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 3017
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v1

    .line 3036
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3040
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3019
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDialString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 3022
    :cond_4
    iget-object v3, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/phone/HtcNBPCDUtil;->IsVMNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/android/phone/HtcFeatureList;->EnableAssistedDialingSetting:Z

    if-eqz v3, :cond_5

    .line 3024
    const-string v1, "*86"

    move-object v3, v1

    .line 3025
    goto :goto_1

    .line 3027
    :cond_5
    const-string v3, "number"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/Connection;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3028
    .local v0, attachedNum:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3029
    iget-object v1, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_2

    .line 3031
    :cond_6
    move-object v1, v0

    goto :goto_2

    .line 3048
    .end local v0           #attachedNum:Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 3051
    .local v2, presentation:I
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v3, p2, v1, v2}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3053
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 3054
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_8
    move-object v3, v1

    .line 3057
    goto :goto_1
.end method

.method private getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I
    .locals 3
    .parameter "conn"
    .parameter "callerInfo"

    .prologue
    .line 3094
    if-nez p2, :cond_2

    .line 3095
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 3101
    .local v0, presentation:I
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getPresentation: presentation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3102
    :cond_1
    return v0

    .line 3097
    .end local v0           #presentation:I
    :cond_2
    iget v0, p2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 3098
    .restart local v0       #presentation:I
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getPresentation(): ignoring connection\'s presentation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getRingingCallerInfo()Lcom/android/internal/telephony/CallerInfo;
    .locals 5

    .prologue
    .line 4028
    const/4 v3, 0x0

    .line 4029
    .local v3, result:Lcom/android/internal/telephony/CallerInfo;
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4031
    .local v1, call:Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_0

    .line 4032
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 4034
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 4035
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 4037
    .local v2, o:Ljava/lang/Object;
    instance-of v4, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v4, :cond_1

    .line 4038
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v2           #o:Ljava/lang/Object;
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 4045
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_0
    :goto_0
    return-object v3

    .line 4039
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    .restart local v2       #o:Ljava/lang/Object;
    :cond_1
    instance-of v4, v2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 4040
    check-cast v3, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0
.end method

.method private handleCallDisconnected()V
    .locals 2

    .prologue
    .line 4108
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4109
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->createBroadcastRingingCallIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4110
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->broadcastRingingCallWithStatus(Landroid/content/Intent;I)V

    .line 4112
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private handleOffHook()V
    .locals 2

    .prologue
    .line 4102
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->createBroadcastRingingCallIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4103
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->broadcastRingingCallWithStatus(Landroid/content/Intent;I)V

    .line 4105
    return-void
.end method

.method private handlePSCallStateChange(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3494
    const-string v6, "clientName"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3496
    const-string v6, "clientName"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3497
    .local v3, mClientName:Ljava/lang/String;
    const-string v6, "CallNotifier"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "receive intent for PS_CALL_STATE_CHANGED......Client Name="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    .end local v3           #mClientName:Ljava/lang/String;
    :cond_0
    const-string v6, "state"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 3502
    const-string v6, "call_type"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 3503
    .local v5, type:I
    if-ne v11, v5, :cond_5

    move v6, v7

    :goto_0
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->setPsVideo(Z)V

    .line 3504
    const-string v6, "state"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3505
    .local v2, mCallState:I
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    .line 3506
    .local v4, state:Lcom/android/internal/telephony/Phone$State;
    const-string v6, "CallNotifier"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "receive intent for PS_CALL_STATE_CHANGED......state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setSkypeCallState(I)V

    .line 3508
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v6, :cond_1

    .line 3509
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v6, v2}, Lcom/android/phone/BluetoothHandsfree;->setSkypeCallState(I)V

    .line 3511
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3512
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v1

    .line 3513
    .local v1, incallScreen:Lcom/android/phone/InCallScreen;
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCurrentPhoneState:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0, v6}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 3514
    if-nez v2, :cond_7

    .line 3517
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mPhoneSensorFunctions:Lcom/android/phone/HtcPhoneSensorFunctions;

    invoke-virtual {v6}, Lcom/android/phone/HtcPhoneSensorFunctions;->unregisterOrientationSensor()V

    .line 3518
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mPhoneSensorFunctions:Lcom/android/phone/HtcPhoneSensorFunctions;

    invoke-virtual {v6}, Lcom/android/phone/HtcPhoneSensorFunctions;->unregisterProximitySensor()V

    .line 3519
    sget-object v6, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v6, :cond_6

    .line 3521
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->setupPSCallIdleState()V

    .line 3522
    const-string v6, "CallNotifier"

    const-string v9, "resume CS call...."

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3611
    :cond_2
    :goto_1
    if-eq v7, v2, :cond_3

    if-ne v11, v2, :cond_f

    .line 3613
    :cond_3
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v6, v7}, Lcom/android/phone/PhoneApp;->notifyWifiFullMode(Landroid/net/wifi/WifiManager;Z)V

    .line 3619
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #incallScreen:Lcom/android/phone/InCallScreen;
    .end local v2           #mCallState:I
    .end local v4           #state:Lcom/android/internal/telephony/Phone$State;
    .end local v5           #type:I
    :cond_4
    :goto_2
    return-void

    .restart local v5       #type:I
    :cond_5
    move v6, v8

    .line 3503
    goto :goto_0

    .line 3524
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v1       #incallScreen:Lcom/android/phone/InCallScreen;
    .restart local v2       #mCallState:I
    .restart local v4       #state:Lcom/android/internal/telephony/Phone$State;
    :cond_6
    sget-object v6, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v6, :cond_2

    .line 3533
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v6}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v6

    if-nez v6, :cond_2

    .line 3535
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopCallWaitingToneIfNecessary()Z

    .line 3536
    iput-boolean v8, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 3537
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v6}, Lcom/android/phone/Ringer;->ring()V

    .line 3538
    const-string v6, "CallNotifier"

    const-string v9, "continue to play ringtone because user reject PS call ..."

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3539
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier;->isNewRingingConnectionInKeyguardRestrictedInputMode()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3541
    const-wide/16 v9, 0x64

    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 3542
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "gsm.lockscreen.mode.status"

    const-string v10, "true"

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3543
    const-string v6, "CallNotifier"

    const-string v9, ">>> handlePSCallStateChange(), set to true when skype caller hangup the call.  set lockscreen mode :true "

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3552
    :cond_7
    if-ne v2, v7, :cond_b

    .line 3555
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mPhoneSensorFunctions:Lcom/android/phone/HtcPhoneSensorFunctions;

    iget-boolean v9, p0, Lcom/android/phone/CallNotifier;->mIsVIP:Z

    invoke-virtual {v6, v9}, Lcom/android/phone/HtcPhoneSensorFunctions;->registerOrientationSensor(Z)V

    .line 3556
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mPhoneSensorFunctions:Lcom/android/phone/HtcPhoneSensorFunctions;

    invoke-virtual {v6}, Lcom/android/phone/HtcPhoneSensorFunctions;->registerProximitySensor()V

    .line 3557
    sget-object v6, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v6, :cond_9

    .line 3559
    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v6

    if-nez v6, :cond_8

    .line 3560
    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->showHoldCSCallDialog()V

    .line 3561
    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->setupPSCallRingingState()V

    .line 3562
    const-string v6, "CallNotifier"

    const-string v9, "play call waiting tone...."

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3564
    :cond_9
    sget-object v6, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v6, :cond_2

    .line 3566
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3571
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 3573
    iput-boolean v7, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 3574
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v6}, Lcom/android/phone/Ringer;->stopRing()V

    .line 3576
    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopCallWaitingToneIfNecessary()Z

    .line 3577
    const-string v6, "CallNotifier"

    const-string v9, "stop to play ringtone ...."

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3581
    :cond_b
    if-ne v2, v11, :cond_e

    .line 3583
    sget-object v6, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v6, :cond_c

    .line 3585
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->setupPSCallOffHookState()V

    .line 3586
    const-string v6, "CallNotifier"

    const-string v9, "hold CS call...."

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3588
    :cond_c
    sget-object v6, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v6, :cond_2

    .line 3600
    if-eqz v1, :cond_d

    .line 3602
    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->finishImmediatelyIfNecessary()V

    .line 3603
    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->hideIncomingCallArc()V

    .line 3605
    :cond_d
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 3606
    const-string v6, "CallNotifier"

    const-string v9, "hang up CS call, because user accept PS call ...."

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3609
    :cond_e
    const-string v6, "CallNotifier"

    const-string v9, "receive error state for PS_CALL_STATE_CHANGED......"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3614
    :cond_f
    if-nez v2, :cond_4

    .line 3615
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v6, v8}, Lcom/android/phone/PhoneApp;->notifyWifiFullMode(Landroid/net/wifi/WifiManager;Z)V

    goto/16 :goto_2

    .line 3618
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #incallScreen:Lcom/android/phone/InCallScreen;
    .end local v2           #mCallState:I
    .end local v4           #state:Lcom/android/internal/telephony/Phone$State;
    .end local v5           #type:I
    :cond_10
    const-string v6, "CallNotifier"

    const-string v7, "no Extra value........."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private htcOnNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 7
    .parameter "c"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3781
    const/4 v3, 0x0

    .line 3782
    .local v3, isRestrictedMode:Z
    iget-boolean v4, p0, Lcom/android/phone/CallNotifier;->mKeyguardEnabled:Z

    if-ne v4, v5, :cond_0

    .line 3783
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    .line 3785
    sget-boolean v4, Lcom/android/phone/util/BuildUtils;->INCOMING_CALL_3D_LOCKSCREEN:Z

    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->bInKeyguardRestrictedInputMode:Z

    .line 3791
    iget-boolean v4, p0, Lcom/android/phone/CallNotifier;->bInKeyguardRestrictedInputMode:Z

    invoke-virtual {p0, v4}, Lcom/android/phone/CallNotifier;->setNewRingingConnectionInKeyguardRestrictedInputMode(Z)V

    .line 3792
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mKeyguardEnabled:Z

    .line 3797
    :cond_0
    const/4 v2, 0x0

    .line 3799
    .local v2, isCarTypeUiMode:Z
    :try_start_0
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isCarTypeUiMode()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3803
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3805
    .local v0, appConfig:Landroid/content/res/Configuration;
    invoke-static {v0}, Lcom/android/phone/util/ConfigUtils;->isCarTypeUiMode(Landroid/content/res/Configuration;)Z

    move-result v2

    .line 3809
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isLaputaNaviForeground()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3810
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.INCOMING_CALL_FOR_LAPUTA"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3811
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4, v1}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 3819
    .end local v1           #intent:Landroid/content/Intent;
    :goto_2
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "htcOnNewRingingConnection... set mIsRinging to true."

    invoke-direct {p0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3820
    :cond_1
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mIsRinging:Z

    .line 3822
    return-void

    .end local v0           #appConfig:Landroid/content/res/Configuration;
    .end local v2           #isCarTypeUiMode:Z
    :cond_2
    move v4, v6

    .line 3785
    goto :goto_0

    .line 3800
    .restart local v2       #isCarTypeUiMode:Z
    :catch_0
    move-exception v4

    .line 3803
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3805
    .restart local v0       #appConfig:Landroid/content/res/Configuration;
    invoke-static {v0}, Lcom/android/phone/util/ConfigUtils;->isCarTypeUiMode(Landroid/content/res/Configuration;)Z

    move-result v2

    .line 3806
    goto :goto_1

    .line 3803
    .end local v0           #appConfig:Landroid/content/res/Configuration;
    :catchall_0
    move-exception v4

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3805
    .restart local v0       #appConfig:Landroid/content/res/Configuration;
    invoke-static {v0}, Lcom/android/phone/util/ConfigUtils;->isCarTypeUiMode(Landroid/content/res/Configuration;)Z

    move-result v2

    .line 3806
    throw v4

    .line 3813
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/phone/CallNotifier;->processMTCallsWithoutQuery(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method private htcSilenceRinger()V
    .locals 3

    .prologue
    .line 3900
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhoneSensorFunctions:Lcom/android/phone/HtcPhoneSensorFunctions;

    invoke-virtual {v1}, Lcom/android/phone/HtcPhoneSensorFunctions;->unregisterOrientationSensor()V

    .line 3903
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3904
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3905
    .local v0, resumeIntent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "resume"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3906
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 3908
    .end local v0           #resumeIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z
    .locals 7
    .parameter "phone"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 844
    sget-boolean v5, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v5, :cond_1

    .line 848
    const-string v4, "CallNotifier"

    const-string v5, "Got onNewRingingConnection() on non-voice-capable device! Ignoring..."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 900
    :cond_0
    :goto_0
    return v4

    .line 859
    :cond_1
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 860
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "Incoming call while in ECM: always allow..."

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 877
    :cond_2
    invoke-static {p1}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 878
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v5, v5, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v6, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v5, v6, :cond_3

    move v0, v3

    .line 880
    .local v0, activateState:Z
    :goto_1
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v5, v5, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v6, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v5, v6, :cond_4

    move v1, v3

    .line 882
    .local v1, dialogState:Z
    :goto_2
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v2, v5, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    .line 884
    .local v2, spcState:Z
    if-eqz v2, :cond_5

    .line 885
    const-string v4, "CallNotifier"

    const-string v5, "Ignoring incoming call: OTA call is active"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 886
    goto :goto_0

    .end local v0           #activateState:Z
    .end local v1           #dialogState:Z
    .end local v2           #spcState:Z
    :cond_3
    move v0, v4

    .line 878
    goto :goto_1

    .restart local v0       #activateState:Z
    :cond_4
    move v1, v4

    .line 880
    goto :goto_2

    .line 887
    .restart local v1       #dialogState:Z
    .restart local v2       #spcState:Z
    :cond_5
    if-nez v0, :cond_6

    if-eqz v1, :cond_0

    .line 892
    :cond_6
    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->dismissOtaDialogs()V

    .line 893
    :cond_7
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    .line 894
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->clearInCallScreenMode()V

    goto :goto_0
.end method

.method private initTelcelClearCodes()V
    .locals 7

    .prologue
    .line 4148
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xd9

    if-eq v4, v5, :cond_0

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x9

    if-ne v4, v5, :cond_1

    .line 4150
    :cond_0
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mTelcelClearCodes:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 4151
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/phone/CallNotifier;->mTelcelClearCodes:Ljava/util/HashMap;

    .line 4153
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070037

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 4154
    .local v2, index:[I
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070038

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 4155
    .local v3, values:[Ljava/lang/String;
    const-string v4, "CallNotifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClearCodes index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", values: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4156
    array-length v4, v2

    array-length v5, v3

    if-ne v4, v5, :cond_1

    .line 4157
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 4158
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mTelcelClearCodes:Ljava/util/HashMap;

    aget v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4161
    .end local v1           #i:I
    .end local v2           #index:[I
    .end local v3           #values:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 4162
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "CallNotifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4166
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 3106
    const-string v0, "CallNotifier"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    return-void
.end method

.method private onBatteryLow()V
    .locals 1

    .prologue
    .line 2069
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onBatteryLow()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2073
    :cond_0
    return-void
.end method

.method private onCallConnected(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 1442
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 1443
    .local v0, c:Lcom/android/internal/telephony/Connection;
    const-string v1, "CallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[embedded] onCallConnected: MT call? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1445
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setupJogBallForIncomingCall(Z)Z

    .line 1446
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v1, :cond_0

    .line 1447
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->onCallConnected()V

    .line 1458
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhoneSensorFunctions:Lcom/android/phone/HtcPhoneSensorFunctions;

    invoke-virtual {v1}, Lcom/android/phone/HtcPhoneSensorFunctions;->unregisterProximitySensor()V

    .line 1460
    return-void

    .line 1451
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhoneSensorFunctions:Lcom/android/phone/HtcPhoneSensorFunctions;

    invoke-virtual {v1}, Lcom/android/phone/HtcPhoneSensorFunctions;->getProximitySensorActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1452
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1453
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->startVibrateforMoConnected()V

    goto :goto_0
.end method

.method private onCdmaCallWaiting(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter "r"

    .prologue
    const/16 v13, 0x18

    const/16 v12, 0x17

    const/4 v11, 0x0

    .line 2629
    invoke-virtual {p0, v12}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 2630
    invoke-virtual {p0, v13}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 2634
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v10, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v9, v10}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 2640
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v9, :cond_1

    .line 2642
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 2643
    .local v4, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2644
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_1

    .line 2646
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 2647
    .local v3, phoneNumber:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/phone/CallNotifier;->isBlacklist(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2649
    sget-boolean v9, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "sendCdmaCallWaitingReject"

    invoke-direct {p0, v9}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2650
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->sendCdmaCallWaitingReject()V

    .line 2695
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v3           #phoneNumber:Ljava/lang/String;
    .end local v4           #ringingCall:Lcom/android/internal/telephony/Call;
    :goto_0
    return-void

    .line 2659
    :cond_1
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v9

    if-nez v9, :cond_3

    .line 2660
    sget-boolean v9, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v9, :cond_2

    const-string v9, "- showing incoming call (CDMA call waiting)..."

    invoke-direct {p0, v9}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2661
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 2665
    :cond_3
    iput-boolean v11, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 2666
    const-wide/16 v9, 0x4e20

    invoke-virtual {p0, v12, v9, v10}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 2670
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9, v11}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 2673
    const-wide/16 v9, 0x7530

    invoke-virtual {p0, v13, v9, v10}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 2677
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .line 2678
    .local v1, infoCW:Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    iget v2, v1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->isPresent:I

    .line 2679
    .local v2, isPresent:I
    sget-boolean v9, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCdmaCallWaiting: isPresent="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2680
    :cond_4
    const/4 v9, 0x1

    if-ne v2, v9, :cond_6

    .line 2681
    iget v8, v1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signalType:I

    .line 2682
    .local v8, uSignalType:I
    iget v6, v1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->alertPitch:I

    .line 2683
    .local v6, uAlertPitch:I
    iget v7, v1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signal:I

    .line 2684
    .local v7, uSignal:I
    sget-boolean v9, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCdmaCallWaiting: uSignalType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", uAlertPitch="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", uSignal="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2687
    :cond_5
    invoke-static {v8, v6, v7}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v5

    .line 2691
    .local v5, toneID:I
    new-instance v9, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v9, p0, v5}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v9}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    .line 2694
    .end local v5           #toneID:I
    .end local v6           #uAlertPitch:I
    .end local v7           #uSignal:I
    .end local v8           #uSignalType:I
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->checkIfKeepPreviousCallWaiting()V

    goto/16 :goto_0
.end method

.method private onCdmaCallWaitingReject()V
    .locals 18

    .prologue
    .line 2717
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallNotifier;->mWaitingInfo:Lcom/android/phone/CallNotifier$CallWaitingInfo;

    .line 2719
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v16

    .line 2722
    .local v16, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v17, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v17

    if-ne v2, v0, :cond_7

    .line 2724
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v11

    .line 2726
    .local v11, c:Lcom/android/internal/telephony/Connection;
    if-eqz v11, :cond_6

    .line 2728
    const/4 v12, 0x0

    .line 2729
    .local v12, isMissedType:Z
    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2730
    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    sget-object v17, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    if-eq v2, v0, :cond_0

    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    sget-object v17, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    if-eq v2, v0, :cond_0

    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    sget-object v17, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    if-ne v2, v0, :cond_1

    .line 2733
    :cond_0
    const/4 v12, 0x1

    .line 2735
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setupJogBallForIncomingCall(Z)Z

    .line 2741
    :cond_1
    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v14

    .line 2742
    .local v14, number:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v5

    .line 2743
    .local v5, presentation:I
    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v7

    .line 2744
    .local v7, date:J
    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v9

    .line 2745
    .local v9, duration:J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    if-nez v2, :cond_2

    if-eqz v12, :cond_8

    :cond_2
    const/4 v6, 0x3

    .line 2749
    .local v6, callLogType:I
    :goto_0
    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v15

    .line 2751
    .local v15, o:Ljava/lang/Object;
    if-eqz v15, :cond_3

    instance-of v2, v15, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_9

    :cond_3
    move-object v3, v15

    .line 2752
    check-cast v3, Lcom/android/internal/telephony/CallerInfo;

    .line 2759
    .end local v15           #o:Ljava/lang/Object;
    .local v3, ci:Lcom/android/internal/telephony/CallerInfo;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v2, v3, v14, v5}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 2761
    .local v4, logNumber:Ljava/lang/String;
    if-eqz v3, :cond_a

    iget v13, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2762
    .local v13, newPresentation:I
    :goto_2
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "- onCdmaCallWaitingReject(): logNumber set to: "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, ", newPresentation value is: "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2765
    :cond_4
    new-instance v1, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-direct/range {v1 .. v10}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V

    .line 2771
    .local v1, args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    sget-boolean v2, Lcom/android/phone/CityIdInfo;->ENABLED:Z

    if-eqz v2, :cond_5

    .line 2772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v2, v3, v4}, Lcom/android/phone/CityIdInfo;->addCityIdInfoInto(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;)V

    .line 2776
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v2, v1}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    .line 2778
    const/4 v2, 0x3

    if-ne v6, v2, :cond_b

    .line 2780
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7, v8}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 2787
    :goto_3
    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 2790
    sget-boolean v2, Lcom/htc/util/phone/ProfilingUtils;->ENABLED:Z

    if-eqz v2, :cond_6

    .line 2791
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->profileCallLog(Lcom/android/phone/CallLogAsync$AddCallArgs;)V

    .line 2797
    .end local v1           #args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    .end local v3           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v4           #logNumber:Ljava/lang/String;
    .end local v5           #presentation:I
    .end local v6           #callLogType:I
    .end local v7           #date:J
    .end local v9           #duration:J
    .end local v12           #isMissedType:Z
    .end local v13           #newPresentation:I
    .end local v14           #number:Ljava/lang/String;
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 2799
    .end local v11           #c:Lcom/android/internal/telephony/Connection;
    :cond_7
    return-void

    .line 2745
    .restart local v5       #presentation:I
    .restart local v7       #date:J
    .restart local v9       #duration:J
    .restart local v11       #c:Lcom/android/internal/telephony/Connection;
    .restart local v12       #isMissedType:Z
    .restart local v14       #number:Ljava/lang/String;
    :cond_8
    const/4 v6, 0x1

    goto :goto_0

    .line 2754
    .restart local v6       #callLogType:I
    .restart local v15       #o:Ljava/lang/Object;
    :cond_9
    check-cast v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v15           #o:Ljava/lang/Object;
    iget-object v3, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .restart local v3       #ci:Lcom/android/internal/telephony/CallerInfo;
    goto :goto_1

    .restart local v4       #logNumber:Ljava/lang/String;
    :cond_a
    move v13, v5

    .line 2761
    goto :goto_2

    .line 2783
    .restart local v1       #args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    .restart local v13       #newPresentation:I
    :cond_b
    const/16 v2, 0x17

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    goto :goto_3
.end method

.method private onCfiChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 2037
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr;->updateCfi(Z)V

    .line 2038
    return-void
.end method

.method private onCustomRingQueryComplete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 994
    const/4 v0, 0x0

    .line 995
    .local v0, isQueryExecutionTimeExpired:Z
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 996
    :try_start_0
    iget v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 997
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 998
    const/4 v0, 0x1

    .line 1000
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1001
    if-eqz v0, :cond_1

    .line 1004
    const-string v1, "CallNotifier"

    const-string v2, "CallerInfo query took too long; falling back to default ringtone"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const v1, 0x112a0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1020
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_3

    .line 1021
    const-string v1, "CallNotifier"

    const-string v2, "onCustomRingQueryComplete: No incoming call! Bailing out..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_2
    :goto_0
    return-void

    .line 1000
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1028
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_2

    .line 1029
    const-string v1, "CallNotifier"

    const-string v2, "onCustomRingQueryComplete: this is a waiting call!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter "r"

    .prologue
    .line 1591
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 1594
    const/4 v3, 0x0

    .line 1598
    .local v3, disconnectedPhoneType:I
    :try_start_0
    iget-object v10, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->getPhoneTypeByConnection(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1606
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->setHtcOnDisconnectFlag()V

    .line 1608
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 1609
    .local v1, c:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_0

    .line 1610
    const-string v10, "CallNotifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[embedded] - onDisconnect: cause = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", incoming = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", date = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    :cond_0
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0xd9

    if-eq v10, v11, :cond_1

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0x9

    if-ne v10, v11, :cond_2

    .line 1619
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getRawDisonnectCause()I

    move-result v10

    if-lez v10, :cond_2

    .line 1620
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mTelcelClearCodes:Ljava/util/HashMap;

    if-eqz v10, :cond_2

    .line 1621
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mTelcelClearCodes:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getRawDisonnectCause()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1622
    iget-object v11, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mTelcelClearCodes:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getRawDisonnectCause()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    const/4 v12, 0x0

    invoke-static {v11, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 1629
    :cond_2
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0xae

    if-ne v10, v11, :cond_3

    .line 1630
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v10, v11, :cond_3

    .line 1632
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const v11, 0x7f0e01b9

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 1638
    :cond_3
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/phone/CallNotifier;->mWaitingInfo:Lcom/android/phone/CallNotifier$CallWaitingInfo;

    .line 1640
    const/4 v0, 0x0

    .line 1641
    .local v0, autoretrySetting:I
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    .line 1642
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "call_auto_retry"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1647
    :cond_4
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v10, v11, :cond_6

    .line 1648
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v10, :cond_5

    .line 1649
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/phone/BluetoothHandsfree;->onCallDisconnected(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 1655
    :cond_5
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mPhoneSensorFunctions:Lcom/android/phone/HtcPhoneSensorFunctions;

    invoke-virtual {v10}, Lcom/android/phone/HtcPhoneSensorFunctions;->unregisterProximitySensor()V

    .line 1660
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 1662
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_7

    .line 1664
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v10}, Lcom/android/phone/CdmaPhoneCallState;->resetCdmaPhoneCallState()V

    .line 1667
    const/16 v10, 0x17

    invoke-virtual {p0, v10}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1668
    const/16 v10, 0x18

    invoke-virtual {p0, v10}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1684
    :cond_7
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 1685
    .local v7, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_21

    .line 1686
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 1689
    sget-boolean v10, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v10, :cond_8

    const-string v10, "cancelCallInProgressNotification()... (onDisconnect)"

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1690
    :cond_8
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotification()V

    .line 1693
    if-eqz v7, :cond_9

    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/Call;->hasConnection(Lcom/android/internal/telephony/Connection;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1695
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->setupJogBallForIncomingCall(Z)Z

    .line 1714
    :cond_9
    :goto_1
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v10}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->isCallWaitingTone()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1715
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v10}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 1716
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1720
    :cond_a
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1721
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 1722
    .local v6, number:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10, v6}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1723
    sget-boolean v10, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v10, :cond_b

    const-string v10, "onDisconnect: this was an OTASP call!"

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1724
    :cond_b
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->handleOtaspDisconnect()V

    .line 1730
    .end local v6           #number:Ljava/lang/String;
    :cond_c
    const/4 v9, 0x0

    .line 1733
    .local v9, toneToPlay:I
    if-eqz v1, :cond_e

    .line 1734
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    .line 1735
    .local v2, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v10, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v10, :cond_23

    .line 1736
    sget-boolean v10, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v10, :cond_d

    const-string v10, "- need to play BUSY tone!"

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1737
    :cond_d
    const/4 v9, 0x2

    .line 1771
    .end local v2           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_e
    :goto_2
    if-nez v9, :cond_10

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v10, v11, :cond_10

    if-eqz v1, :cond_10

    .line 1774
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    .line 1775
    .restart local v2       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v10, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v10, :cond_f

    sget-object v10, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v10, :cond_10

    .line 1778
    :cond_f
    const/4 v9, 0x5

    .line 1779
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 1786
    .end local v2           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_10
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getProximitySensorActive()Z

    move-result v10

    if-nez v10, :cond_32

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->isHandsFreePlugged()Z

    move-result v10

    if-nez v10, :cond_32

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v10, v11, :cond_32

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v10, v11, :cond_32

    .line 1791
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 1801
    :cond_11
    :goto_3
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v10, v11, :cond_34

    .line 1808
    const/4 v10, 0x2

    if-eq v9, v10, :cond_14

    .line 1813
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->platform:Ljava/lang/String;

    if-eqz v10, :cond_33

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->platform:Ljava/lang/String;

    const-string v11, "8k"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->platform:Ljava/lang/String;

    const-string v11, "msm7x30"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_33

    :cond_12
    const/4 v8, 0x1

    .line 1815
    .local v8, routeToAudioManager:Z
    :goto_4
    if-eqz v8, :cond_13

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1816
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 1819
    :cond_13
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 1822
    .end local v8           #routeToAudioManager:Z
    :cond_14
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotification()V

    .line 1851
    :cond_15
    :goto_5
    if-eqz v1, :cond_1d

    .line 1853
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v10

    if-eqz v10, :cond_35

    .line 1854
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 1859
    .restart local v6       #number:Ljava/lang/String;
    :goto_6
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    .line 1862
    .restart local v2       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    const-string v10, "CallNoitifer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "-- onDisconnect c.mHasUpdatedCallLog= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v1, Lcom/android/internal/telephony/Connection;->mHasUpdatedCallLog:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    iget-boolean v10, v1, Lcom/android/internal/telephony/Connection;->mHasUpdatedCallLog:Z

    if-nez v10, :cond_16

    .line 1865
    invoke-virtual {p0, v1, v2}, Lcom/android/phone/CallNotifier;->addCallLog(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 1873
    :cond_16
    if-eqz v9, :cond_17

    iget-boolean v10, p0, Lcom/android/phone/CallNotifier;->mIsOtaCall:Z

    if-nez v10, :cond_17

    .line 1875
    new-instance v10, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v10, p0, v9}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v10}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1888
    :cond_17
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/phone/CallNotifier;->mIsOtaCall:Z

    .line 1890
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v10, v11, :cond_1a

    .line 1908
    iget-boolean v10, p0, Lcom/android/phone/CallNotifier;->mKeyguardEnabled:Z

    if-nez v10, :cond_1a

    .line 1910
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v5

    .line 1914
    .local v5, incallScreen:Lcom/android/phone/InCallScreen;
    iget-boolean v10, p0, Lcom/android/phone/CallNotifier;->bInKeyguardRestrictedInputMode:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_36

    sget-object v10, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v10, :cond_18

    sget-object v10, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v10, :cond_36

    .line 1919
    :cond_18
    if-eqz v5, :cond_19

    .line 1920
    iget-boolean v10, v5, Lcom/android/phone/InCallScreen;->mDragedupToDeclineCall:Z

    if-nez v10, :cond_19

    iget-boolean v10, v5, Lcom/android/phone/InCallScreen;->deferCall:Z

    if-nez v10, :cond_19

    .line 1921
    const-string v10, "CallNotifier"

    const-string v11, "showKeyguard(true)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/PhoneApp;->showKeyguard(Z)V

    .line 1932
    :cond_19
    :goto_7
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/phone/CallNotifier;->mKeyguardEnabled:Z

    .line 1933
    if-eqz v5, :cond_1a

    .line 1934
    const/4 v10, 0x0

    iput-boolean v10, v5, Lcom/android/phone/InCallScreen;->mDragedupToDeclineCall:Z

    .line 1935
    const/4 v10, 0x0

    iput-boolean v10, v5, Lcom/android/phone/InCallScreen;->deferCall:Z

    .line 1950
    .end local v5           #incallScreen:Lcom/android/phone/InCallScreen;
    :cond_1a
    const/4 v10, 0x2

    if-ne v3, v10, :cond_1d

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->htcGetPreviousStateBeforeDisconnected()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v10, v11, :cond_1b

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->htcGetPreviousStateBeforeDisconnected()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_1d

    :cond_1b
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1d

    sget-object v10, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v10, :cond_1d

    sget-object v10, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v10, :cond_1d

    sget-object v10, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v10, :cond_1d

    sget-object v10, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v10, :cond_1d

    .line 1959
    iget-boolean v10, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-nez v10, :cond_38

    .line 1960
    const/4 v10, 0x1

    if-ne v0, v10, :cond_37

    .line 1963
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    if-eqz v10, :cond_1c

    .line 1964
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v6, v11}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    .line 1966
    :cond_1c
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 1976
    .end local v2           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .end local v6           #number:Ljava/lang/String;
    :cond_1d
    :goto_8
    sget-boolean v10, Lcom/android/phone/util/BuildUtils;->INCOMING_CALL_3D_LOCKSCREEN:Z

    if-eqz v10, :cond_1e

    .line 1977
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->handleCallDisconnected()V

    .line 1979
    :cond_1e
    return-void

    .line 1600
    .end local v0           #autoretrySetting:I
    .end local v1           #c:Lcom/android/internal/telephony/Connection;
    .end local v7           #ringingCall:Lcom/android/internal/telephony/Call;
    .end local v9           #toneToPlay:I
    :catch_0
    move-exception v4

    .line 1602
    .local v4, e:Ljava/lang/Exception;
    const-string v10, "CallNotifier"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1699
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v0       #autoretrySetting:I
    .restart local v1       #c:Lcom/android/internal/telephony/Connection;
    .restart local v7       #ringingCall:Lcom/android/internal/telephony/Call;
    :cond_1f
    sget-boolean v10, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v10, :cond_20

    const-string v10, "stopRing()... (onDisconnect)"

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1702
    :cond_20
    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->processRingtoneOnDisconnect(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_1

    .line 1706
    :cond_21
    sget-boolean v10, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v10, :cond_22

    const-string v10, "stopRing()... (onDisconnect)"

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1709
    :cond_22
    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->processRingtoneOnDisconnect(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_1

    .line 1738
    .restart local v2       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .restart local v9       #toneToPlay:I
    :cond_23
    sget-object v10, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v10, :cond_25

    .line 1739
    sget-boolean v10, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v10, :cond_24

    const-string v10, "- need to play CONGESTION tone!"

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1740
    :cond_24
    const/4 v9, 0x3

    goto/16 :goto_2

    .line 1741
    :cond_25
    sget-object v10, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v10, :cond_26

    sget-object v10, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v10, :cond_28

    :cond_26
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v10

    if-eqz v10, :cond_28

    .line 1744
    sget-boolean v10, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v10, :cond_27

    const-string v10, "- need to play OTA_CALL_END tone!"

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1745
    :cond_27
    const/16 v9, 0xc

    goto/16 :goto_2

    .line 1746
    :cond_28
    sget-object v10, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v10, :cond_2a

    .line 1747
    sget-boolean v10, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v10, :cond_29

    const-string v10, "- need to play CDMA_REORDER tone!"

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1748
    :cond_29
    const/4 v9, 0x7

    goto/16 :goto_2

    .line 1749
    :cond_2a
    sget-object v10, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v10, :cond_2c

    .line 1750
    sget-boolean v10, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v10, :cond_2b

    const-string v10, "- need to play CDMA_INTERCEPT tone!"

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1751
    :cond_2b
    const/16 v9, 0x8

    goto/16 :goto_2

    .line 1752
    :cond_2c
    sget-object v10, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_DROP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v10, :cond_2e

    .line 1753
    sget-boolean v10, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v10, :cond_2d

    const-string v10, "- need to play CDMA_DROP tone!"

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1754
    :cond_2d
    const/16 v9, 0x9

    goto/16 :goto_2

    .line 1755
    :cond_2e
    sget-object v10, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v10, :cond_30

    .line 1756
    sget-boolean v10, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v10, :cond_2f

    const-string v10, "- need to play OUT OF SERVICE tone!"

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1757
    :cond_2f
    const/16 v9, 0xa

    goto/16 :goto_2

    .line 1758
    :cond_30
    sget-object v10, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v10, :cond_e

    .line 1759
    sget-boolean v10, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v10, :cond_31

    const-string v10, "- DisconnectCause is ERROR_UNSPECIFIED: play TONE_CALL_ENDED!"

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1760
    :cond_31
    const/4 v9, 0x5

    goto/16 :goto_2

    .line 1795
    .end local v2           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_32
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v10, v11, :cond_11

    .line 1796
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->wakeUpScreenWithNoForce()V

    goto/16 :goto_3

    .line 1813
    :cond_33
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 1842
    :cond_34
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->allIdle(Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->allIdle(Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getRingingCalls()Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->allIdle(Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_15

    .line 1845
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotification()V

    goto/16 :goto_5

    .line 1856
    :cond_35
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDialString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #number:Ljava/lang/String;
    goto/16 :goto_6

    .line 1926
    .restart local v2       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .restart local v5       #incallScreen:Lcom/android/phone/InCallScreen;
    :cond_36
    if-eqz v5, :cond_19

    iget-boolean v10, v5, Lcom/android/phone/InCallScreen;->mDragedupToDeclineCall:Z

    if-nez v10, :cond_19

    .line 1927
    const-string v10, "CallNotifier"

    const-string v11, "showKeyguard(false)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/PhoneApp;->showKeyguard(Z)V

    goto/16 :goto_7

    .line 1968
    .end local v5           #incallScreen:Lcom/android/phone/InCallScreen;
    :cond_37
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_8

    .line 1971
    :cond_38
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_8
.end method

.method private onDisplayInfo(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "r"

    .prologue
    .line 2449
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    move-object v1, v2

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    .line 2451
    .local v1, displayInfoRec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;
    if-eqz v1, :cond_1

    .line 2452
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->alpha:Ljava/lang/String;

    .line 2453
    .local v0, displayInfo:Ljava/lang/String;
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisplayInfo: displayInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2454
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v2, v0}, Lcom/android/phone/CdmaDisplayInfo;->displayInfoRecord(Landroid/content/Context;Ljava/lang/String;)V

    .line 2457
    const/16 v2, 0x19

    const-wide/16 v3, 0x1388

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 2460
    .end local v0           #displayInfo:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private onMwiChanged(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 2006
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMwiChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2022
    :cond_0
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr;->updateMwi(I)V

    .line 2023
    return-void
.end method

.method private onNewRingingConnection(Landroid/os/AsyncResult;)V
    .locals 9
    .parameter "r"

    .prologue
    const/4 v8, 0x1

    .line 652
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 653
    .local v0, c:Lcom/android/internal/telephony/Connection;
    const-string v5, "CallNotifier"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[embedded] onNewRingingConnection(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 655
    .local v3, ringing:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 659
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isTabletPhoneEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->checkBlackList(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 661
    :cond_0
    const-string v5, "CallNotifier"

    const-string v6, "CallNotifier: rejecting incoming call"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 824
    :goto_0
    return-void

    .line 668
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 673
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 677
    :cond_2
    if-nez v0, :cond_3

    .line 678
    const-string v5, "CallNotifier"

    const-string v6, "CallNotifier.onNewRingingConnection(): null connection!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 690
    :cond_3
    sget-boolean v5, Lcom/android/phone/Utils;->DRIVING_MODE_SUPPORTED:Z

    if-eqz v5, :cond_5

    .line 692
    const-string v5, "CallNotifier"

    const-string v6, "Checking Driving Mode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/phone/Utils;->flagDrivingModeCall(Lcom/android/phone/BluetoothHandsfree;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 697
    const-string v5, "CallNotifier"

    const-string v6, "Flag Call for Driving Mode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iput-boolean v8, p0, Lcom/android/phone/CallNotifier;->drivingModeCallFlagged:Z

    .line 701
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 704
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Utils;->sendCallerReplySms(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 706
    :cond_4
    sget-boolean v5, Lcom/android/phone/Utils;->USE_EMERALD_SOLUTION:Z

    if-eqz v5, :cond_5

    .line 707
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    if-eqz v5, :cond_5

    .line 708
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/Utils;->isHFMEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 709
    .local v1, donotRing:Z
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v5, v1}, Lcom/android/phone/Ringer;->setDonotRing(Z)V

    .line 715
    .end local v1           #donotRing:Z
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v5

    if-nez v5, :cond_6

    .line 716
    const-string v5, "CallNotifier"

    const-string v6, "CallNotifier.onNewRingingConnection(): connection not ringing!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 728
    :cond_6
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v6, Lcom/android/phone/PhoneApp$WakeState;->PARTIAL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v5, v6}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 732
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 734
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 760
    .local v4, state:Lcom/android/internal/telephony/Call$State;
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->setupSensorsForOnNewRinging()V

    .line 776
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 777
    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    .line 821
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->htcOnNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_0

    .line 781
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCCWT()Z

    move-result v5

    if-nez v5, :cond_8

    .line 783
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    .line 784
    new-instance v5, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/16 v6, 0x32

    invoke-direct {v5, p0, v6, v8}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;IZ)V

    iput-object v5, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 798
    :goto_2
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 802
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    goto :goto_1

    .line 787
    :cond_9
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xd1

    if-ne v5, v6, :cond_a

    .line 789
    new-instance v5, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v5, p0, v8, v8}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;IZ)V

    iput-object v5, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    goto :goto_2

    .line 794
    :cond_a
    new-instance v5, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v8, v6}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;IZ)V

    iput-object v5, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    goto :goto_2
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 22
    .parameter "r"

    .prologue
    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v17

    .line 1152
    .local v17, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v19, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 1153
    sget-boolean v19, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v19, :cond_0

    const-string v19, "onPhoneStateChanged: reset mIsRinging to false."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1154
    :cond_0
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsRinging:Z

    .line 1159
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1161
    sget-object v19, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_2

    sget-boolean v19, Lcom/android/phone/CallNotifier;->mMutebyPScall:Z

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 1162
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->setupPSCallIdleState()V

    .line 1164
    :cond_2
    sget-object v19, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getSkypeCallState()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 1167
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->stopCallWaitingToneIfNecessary()Z

    .line 1168
    const-string v19, "onPhoneStateChanged()...stop call waiting tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1178
    :cond_3
    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v20, 0xa8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 1180
    :cond_4
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableNotificationAlerts(Z)V

    .line 1186
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v19

    if-nez v19, :cond_7

    .line 1438
    :goto_1
    return-void

    .line 1183
    :cond_5
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v20

    sget-object v19, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_6

    const/16 v19, 0x1

    :goto_2
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableNotificationAlerts(Z)V

    goto :goto_0

    :cond_6
    const/16 v19, 0x0

    goto :goto_2

    .line 1189
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    .line 1190
    .local v9, fgPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 1191
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 1194
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 1195
    const/16 v18, 0xb

    .line 1196
    .local v18, toneToPlay:I
    new-instance v19, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1199
    .end local v18           #toneToPlay:I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 1201
    :cond_a
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    .line 1209
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/phone/PhoneApp;->updateBluetoothIndication(Z)V

    .line 1218
    sget-object v19, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPhoneSensorFunctions:Lcom/android/phone/HtcPhoneSensorFunctions;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/HtcPhoneSensorFunctions;->unregisterOrientationSensor()V

    .line 1222
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v7

    .line 1223
    .local v7, dialing:Z
    if-eqz v7, :cond_d

    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPhoneSensorFunctions:Lcom/android/phone/HtcPhoneSensorFunctions;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/HtcPhoneSensorFunctions;->registerProximitySensor()V

    .line 1230
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->updatePhoneState(Lcom/android/internal/telephony/Phone$State;)V

    .line 1233
    sget-object v19, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_20

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->isCallWaitingTone()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 1237
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1240
    :cond_e
    sget-boolean v19, Lcom/android/phone/PhoneUtils;->DELAY_RINGTONE:Z

    if-eqz v19, :cond_1d

    .line 1241
    const/16 v19, 0x321

    const-wide/16 v20, 0x1f4

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 1274
    :goto_3
    const-string v19, "ro.board.platform"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1275
    .local v16, platform:Ljava/lang/String;
    if-eqz v16, :cond_1f

    const-string v19, "8k"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1f

    const/4 v10, 0x1

    .line 1276
    .local v10, is8K:Z
    :goto_4
    if-eqz v10, :cond_f

    .line 1277
    sget-object v19, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 1278
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v19

    if-nez v19, :cond_f

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    const-string v20, "audio"

    invoke-virtual/range {v19 .. v20}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 1281
    .local v4, am:Landroid/media/AudioManager;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 1282
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 1290
    .end local v4           #am:Landroid/media/AudioManager;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v19

    if-nez v19, :cond_10

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual/range {v19 .. v20}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual/range {v19 .. v20}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1301
    :cond_10
    sget-boolean v19, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v19, :cond_11

    const-string v19, "stopRing()... (OFFHOOK state)"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1306
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v19

    if-eqz v19, :cond_12

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/Ringer;->stopRing()V

    .line 1312
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->stopCallWaitingToneIfNecessary()Z

    .line 1316
    sget-boolean v19, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v19, :cond_13

    const-string v19, "- updating notification for phone state change..."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1317
    :cond_13
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 1319
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->resumeMmiDialog()V

    .line 1320
    sget-boolean v19, Lcom/android/phone/util/BuildUtils;->INCOMING_CALL_3D_LOCKSCREEN:Z

    if-eqz v19, :cond_14

    .line 1321
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->handleOffHook()V

    .line 1325
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallNotifier;->mHasSIPCall:Z

    move/from16 v19, v0

    if-nez v19, :cond_15

    .line 1327
    if-eqz v9, :cond_15

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 1329
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mHasSIPCall:Z

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Lcom/android/phone/PhoneApp;->notifyWifiFullMode(Landroid/net/wifi/WifiManager;Z)V

    .line 1331
    const-string v19, "CallNotifier"

    const-string v20, "phone state = OFFHOOK: NotifyWifiPhoneCallComeIn"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    :cond_15
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsAnswering:Z

    .line 1338
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->removePhoneRingingMessage()V

    .line 1374
    .end local v10           #is8K:Z
    .end local v16           #platform:Ljava/lang/String;
    :goto_5
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    .line 1375
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .line 1376
    .local v5, c:Lcom/android/internal/telephony/Connection;
    if-eqz v5, :cond_18

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 1378
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    .line 1379
    .local v6, callState:Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    move-object/from16 v19, v0

    if-nez v19, :cond_16

    .line 1380
    new-instance v19, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;-><init>(Lcom/android/phone/CallNotifier;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    .line 1383
    :cond_16
    sget-object v19, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v19

    if-eq v6, v0, :cond_17

    sget-object v19, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v19

    if-ne v6, v0, :cond_24

    .line 1384
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "emergency_tone"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    .line 1387
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    move/from16 v19, v0

    if-eqz v19, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    move/from16 v19, v0

    if-nez v19, :cond_18

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    move-object/from16 v19, v0

    if-eqz v19, :cond_18

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    move-object/from16 v19, v0

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->start()V
    invoke-static/range {v19 .. v19}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$200(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 1403
    .end local v5           #c:Lcom/android/internal/telephony/Connection;
    .end local v6           #callState:Lcom/android/internal/telephony/Call$State;
    :cond_18
    :goto_6
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_19

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1a

    .line 1405
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    .line 1406
    .restart local v6       #callState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v19

    if-nez v19, :cond_1a

    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1a

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 1411
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1417
    .end local v6           #callState:Lcom/android/internal/telephony/Call$State;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCurrentPhoneState:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_1c

    sget-object v19, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1c

    .line 1418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/util/ConfigUtils;->isDockMode(Landroid/content/res/Configuration;)Z

    move-result v12

    .line 1420
    .local v12, isDockMode:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_25

    const/4 v14, 0x1

    .line 1421
    .local v14, isSpeakOff:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v15

    .line 1422
    .local v15, isWiredHeadsetConnected:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    if-eqz v19, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v19

    if-eqz v19, :cond_26

    const/4 v11, 0x1

    .line 1424
    .local v11, isBTConnected:Z
    :goto_8
    if-nez v15, :cond_1b

    if-eqz v11, :cond_27

    :cond_1b
    const/4 v13, 0x1

    .line 1426
    .local v13, isHandsFreePlugged:Z
    :goto_9
    if-eqz v12, :cond_1c

    if-eqz v14, :cond_1c

    if-nez v13, :cond_1c

    .line 1427
    const-string v19, "CallNotifier"

    const-string v20, "Laputa: auto turn on speaker"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 1434
    .end local v11           #isBTConnected:Z
    .end local v12           #isDockMode:Z
    .end local v13           #isHandsFreePlugged:Z
    .end local v14           #isSpeakOff:Z
    .end local v15           #isWiredHeadsetConnected:Z
    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->doBatteryLifeImprovementWhenPhoneStateChanged(Lcom/android/internal/telephony/Phone$State;)V

    .line 1436
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallNotifier;->mCurrentPhoneState:Lcom/android/internal/telephony/Phone$State;

    goto/16 :goto_1

    .line 1243
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v19

    if-nez v19, :cond_1e

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 1245
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneUtils;->turnOnDockSpeakerForDialing(Lcom/android/phone/PhoneApp;)Z

    goto/16 :goto_3

    .line 1249
    :cond_1e
    const/16 v19, 0x321

    const-wide/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 1275
    .restart local v16       #platform:Ljava/lang/String;
    :cond_1f
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 1343
    .end local v16           #platform:Ljava/lang/String;
    :cond_20
    sget-object v19, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_22

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneApp;->getMmiDialog()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    .line 1345
    .local v8, dialog:Lcom/htc/widget/HtcAlertDialog;
    if-eqz v8, :cond_21

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_21

    .line 1346
    const-string v19, "onPhoneStateChanged: HIDE MMI DLG"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1347
    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->hide()V

    .line 1351
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneApp;->hideUSSDRunningDialog()V

    goto/16 :goto_5

    .line 1355
    .end local v8           #dialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->resumeMmiDialog()V

    .line 1358
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallNotifier;->mHasSIPCall:Z

    move/from16 v19, v0

    if-eqz v19, :cond_23

    .line 1360
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mHasSIPCall:Z

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/phone/PhoneApp;->notifyWifiFullMode(Landroid/net/wifi/WifiManager;Z)V

    .line 1362
    const-string v19, "CallNotifier"

    const-string v20, "phone state = IDLE:  NotifyWifiPhoneCallEnd"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :cond_23
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsAnswering:Z

    .line 1370
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->removePhoneRingingMessage()V

    goto/16 :goto_5

    .line 1393
    .restart local v5       #c:Lcom/android/internal/telephony/Connection;
    .restart local v6       #callState:Lcom/android/internal/telephony/Call$State;
    :cond_24
    sget-object v19, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v19

    if-ne v6, v0, :cond_18

    .line 1394
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    move/from16 v19, v0

    if-eqz v19, :cond_18

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    move-object/from16 v19, v0

    if-eqz v19, :cond_18

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    move-object/from16 v19, v0

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static/range {v19 .. v19}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$300(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    goto/16 :goto_6

    .line 1420
    .end local v5           #c:Lcom/android/internal/telephony/Connection;
    .end local v6           #callState:Lcom/android/internal/telephony/Call$State;
    .restart local v12       #isDockMode:Z
    :cond_25
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 1422
    .restart local v14       #isSpeakOff:Z
    .restart local v15       #isWiredHeadsetConnected:Z
    :cond_26
    const/4 v11, 0x0

    goto/16 :goto_8

    .line 1424
    .restart local v11       #isBTConnected:Z
    :cond_27
    const/4 v13, 0x0

    goto/16 :goto_9
.end method

.method private onResendMute()V
    .locals 2

    .prologue
    .line 2983
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    .line 2984
    .local v0, muteState:Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2985
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2986
    return-void

    .line 2984
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onRingbackTone(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 2959
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2961
    .local v0, playTone:Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2966
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v1, :cond_0

    .line 2968
    new-instance v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 2969
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 2977
    :cond_0
    :goto_0
    return-void

    .line 2972
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v1, :cond_0

    .line 2973
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 2974
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    goto :goto_0
.end method

.method private onSignalInfo(Landroid/os/AsyncResult;)V
    .locals 8
    .parameter "r"

    .prologue
    .line 2500
    sget-boolean v6, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v6, :cond_1

    .line 2501
    const-string v6, "CallNotifier"

    const-string v7, "Got onSignalInfo() on non-voice-capable device! Ignoring..."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    :cond_0
    :goto_0
    return-void

    .line 2504
    :cond_1
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2507
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    goto :goto_0

    .line 2510
    :cond_2
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    move-object v1, v6

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 2512
    .local v1, signalInfoRec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    if-eqz v1, :cond_0

    .line 2513
    iget-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->isPresent:Z

    .line 2514
    .local v0, isPresent:Z
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSignalInfo: isPresent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2515
    :cond_3
    if-eqz v0, :cond_0

    .line 2516
    iget v5, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signalType:I

    .line 2517
    .local v5, uSignalType:I
    iget v3, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->alertPitch:I

    .line 2518
    .local v3, uAlertPitch:I
    iget v4, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signal:I

    .line 2520
    .local v4, uSignal:I
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSignalInfo: uSignalType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uAlertPitch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uSignal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2523
    :cond_4
    invoke-static {v5, v3, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v2

    .line 2527
    .local v2, toneID:I
    new-instance v6, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v6, p0, v2}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    goto :goto_0
.end method

.method private onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 1050
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 1052
    .local v0, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    .line 1054
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 1055
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "- showing incoming call (unknown connection appeared)..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1056
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 1058
    :cond_1
    return-void
.end method

.method private processAttrsForFlipToSpeaker(Lcom/android/internal/telephony/Phone$State;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3232
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x4000

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 3233
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_3

    .line 3235
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mFlipECompass:Lcom/android/phone/FlipToSpeakerAttrE;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mFlipECompass:Lcom/android/phone/FlipToSpeakerAttrE;

    invoke-virtual {v0}, Lcom/android/phone/FlipToSpeakerAttrE;->isEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3236
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mFlipECompass:Lcom/android/phone/FlipToSpeakerAttrE;

    invoke-virtual {v0, v3}, Lcom/android/phone/FlipToSpeakerAttrE;->toggle(Z)V

    .line 3238
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mFlipGSensor:Lcom/android/phone/FlipToSpeakerAttrG;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mFlipGSensor:Lcom/android/phone/FlipToSpeakerAttrG;

    invoke-virtual {v0}, Lcom/android/phone/FlipToSpeakerAttrG;->isEnable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3239
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mFlipGSensor:Lcom/android/phone/FlipToSpeakerAttrG;

    invoke-virtual {v0, v3}, Lcom/android/phone/FlipToSpeakerAttrG;->toggle(Z)V

    .line 3250
    :cond_2
    :goto_0
    return-void

    .line 3242
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mFlipECompass:Lcom/android/phone/FlipToSpeakerAttrE;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mFlipECompass:Lcom/android/phone/FlipToSpeakerAttrE;

    invoke-virtual {v0}, Lcom/android/phone/FlipToSpeakerAttrE;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3243
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mFlipECompass:Lcom/android/phone/FlipToSpeakerAttrE;

    invoke-virtual {v0, v2}, Lcom/android/phone/FlipToSpeakerAttrE;->toggle(Z)V

    .line 3245
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mFlipGSensor:Lcom/android/phone/FlipToSpeakerAttrG;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mFlipGSensor:Lcom/android/phone/FlipToSpeakerAttrG;

    invoke-virtual {v0}, Lcom/android/phone/FlipToSpeakerAttrG;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3246
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mFlipGSensor:Lcom/android/phone/FlipToSpeakerAttrG;

    invoke-virtual {v0, v2}, Lcom/android/phone/FlipToSpeakerAttrG;->toggle(Z)V

    goto :goto_0
.end method

.method private processRingtoneOnDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 6
    .parameter "conn"

    .prologue
    const/4 v5, 0x0

    .line 3851
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3853
    .local v0, RingingCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Call;->hasConnection(Lcom/android/internal/telephony/Connection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3855
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopCallWaitingToneIfNecessary()Z

    .line 3856
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v4}, Lcom/android/phone/Ringer;->stopRing()V

    .line 3857
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->setupJogBallForIncomingCall(Z)Z

    .line 3858
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mPhoneSensorFunctions:Lcom/android/phone/HtcPhoneSensorFunctions;

    invoke-virtual {v4}, Lcom/android/phone/HtcPhoneSensorFunctions;->unregisterProximitySensor()V

    .line 3881
    :cond_0
    :goto_0
    return-void

    .line 3860
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->getFgBgConnectionSize()I

    move-result v3

    .line 3861
    .local v3, num:I
    add-int/lit8 v4, v3, -0x1

    if-gtz v4, :cond_4

    .line 3862
    const/4 v1, 0x0

    .line 3863
    .local v1, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 3865
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cn:Lcom/android/internal/telephony/Connection;
    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 3867
    .restart local v1       #cn:Lcom/android/internal/telephony/Connection;
    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3868
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v4, v1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 3869
    .local v2, info:Lcom/android/internal/telephony/CallerInfo;
    iget-object v4, v2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    if-eqz v4, :cond_3

    .line 3870
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    iget-object v5, v2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 3874
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopCallWaitingToneIfNecessary()Z

    .line 3875
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v4}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_0

    .line 3878
    .end local v1           #cn:Lcom/android/internal/telephony/Connection;
    .end local v2           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_4
    const-string v4, "Still have active or hold call exist(s), keep current status!!"

    invoke-direct {p0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static final profileCallLog(Lcom/android/phone/CallLogAsync$AddCallArgs;)V
    .locals 5
    .parameter "args"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 4120
    iget v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    .line 4121
    .local v0, callType:I
    if-eq v0, v3, :cond_0

    if-ne v0, v4, :cond_1

    .line 4122
    .local v3, isIncoming:Z
    :cond_0
    :goto_0
    if-ne v4, v0, :cond_2

    const-wide/16 v1, 0x0

    .line 4124
    .local v1, duration:J
    :goto_1
    invoke-static {v3, v1, v2}, Lcom/android/phone/CallNotifier;->feedbackCallLog(ZJ)V

    .line 4125
    return-void

    .line 4121
    .end local v1           #duration:J
    .end local v3           #isIncoming:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 4122
    .restart local v3       #isIncoming:Z
    :cond_2
    iget v4, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    int-to-long v1, v4

    goto :goto_1
.end method

.method private registerForNotifications()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1498
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1499
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1500
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1501
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1502
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1506
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x1c

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1508
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1509
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1510
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1511
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1512
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1513
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xb

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1514
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xc

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1517
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForVoiceCallConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1519
    return-void
.end method

.method private resetAudioStateAfterDisconnect()V
    .locals 3

    .prologue
    .line 1987
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_0

    .line 1988
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 1993
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 1995
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 1996
    return-void
.end method

.method private resumeMmiDialog()V
    .locals 2

    .prologue
    .line 3259
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getMmiDialog()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 3260
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    if-eqz v0, :cond_0

    .line 3261
    const-string v1, "onPhoneStateChanged: SHOW MMI DLG"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3262
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 3264
    :cond_0
    return-void
.end method

.method private setHtcOnDisconnectFlag()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3728
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3729
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getSkypeIncallScreenEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getSkypeCallState()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 3731
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v0

    .line 3733
    .local v0, incallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->showKeyguardWithAnimation(Z)V

    .line 3734
    iput-boolean v3, v0, Lcom/android/phone/InCallScreen;->mDragedupToDeclineCall:Z

    .line 3736
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gsm.lockscreen.mode.status"

    const-string v3, "true"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3738
    const-string v1, "CallNotifier"

    const-string v2, ">>> onDisconnect(),   set lockscreen mode :true "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3746
    .end local v0           #incallScreen:Lcom/android/phone/InCallScreen;
    :cond_0
    :goto_0
    return-void

    .line 3740
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gsm.lockscreen.mode.status"

    const-string v3, "false"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3742
    const-string v1, "CallNotifier"

    const-string v2, ">>> onDisconnect(),   set lockscreen mode :false "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setupClientAudioFocusOnOff(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    .line 3691
    const-string v6, "CallNotifier"

    const-string v7, "setupClientAudioFocusOnOff()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3693
    const-string v6, "clientName"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3695
    .local v0, mClientName:Ljava/lang/String;
    const-string v6, "requestFocus"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 3697
    .local v1, mMute:Z
    const-string v6, "timestamp"

    const-wide/16 v7, 0x0

    invoke-virtual {p1, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 3698
    .local v4, timestamp:J
    const-string v6, "CallNotifier"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setupClientAudioFocusOnOff()......client name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " requestFocus:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " timestamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3700
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3702
    const-string v6, "CallNotifier"

    const-string v7, "setupClientAudioFocusOnOff()......client name empty!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3718
    :cond_0
    :goto_0
    return-void

    .line 3706
    :cond_1
    const-string v6, "Phone"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3708
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getRequestTimeStamp()J

    move-result-wide v2

    .line 3709
    .local v2, mReqTimeStamp:J
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 3712
    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 3713
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/phone/PhoneUtils;->setMuteTxRXCSCall(Lcom/android/internal/telephony/Phone;Z)V

    goto :goto_0

    .line 3714
    :cond_2
    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    .line 3715
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/android/phone/PhoneUtils;->setMuteTxRXCSCall(Lcom/android/internal/telephony/Phone;Z)V

    goto :goto_0

    .line 3717
    .end local v2           #mReqTimeStamp:J
    :cond_3
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/android/phone/PhoneUtils;->setMuteTxRXCSCall(Lcom/android/internal/telephony/Phone;Z)V

    goto :goto_0
.end method

.method private setupReceiveSkypePhoneIntent()V
    .locals 3

    .prologue
    .line 3425
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3426
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PS_CALL_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3427
    const-string v1, "android.intent.action.MERLIN_RESUME_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3428
    const-string v1, "android.intent.action.VoIP_RESUME_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3434
    const-string v1, "android.intent.action.PS_AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3435
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mSkypePhoneStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3436
    return-void
.end method

.method private setupSensorsForOnNewRinging()V
    .locals 3

    .prologue
    .line 3754
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->allIdle(Ljava/util/List;)Z

    move-result v1

    .line 3755
    .local v1, fgIdle:Z
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->allIdle(Ljava/util/List;)Z

    move-result v0

    .line 3757
    .local v0, bgIdle:Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3758
    const/16 v2, 0x33

    invoke-virtual {p0, v2}, Lcom/android/phone/CallNotifier;->sendEmptyMessage(I)Z

    .line 3760
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mPhoneSensorFunctions:Lcom/android/phone/HtcPhoneSensorFunctions;

    invoke-virtual {v2}, Lcom/android/phone/HtcPhoneSensorFunctions;->registerProximitySensor()V

    .line 3761
    return-void
.end method

.method private showIncomingCall()V
    .locals 2

    .prologue
    .line 1080
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->showIncomingCall(Ljava/lang/String;Z)V

    .line 1081
    return-void
.end method

.method private showIncomingCall(Ljava/lang/String;Z)V
    .locals 3
    .parameter "number"
    .parameter "isRestrictedMode"

    .prologue
    .line 1084
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "showIncomingCall()..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1089
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const-string v2, "call"

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    .line 1123
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v2, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1129
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "- updating notification from showIncomingCall()..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1130
    :cond_1
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 1132
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1133
    .local v0, displayIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 1134
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/phone/CallNotifier;->broadcastRingingcall(Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)V

    .line 1137
    return-void

    .line 1090
    .end local v0           #displayIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V
    .locals 1
    .parameter "c"
    .parameter "date"

    .prologue
    .line 2827
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;JZ)V

    .line 2828
    return-void
.end method

.method private showMissedCallNotification(Lcom/android/internal/telephony/Connection;JZ)V
    .locals 10
    .parameter "c"
    .parameter "date"
    .parameter "flash"

    .prologue
    .line 2831
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, p1, p0, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v9

    .line 2833
    .local v9, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    if-eqz v9, :cond_4

    .line 2837
    iget-boolean v0, v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v0, :cond_0

    .line 2840
    iget-object v8, v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2845
    .local v8, ci:Lcom/android/internal/telephony/CallerInfo;
    iget-object v1, v8, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2846
    .local v1, name:Ljava/lang/String;
    iget-object v2, v8, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2847
    .local v2, number:Ljava/lang/String;
    iget v0, v8, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v0, v3, :cond_1

    .line 2848
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const v3, 0x7f0e0223

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2856
    :goto_0
    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->isBlacklist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2860
    if-nez p4, :cond_3

    .line 2862
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    iget-object v3, v8, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    const-string v4, "CITY_ID"

    invoke-virtual {v8, v4}, Lcom/android/internal/telephony/CallerInfo;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v8, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    move-wide v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr;->notifyRejectMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 2880
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    .end local v8           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_0
    :goto_1
    return-void

    .line 2849
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #number:Ljava/lang/String;
    .restart local v8       #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_1
    iget v0, v8, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v0, v3, :cond_2

    .line 2850
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const v3, 0x7f0e0222

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2852
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget v3, v8, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v0, v8, v2, v3}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2867
    :cond_3
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    iget-object v3, v8, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    const-string v4, "CITY_ID"

    invoke-virtual {v8, v4}, Lcom/android/internal/telephony/CallerInfo;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v8, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    move-wide v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 2878
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    .end local v8           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_4
    const-string v0, "CallNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showMissedCallNotification: got null CallerInfo for Connection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 918
    const/4 v1, 0x0

    .line 919
    .local v1, shouldStartQuery:Z
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 920
    :try_start_0
    iget v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    if-nez v2, :cond_0

    .line 921
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 922
    const/4 v1, 0x1

    .line 924
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    if-eqz v1, :cond_3

    .line 927
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 930
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v2, p1, p0, p0}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 935
    .local v0, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-boolean v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v2, :cond_2

    .line 937
    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0, v4, p0, v2}, Lcom/android/phone/CallNotifier;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    .line 974
    .end local v0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_1
    :goto_0
    return-void

    .line 924
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 940
    .restart local v0       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_2
    const/16 v2, 0x64

    const-wide/16 v3, 0x1f4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 949
    .end local v0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_3
    const v2, 0x112a1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 957
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_1

    goto :goto_0
.end method

.method private updateCallerInfoFromDialerService(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 4
    .parameter "number"
    .parameter "intent"

    .prologue
    .line 4011
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    if-eqz v2, :cond_0

    .line 4013
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    invoke-interface {v2, p1}, Lcom/htc/service/dialer/IDialerService;->getContactData(Ljava/lang/String;)Lcom/htc/service/dialer/ContactData;

    move-result-object v0

    .line 4014
    .local v0, contactData:Lcom/htc/service/dialer/ContactData;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/htc/service/dialer/ContactData;->mDisplayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4016
    const-string v2, "CallNotifier"

    const-string v3, "Got name from DialerService!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4017
    const-string v2, "name"

    iget-object v3, v0, Lcom/htc/service/dialer/ContactData;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4025
    .end local v0           #contactData:Lcom/htc/service/dialer/ContactData;
    :cond_0
    :goto_0
    return-void

    .line 4021
    :catch_0
    move-exception v1

    .line 4022
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "CallNotifier"

    const-string v3, "fail to call dialerservice: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateCallerInfoIntoRingingCallIntent(Landroid/content/Intent;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 11
    .parameter "intent"
    .parameter "ci"

    .prologue
    .line 3939
    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    .line 3941
    const-string v9, "update caller info into ringing call intent"

    invoke-direct {p0, v9}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3942
    iget-object v9, p2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 3944
    sget-boolean v9, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KEY name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3945
    :cond_0
    const-string v9, "name"

    iget-object v10, p2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3947
    :cond_1
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3948
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 3950
    .local v7, res:Landroid/content/res/Resources;
    iget v9, p2, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    invoke-static {v0, v9}, Landroid/provider/HtcUnionContact$ContactUtils;->getPhoneNumberTypeShortString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 3952
    .local v6, label:Ljava/lang/String;
    iget-object v9, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v9, v6, v7}, Lcom/android/phone/PhoneUtils;->createDisplayNumber(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    .line 3954
    .local v2, displayNumber:Ljava/lang/String;
    const-string v9, "display_number"

    invoke-virtual {p1, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3955
    sget-boolean v9, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KEY displayNumber: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3958
    :cond_2
    iget-boolean v9, p2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v9, :cond_4

    .line 3959
    iget-object v3, p2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 3960
    .local v3, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v3, :cond_4

    .line 3961
    sget-boolean v9, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v9, :cond_3

    const-string v9, "KEY hasPhoto: true"

    invoke-direct {p0, v9}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3962
    :cond_3
    const-string v9, "photo"

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3967
    .end local v3           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_4
    iget-object v9, p2, Lcom/android/internal/telephony/CallerInfo;->date:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 3968
    sget-boolean v9, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KEY event description: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p2, Lcom/android/internal/telephony/CallerInfo;->date:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3969
    :cond_5
    const-string v9, "event_descriptioin"

    iget-object v10, p2, Lcom/android/internal/telephony/CallerInfo;->date:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3970
    const-string v9, "event_icon"

    const v10, 0x7f02008e

    invoke-static {v7, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3976
    :cond_6
    iget-object v9, p2, Lcom/android/internal/telephony/CallerInfo;->SN_status:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 3977
    sget-boolean v9, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v9, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KEY sn status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p2, Lcom/android/internal/telephony/CallerInfo;->SN_status:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3978
    :cond_7
    const-string v9, "sn_status"

    iget-object v10, p2, Lcom/android/internal/telephony/CallerInfo;->SN_status:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3979
    iget-object v8, p2, Lcom/android/internal/telephony/CallerInfo;->SN_icon:Landroid/graphics/drawable/Drawable;

    .line 3980
    .local v8, snIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_8

    .line 3981
    const/4 v5, 0x0

    .line 3982
    .local v5, iconBitmap:Landroid/graphics/Bitmap;
    instance-of v9, v8, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v9, :cond_b

    .line 3983
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8           #snIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 3990
    :goto_0
    if-eqz v5, :cond_8

    .line 3991
    const-string v9, "sn_icon"

    invoke-virtual {p1, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3997
    .end local v5           #iconBitmap:Landroid/graphics/Bitmap;
    :cond_8
    sget-boolean v9, Lcom/android/phone/CityIdInfo;->ENABLED:Z

    if-eqz v9, :cond_a

    .line 3998
    invoke-static {p2}, Lcom/android/phone/EcidClient;->getClient(Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/EcidClient;

    move-result-object v4

    .line 3999
    .local v4, ecid:Lcom/android/phone/EcidClient;
    if-eqz v4, :cond_a

    .line 4000
    invoke-virtual {v4}, Lcom/android/phone/EcidClient;->getCityStateDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 4001
    .local v1, displayName:Ljava/lang/String;
    sget-boolean v9, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v9, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KEY displayName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4002
    :cond_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 4003
    const-string v9, "location"

    invoke-virtual {p1, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4008
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #displayName:Ljava/lang/String;
    .end local v2           #displayNumber:Ljava/lang/String;
    .end local v4           #ecid:Lcom/android/phone/EcidClient;
    .end local v6           #label:Ljava/lang/String;
    .end local v7           #res:Landroid/content/res/Resources;
    :cond_a
    return-void

    .line 3984
    .restart local v0       #context:Landroid/content/Context;
    .restart local v2       #displayNumber:Ljava/lang/String;
    .restart local v5       #iconBitmap:Landroid/graphics/Bitmap;
    .restart local v6       #label:Ljava/lang/String;
    .restart local v7       #res:Landroid/content/res/Resources;
    .restart local v8       #snIcon:Landroid/graphics/drawable/Drawable;
    :cond_b
    instance-of v9, v8, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v9, :cond_c

    .line 3986
    const-string v9, "CallNotifier"

    const-string v10, "KEY sn icon: snIcon instanceof StateListDrawable"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3988
    :cond_c
    const-string v9, "CallNotifier"

    const-string v10, "KEY sn icon: invalid class"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateScreenDimWithPhoneState()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4335
    const-string v0, "persist.radio.dimdelay"

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v5, v0, 0x3e8

    .line 4336
    .local v5, dimDelay:I
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v6, -0x1

    move v4, v3

    invoke-interface/range {v0 .. v6}, Landroid/os/IPowerManager;->userActivityWithScreenDelay(JZIII)V

    .line 4337
    return-void
.end method


# virtual methods
.method public addCallLog(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .locals 19
    .parameter "c"
    .parameter "cause"

    .prologue
    .line 3303
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3304
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v14

    .line 3310
    .local v14, number:Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v8

    .line 3311
    .local v8, date:J
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v10

    .line 3320
    .local v10, duration:J
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3323
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, p2

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, p2

    if-eq v0, v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/phone/CallNotifier;->drivingModeCallFlagged:Z

    if-eqz v3, :cond_9

    .line 3325
    :cond_0
    const/4 v7, 0x3

    .line 3341
    .local v7, callLogType:I
    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/CallNotifier;->drivingModeCallFlagged:Z

    .line 3348
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    .line 3350
    .local v4, ci:Lcom/android/internal/telephony/CallerInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v5

    .line 3360
    .local v5, logNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/phone/CallNotifier;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v6

    .line 3361
    .local v6, presentation:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v16

    .line 3362
    .local v16, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v17

    .line 3364
    .local v17, phoneType:I
    const/4 v3, 0x2

    move/from16 v0, v17

    if-ne v0, v3, :cond_1

    .line 3365
    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v3, :cond_1

    .line 3367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v3, :cond_1

    .line 3368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v3}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$300(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 3374
    :cond_1
    const/4 v3, 0x2

    move/from16 v0, v17

    if-ne v0, v3, :cond_2

    sget-boolean v3, Lcom/android/phone/HtcFeatureList;->FEATURE_not_logEmergencyNumber:Z

    if-nez v3, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_3
    const/16 v18, 0x1

    .line 3378
    .local v18, shouldNotlogEmergencyNumber:Z
    :goto_2
    const/4 v3, 0x2

    move/from16 v0, v17

    if-ne v0, v3, :cond_c

    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v13, 0x1

    .line 3380
    .local v13, isOtaNumber:Z
    :goto_3
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_4
    const/4 v12, 0x1

    .line 3381
    .local v12, isEmergencyNumber:Z
    :goto_4
    if-nez v13, :cond_e

    if-eqz v12, :cond_5

    if-nez v18, :cond_e

    :cond_5
    const/4 v15, 0x1

    .line 3386
    .local v15, okToLogThisCall:Z
    :goto_5
    if-eqz v15, :cond_6

    .line 3387
    new-instance v2, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-direct/range {v2 .. v11}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V

    .line 3392
    .local v2, args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v3, v2}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    .line 3393
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/internal/telephony/Connection;->mHasUpdatedCallLog:Z

    .line 3396
    sget-boolean v3, Lcom/htc/util/phone/ProfilingUtils;->ENABLED:Z

    if-eqz v3, :cond_6

    .line 3397
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->profileCallLog(Lcom/android/phone/CallLogAsync$AddCallArgs;)V

    .line 3403
    .end local v2           #args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    :cond_6
    const/4 v3, 0x3

    if-ne v7, v3, :cond_7

    .line 3409
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_f

    .line 3411
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9, v3}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;JZ)V

    .line 3420
    :cond_7
    :goto_6
    return-void

    .line 3306
    .end local v4           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v5           #logNumber:Ljava/lang/String;
    .end local v6           #presentation:I
    .end local v7           #callLogType:I
    .end local v8           #date:J
    .end local v10           #duration:J
    .end local v12           #isEmergencyNumber:Z
    .end local v13           #isOtaNumber:Z
    .end local v14           #number:Ljava/lang/String;
    .end local v15           #okToLogThisCall:Z
    .end local v16           #phone:Lcom/android/internal/telephony/Phone;
    .end local v17           #phoneType:I
    .end local v18           #shouldNotlogEmergencyNumber:Z
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getDialString()Ljava/lang/String;

    move-result-object v14

    .restart local v14       #number:Ljava/lang/String;
    goto/16 :goto_0

    .line 3327
    .restart local v8       #date:J
    .restart local v10       #duration:J
    :cond_9
    const/4 v7, 0x1

    .restart local v7       #callLogType:I
    goto/16 :goto_1

    .line 3336
    .end local v7           #callLogType:I
    :cond_a
    const/4 v7, 0x2

    .restart local v7       #callLogType:I
    goto/16 :goto_1

    .line 3374
    .restart local v4       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v5       #logNumber:Ljava/lang/String;
    .restart local v6       #presentation:I
    .restart local v16       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v17       #phoneType:I
    :cond_b
    const/16 v18, 0x0

    goto :goto_2

    .line 3378
    .restart local v18       #shouldNotlogEmergencyNumber:Z
    :cond_c
    const/4 v13, 0x0

    goto :goto_3

    .line 3380
    .restart local v13       #isOtaNumber:Z
    :cond_d
    const/4 v12, 0x0

    goto :goto_4

    .line 3381
    .restart local v12       #isEmergencyNumber:Z
    :cond_e
    const/4 v15, 0x0

    goto :goto_5

    .line 3415
    .restart local v15       #okToLogThisCall:Z
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    goto :goto_6
.end method

.method public addMMICodeCallLog(Ljava/lang/String;)V
    .locals 15
    .parameter "mmiNumber"

    .prologue
    .line 4181
    move-object/from16 v13, p1

    .line 4182
    .local v13, number:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 4183
    .local v6, date:J
    const-wide/16 v11, 0x0

    .line 4185
    .local v11, duration:J
    const/4 v10, 0x2

    .line 4188
    .local v10, callLogType:I
    const/4 v2, 0x0

    .line 4189
    .local v2, ci:Lcom/android/internal/telephony/CallerInfo;
    move-object v3, v13

    .line 4190
    .local v3, logNumber:Ljava/lang/String;
    const/4 v14, 0x1

    .line 4192
    .local v14, presentation:I
    new-instance v0, Lcom/android/phone/CallLogAsync$AddCallArgs;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v4, 0x1

    const/4 v5, 0x2

    const-wide/16 v8, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V

    .line 4195
    .local v0, args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    .line 4199
    return-void
.end method

.method bindDialerService()V
    .locals 4

    .prologue
    .line 3193
    const-string v0, "CallNotifier"

    const-string v1, "bindDialerService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3195
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSrvConn:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 3196
    new-instance v0, Lcom/android/phone/CallNotifier$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier$2;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mSrvConn:Landroid/content/ServiceConnection;

    .line 3212
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.htcdialer.DialerService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mSrvConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/PhoneApp;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3213
    const-string v0, "CallNotifier"

    const-string v1, "bind DialerService fail !"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    :cond_0
    return-void
.end method

.method public broadcastRingingcall(Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 7
    .parameter "number"
    .parameter "info"

    .prologue
    const/4 v6, 0x1

    .line 4049
    sget-boolean v3, Lcom/android/phone/util/BuildUtils;->INCOMING_CALL_3D_LOCKSCREEN:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->onlyRinging(Lcom/android/internal/telephony/CallManager;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4053
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "CallNotifier"

    const-string v4, "display 3d incoming call lockscreen"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4055
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/phone/CallNotifier;->createBroadcastRingingCallIntent(Lcom/android/internal/telephony/CallerInfo;)Landroid/content/Intent;

    move-result-object v2

    .line 4056
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "display_number"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4059
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez p2, :cond_1

    .line 4060
    invoke-direct {p0, p1, v2}, Lcom/android/phone/CallNotifier;->updateCallerInfoFromDialerService(Ljava/lang/String;Landroid/content/Intent;)V

    .line 4064
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4065
    if-eqz p2, :cond_7

    move-object v0, p2

    .line 4066
    .local v0, callInfo:Lcom/android/internal/telephony/CallerInfo;
    :goto_0
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 4067
    .local v1, displayName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4068
    const-string v3, "name"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4071
    :cond_2
    const-string p1, " "

    .line 4072
    const-string v3, "display_number"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4076
    .end local v0           #callInfo:Lcom/android/internal/telephony/CallerInfo;
    .end local v1           #displayName:Ljava/lang/String;
    :cond_3
    if-eqz p2, :cond_4

    iget-boolean v3, p2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v3, :cond_4

    const-string v3, "photo"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 4079
    :cond_4
    const-string v3, "photo"

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020083

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4083
    :cond_5
    invoke-direct {p0, v2, v6}, Lcom/android/phone/CallNotifier;->broadcastRingingCallWithStatus(Landroid/content/Intent;I)V

    .line 4086
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    if-ne v3, v4, :cond_6

    .line 4088
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mShowLockScreenMode:Z

    .line 4089
    const-string v3, "CallNotifier"

    const-string v4, "broadcastRingingcall mShowLockScreenMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4094
    .end local v2           #intent:Landroid/content/Intent;
    :cond_6
    return-void

    .line 4065
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_7
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->getRingingCallerInfo()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    goto :goto_0
.end method

.method createBroadcastRingingCallIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 3918
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->createBroadcastRingingCallIntent(Lcom/android/internal/telephony/CallerInfo;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method createBroadcastRingingCallIntent(Lcom/android/internal/telephony/CallerInfo;)Landroid/content/Intent;
    .locals 6
    .parameter "ci"

    .prologue
    .line 3922
    new-instance v1, Landroid/content/Intent;

    const-string v5, "ACTION_LOCKSCREEN_PHONE_STATE_CHANGE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3924
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getOperatorInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/OperatorInfo;

    .line 3925
    .local v3, opInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 3926
    .local v4, res:Landroid/content/res/Resources;
    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->calculateOperatorString(Lcom/android/internal/telephony/gsm/OperatorInfo;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    .line 3927
    .local v2, op:Ljava/lang/String;
    const-string v5, "operator_name"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3929
    const v5, 0x7f0e0396

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3930
    .local v0, callType:Ljava/lang/String;
    const-string v5, "call_type"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3931
    if-eqz p1, :cond_0

    .line 3932
    invoke-direct {p0, v1, p1}, Lcom/android/phone/CallNotifier;->updateCallerInfoIntoRingingCallIntent(Landroid/content/Intent;Lcom/android/internal/telephony/CallerInfo;)V

    .line 3935
    :cond_0
    return-object v1
.end method

.method getIsCdmaRedialCall()Z
    .locals 1

    .prologue
    .line 2819
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    return v0
.end method

.method getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 2805
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method getVoicePrivacyState()Z
    .locals 1

    .prologue
    .line 2812
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 404
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 409
    :sswitch_0
    const-string v6, "CallNotifier"

    const-string v7, "MSG_CAHNGE_AUDIO_MODE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    .line 413
    .local v4, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v6, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v6, :cond_0

    .line 415
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v6}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v6

    if-nez v6, :cond_2

    .line 417
    const-string v6, "CallNotifier"

    const-string v7, "mRinger.isRinging() = false"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 422
    .local v2, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v6

    if-eq v6, v8, :cond_1

    .line 423
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 425
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->turnOnDockSpeakerForDialing(Lcom/android/phone/PhoneApp;)Z

    goto :goto_0

    .line 429
    .end local v2           #audioManager:Landroid/media/AudioManager;
    :cond_2
    const-string v6, "CallNotifier"

    const-string v7, "mRinger.isRinging() = true"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/16 v6, 0x321

    const-wide/16 v7, 0x64

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 439
    .end local v4           #state:Lcom/android/internal/telephony/Phone$State;
    :sswitch_1
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_3

    const-string v6, "RINGING... (new)"

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 440
    :cond_3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->onNewRingingConnection(Landroid/os/AsyncResult;)V

    .line 441
    iput-boolean v10, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    goto :goto_0

    .line 446
    :sswitch_2
    iget-boolean v6, p0, Lcom/android/phone/CallNotifier;->mIsAnswering:Z

    if-nez v6, :cond_0

    .line 450
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_0

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    iget-object v6, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 451
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    iget-object v3, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    .line 453
    .local v3, pb:Lcom/android/internal/telephony/PhoneBase;
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PHONE_INCOMING_RING... mIsRinging: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/phone/CallNotifier;->mIsRinging:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 454
    :cond_4
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v7, :cond_7

    iget-boolean v6, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    if-nez v6, :cond_7

    iget-boolean v6, p0, Lcom/android/phone/CallNotifier;->mIsRinging:Z

    if-eqz v6, :cond_7

    .line 463
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getSkypeCallState()I

    move-result v6

    if-ne v6, v8, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 465
    const-string v6, "silent ring if ps is ongoing and incoming cs call"

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 466
    iput-boolean v9, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    goto/16 :goto_0

    .line 470
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->isLaputaNaviForeground()Z

    move-result v6

    if-nez v6, :cond_0

    .line 471
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_6

    const-string v6, "RINGING... (PHONE_INCOMING_RING event)"

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 472
    :cond_6
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v6}, Lcom/android/phone/Ringer;->ring()V

    goto/16 :goto_0

    .line 479
    :cond_7
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "RING before NEW_RING, skipping"

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 486
    .end local v3           #pb:Lcom/android/internal/telephony/PhoneBase;
    :sswitch_3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 490
    :sswitch_4
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_8

    const-string v6, "DISCONNECT"

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 491
    :cond_8
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->onDisconnect(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 496
    :sswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 497
    .local v1, arOTA:Landroid/os/AsyncResult;
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_9

    .line 498
    const-string v6, "CallNotifier"

    const-string v7, "Exception of receiving ota message"

    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 502
    :cond_9
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    move-object v0, v6

    check-cast v0, [I

    .line 503
    .local v0, OtaStatus:[I
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_a

    const-string v6, "CallNotifier"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ota ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v0, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_a
    aget v6, v0, v10

    const/16 v7, 0xe

    if-ne v6, v7, :cond_0

    .line 505
    iput-boolean v9, p0, Lcom/android/phone/CallNotifier;->mIsOtaCall:Z

    goto/16 :goto_0

    .line 510
    .end local v0           #OtaStatus:[I
    .end local v1           #arOTA:Landroid/os/AsyncResult;
    :sswitch_6
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 517
    :sswitch_7
    const-string v6, "CallNotifier"

    const-string v7, "CallerInfo query took too long; manually starting ringer"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    goto/16 :goto_0

    .line 531
    :sswitch_8
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicatorEnhanced()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->onMwiChanged(I)V

    goto/16 :goto_0

    .line 536
    :sswitch_9
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onBatteryLow()V

    goto/16 :goto_0

    .line 541
    :sswitch_a
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->onCallConnected(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 546
    :sswitch_b
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_b

    const-string v6, "Received PHONE_CDMA_CALL_WAITING event"

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 547
    :cond_b
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->onCdmaCallWaiting(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 551
    :sswitch_c
    const-string v6, "CallNotifier"

    const-string v7, "Received CDMA_CALL_WAITING_REJECT event"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    goto/16 :goto_0

    .line 556
    :sswitch_d
    const-string v6, "CallNotifier"

    const-string v7, "Received CALLWAITING_CALLERINFO_DISPLAY_DONE event"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iput-boolean v9, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 558
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    goto/16 :goto_0

    .line 562
    :sswitch_e
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_c

    const-string v6, "Received CALLWAITING_ADDCALL_DISABLE_TIMEOUT event ..."

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 564
    :cond_c
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6, v9}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 565
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->updateInCallScreenTouchUi()V

    goto/16 :goto_0

    .line 569
    :sswitch_f
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_d

    const-string v6, "Received PHONE_STATE_DISPLAYINFO event"

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 570
    :cond_d
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->onDisplayInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 574
    :sswitch_10
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_e

    const-string v6, "Received PHONE_STATE_SIGNALINFO event"

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 575
    :cond_e
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->onSignalInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 579
    :sswitch_11
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_f

    const-string v6, "Received Display Info notification done event ..."

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 580
    :cond_f
    invoke-static {}, Lcom/android/phone/CdmaDisplayInfo;->dismissDisplayInfoRecord()V

    goto/16 :goto_0

    .line 584
    :sswitch_12
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6, p1}, Lcom/android/phone/PhoneApp;->handleOtaEvents(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 588
    :sswitch_13
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_10

    const-string v6, "PHONE_ENHANCED_VP_ON..."

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 589
    :cond_10
    iget-boolean v6, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    if-nez v6, :cond_0

    .line 590
    const/4 v5, 0x6

    .line 591
    .local v5, toneToPlay:I
    new-instance v6, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v6, p0, v5}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 592
    iput-boolean v9, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 594
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_11

    const-string v6, "- updating notification for VP state..."

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 595
    :cond_11
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 600
    .end local v5           #toneToPlay:I
    :sswitch_14
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_12

    const-string v6, "PHONE_ENHANCED_VP_OFF..."

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 601
    :cond_12
    iget-boolean v6, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    if-eqz v6, :cond_0

    .line 602
    const/4 v5, 0x6

    .line 603
    .restart local v5       #toneToPlay:I
    new-instance v6, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v6, p0, v5}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 604
    iput-boolean v10, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 606
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_13

    const-string v6, "- updating notification for VP state..."

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 607
    :cond_13
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 612
    .end local v5           #toneToPlay:I
    :sswitch_15
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->onRingbackTone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 616
    :sswitch_16
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onResendMute()V

    goto/16 :goto_0

    .line 621
    :sswitch_17
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v7, :cond_0

    .line 622
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mPhoneSensorFunctions:Lcom/android/phone/HtcPhoneSensorFunctions;

    iget-boolean v7, p0, Lcom/android/phone/CallNotifier;->mIsVIP:Z

    invoke-virtual {v6, v7}, Lcom/android/phone/HtcPhoneSensorFunctions;->registerOrientationSensor(Z)V

    goto/16 :goto_0

    .line 404
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_6
        0x5 -> :sswitch_2
        0x6 -> :sswitch_f
        0x7 -> :sswitch_10
        0x8 -> :sswitch_b
        0x9 -> :sswitch_13
        0xa -> :sswitch_14
        0xb -> :sswitch_15
        0xc -> :sswitch_16
        0x15 -> :sswitch_8
        0x16 -> :sswitch_9
        0x17 -> :sswitch_d
        0x18 -> :sswitch_e
        0x19 -> :sswitch_11
        0x1a -> :sswitch_12
        0x1b -> :sswitch_c
        0x1c -> :sswitch_5
        0x32 -> :sswitch_a
        0x33 -> :sswitch_17
        0x64 -> :sswitch_7
        0x321 -> :sswitch_0
    .end sparse-switch
.end method

.method protected isBlacklist(Ljava/lang/String;)Z
    .locals 4
    .parameter "phoneNumber"

    .prologue
    .line 3277
    const/4 v1, 0x0

    .line 3279
    .local v1, shouldSendToVoicemail:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    if-eqz v2, :cond_0

    .line 3280
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    invoke-interface {v2, p1}, Lcom/htc/service/dialer/IDialerService;->needToHangupCall(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3286
    :cond_0
    :goto_0
    sget-boolean v2, Landroid/provider/HtcContactsContract$BALCKLIST;->enableBlacklist:Z

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/provider/HtcContactsContract;->enableManageCalls:Z

    if-eqz v2, :cond_2

    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 3282
    :catch_0
    move-exception v0

    .line 3283
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "CallNotifier"

    const-string v3, "fail to call dialerservice"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3286
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method isNewRingingConnectionInKeyguardRestrictedInputMode()Z
    .locals 2

    .prologue
    .line 3116
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mbNewRingingConnectionInKeyguardRestrictedInputMode:Z

    if-eqz v0, :cond_0

    const-string v0, "ril.cdma.inecmmode"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRinging()Z
    .locals 1

    .prologue
    .line 2044
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    return v0
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 1528
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 1532
    iget-object v0, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->isBlacklist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1533
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v3, p3, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v6, "CITY_ID"

    invoke-virtual {p3, v6}, Lcom/android/internal/telephony/CallerInfo;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p3, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 1586
    :cond_0
    :goto_0
    return-void

    .line 1538
    .restart local p2
    :cond_1
    instance-of v0, p2, Lcom/android/phone/CallNotifier;

    if-eqz v0, :cond_0

    .line 1543
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1545
    const/4 v8, 0x0

    .line 1546
    .local v8, isQueryExecutionTimeOK:Z
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 1547
    :try_start_0
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 1548
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 1549
    const/4 v8, 0x1

    .line 1551
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1553
    if-eqz v8, :cond_0

    .line 1566
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 1579
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    .line 1581
    iget-object v0, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v0, p3}, Lcom/android/phone/CallNotifier;->broadcastRingingcall(Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)V

    goto :goto_0

    .line 1551
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method processMTCallsWithoutQuery(Ljava/lang/String;Z)V
    .locals 5
    .parameter "number"
    .parameter "isRestrictedMode"

    .prologue
    .line 3172
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    if-eqz v2, :cond_0

    .line 3174
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    invoke-interface {v2, p1}, Lcom/htc/service/dialer/IDialerService;->getRingtonePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3176
    .local v1, ringtonePath:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3177
    const-string v2, "CallNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "custom ringtone found, setting up ringer."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3187
    .end local v1           #ringtonePath:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallNotifier;->showIncomingCall(Ljava/lang/String;Z)V

    .line 3188
    return-void

    .line 3183
    :catch_0
    move-exception v0

    .line 3184
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removePhoneRingingMessage()V
    .locals 1

    .prologue
    .line 4173
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 4174
    return-void
.end method

.method public resetAudioStateAfterNoCall()V
    .locals 2

    .prologue
    .line 3889
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 3890
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 3892
    :cond_0
    return-void
.end method

.method public ring()V
    .locals 1

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2078
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->ring()V

    .line 2080
    :cond_0
    return-void
.end method

.method public ringAndTurnOnScreen()V
    .locals 4

    .prologue
    .line 4205
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v0

    .line 4207
    .local v0, incallScreen:Lcom/android/phone/InCallScreen;
    const-string v2, "callNotifier"

    const-string v3, "-- ringAndTurnOnScreen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4210
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->allowOthersToRing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4212
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    .line 4213
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v1, v2, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 4215
    .local v1, notifier:Lcom/android/phone/CallNotifier;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getSkypeCallState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4218
    const-string v2, "processAllowScreenOn()...play call waiting tone"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4219
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->setupPSCallRingingState()V

    .line 4230
    .end local v1           #notifier:Lcom/android/phone/CallNotifier;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_1

    .line 4235
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    .line 4239
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4240
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setupJogBallForIncomingCall(Z)Z

    .line 4245
    :cond_2
    return-void

    .line 4224
    .restart local v1       #notifier:Lcom/android/phone/CallNotifier;
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->ring()V

    goto :goto_0
.end method

.method sendBatteryLow()V
    .locals 2

    .prologue
    .line 2064
    const/16 v1, 0x16

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2065
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->sendMessage(Landroid/os/Message;)Z

    .line 2066
    return-void
.end method

.method sendCdmaCallWaitingReject()V
    .locals 1

    .prologue
    .line 2705
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->sendEmptyMessage(I)Z

    .line 2706
    return-void
.end method

.method sendMwiChangedDelayed(J)V
    .locals 2
    .parameter "delayMillis"

    .prologue
    .line 2031
    const/16 v1, 0x15

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2032
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2033
    return-void
.end method

.method public setNewRingingConnectionInKeyguardRestrictedInputMode(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 3130
    iput-boolean p1, p0, Lcom/android/phone/CallNotifier;->mbNewRingingConnectionInKeyguardRestrictedInputMode:Z

    .line 3131
    return-void
.end method

.method public setupPSCallIdleState()V
    .locals 2

    .prologue
    .line 3624
    const-string v0, "CallNotifier"

    const-string v1, "un-mute TxRx ......"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3625
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3633
    :goto_0
    return-void

    .line 3628
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopCallWaitingToneIfNecessary()Z

    .line 3629
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMuteTxRx()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3630
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->setMuteTxRXCSCall(Lcom/android/internal/telephony/Phone;Z)V

    .line 3632
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/CallNotifier;->mMutebyPScall:Z

    goto :goto_0
.end method

.method public setupPSCallOffHookState()V
    .locals 2

    .prologue
    .line 3646
    const-string v0, "CallNotifier"

    const-string v1, "mute TxRx ......"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3647
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3655
    :goto_0
    return-void

    .line 3650
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopCallWaitingToneIfNecessary()Z

    .line 3651
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMuteTxRx()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3652
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->setMuteTxRXCSCall(Lcom/android/internal/telephony/Phone;Z)V

    .line 3654
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/CallNotifier;->mMutebyPScall:Z

    goto :goto_0
.end method

.method public setupPSCallRingingState()V
    .locals 3

    .prologue
    .line 3638
    const-string v0, "CallNotifier"

    const-string v1, "play call waiting tone ......"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3639
    new-instance v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;IZ)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 3640
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 3641
    return-void
.end method

.method silenceRinger()V
    .locals 1

    .prologue
    .line 2052
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 2053
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "stopRing()... (silenceRinger)"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2054
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    .line 2056
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->htcSilenceRinger()V

    .line 2057
    return-void
.end method

.method stopCallWaitingToneIfNecessary()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3830
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_1

    .line 3832
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v0, :cond_2

    .line 3833
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 3834
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 3835
    const/4 v0, 0x1

    .line 3842
    :goto_0
    return v0

    .line 3838
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v0, :cond_2

    .line 3839
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 3842
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method stopSignalInfoTone()V
    .locals 2

    .prologue
    .line 2540
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "stopSignalInfoTone: Stopping SignalInfo tone player"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2541
    :cond_0
    new-instance v0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    const/16 v1, 0x62

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    .line 2542
    return-void
.end method

.method stopVibrate()V
    .locals 1

    .prologue
    .line 3228
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopVibrate()V

    .line 3229
    return-void
.end method

.method updateCallNotifierRegistrationsAfterRadioTechnologyChange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1464
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallNotifier"

    const-string v1, "updateCallNotifierRegistrationsAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 1467
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 1468
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 1469
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 1470
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 1471
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1472
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 1473
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 1474
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 1475
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 1476
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 1479
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1

    .line 1480
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 1481
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    .line 1485
    :cond_1
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1488
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1490
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 1491
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 1494
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 1495
    return-void
.end method

.method vibrate()V
    .locals 1

    .prologue
    .line 3223
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->vibrate()V

    .line 3224
    return-void
.end method
