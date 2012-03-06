.class public Lcom/android/phone/InCallScreen;
.super Landroid/app/Activity;
.source "InCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/phone/view/OnVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallScreen$35;,
        Lcom/android/phone/InCallScreen$DialogClickListener;,
        Lcom/android/phone/InCallScreen$PwdResultReceiver;,
        Lcom/android/phone/InCallScreen$LockScreenPersonInfo;,
        Lcom/android/phone/InCallScreen$CallerData;,
        Lcom/android/phone/InCallScreen$InCallInitStatus;,
        Lcom/android/phone/InCallScreen$InCallScreenMode;,
        Lcom/android/phone/InCallScreen$InCallScreenActionType;
    }
.end annotation


# static fields
.field public static final ACTION_UNDEFINED:Ljava/lang/String; = "com.android.phone.InCallScreen.UNDEFINED"

.field static final ACTIVITY_RESULT_NAMEID:I = 0x1

.field private static final ADD_VOICEMAIL_NUMBER:I = 0x6a

.field private static final ALLOW_SCREEN_ON:I = 0x70

.field static final AUTO_RETRY_OFF:I = 0x0

.field static final AUTO_RETRY_ON:I = 0x1

.field private static final BLUETOOTH_STATE_CHANGED:I = 0xc9

.field public static final CALENDAR_EVENT:Z = true

.field private static final CALL_ENDED_LONG_DELAY:I = 0x7d0

.field private static final CALL_ENDED_SHORT_DELAY:I = 0xc8

#the value of this static final field might be set in the static constructor
.field private static final CONFIRM_BEFORE_TURN_ON_RADIO:Z = false

.field public static final CS_PREFERRED:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DEBUG_TAG:Ljava/lang/String; = "PHONE/InCallScreen_Debug"

.field private static final DELAYED_CLEANUP_AFTER_DISCONNECT:I = 0x6c

.field private static final DISMISS_MENU:I = 0x6f

.field private static final DONT_ADD_VOICEMAIL_NUMBER:I = 0x6b

.field private static final EVENT_HEADSET_PLUG_STATE_CHANGED:I = 0x67

.field private static final EVENT_HIDE_PROVIDER_OVERLAY:I = 0x79

.field private static final EVENT_OTA_PROVISION_CHANGE:I = 0x75

.field private static final EVENT_PAUSE_DIALOG_COMPLETE:I = 0x78

.field static final EXTRA_GATEWAY_PROVIDER_PACKAGE:Ljava/lang/String; = "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

.field static final EXTRA_GATEWAY_URI:Ljava/lang/String; = "com.android.phone.extra.GATEWAY_URI"

.field private static final HTC_MSG_ACCEPTE_CALL_KEY:I = 0x325

.field private static final HTC_MSG_DELAY_ON_RESUME:I = 0x329

.field private static final HTC_MSG_DISMISS_SAVE_TO_CONTACT_DIALOG:I = 0x322

.field private static final HTC_MSG_END_CALL_FINISH_IMMEDIATELY:I = 0x320

.field private static final HTC_MSG_FINISH_WHEN_IDLE:I = 0x326

.field private static final HTC_MSG_HANGUP_FOR_COMPOSING_REJECT_MESSAGE:I = 0x32b

.field private static final HTC_MSG_PLACE_CALL:I = 0x324

.field private static final HTC_MSG_RELEASE_ALL_CALL_RESULT:I = 0x327

.field private static final HTC_MSG_RESET_TOAST:I = 0x32a

.field private static final HTC_MSG_RETRY_TO_ANSWER_CALL:I = 0x323

.field private static final HTC_MSG_SUPP_SERVICE_NOTIFICATION:I = 0x321

.field private static final HTC_MSG_TOAST:I = 0x328

.field public static final IDLE:Ljava/lang/String; = "IDLE"

.field public static final IMS_CALL_FAILED:Ljava/lang/String; = "IMS_CALL_FAILED"

.field public static final IMS_PREFERRED:I = 0x1

.field public static final INCALL_SCREEN_PANEL_MENU:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "InCallScreen"

.field private static final MAX_CALLERS_IN_CONFERENCE:I = 0x5

.field private static final MENU_DISMISS_DELAY:I = 0x3e8

.field static final MESSAGE_TYPE_COMPOSER:I = 0x0

.field static final MESSAGE_TYPE_DIRECTLY:I = 0x1

.field private static final MSG_DISMISS_HBPCD_RETRY_DIALOG:I = 0xd2

.field private static final MSG_REMOVE_BG:I = 0x7

.field public static final NOT_INITIALIZED:Ljava/lang/String; = "NOT_INITIALIZED"

.field private static final PAUSE_PROMPT_DIALOG_TIMEOUT:I = 0x7d0

.field private static final PHONE_CDMA_CALL_WAITING:I = 0x73

.field private static final PHONE_DISCONNECT:I = 0x66

.field private static final PHONE_STATE_CHANGED:I = 0x65

.field private static final POST_ON_DIAL_CHARS:I = 0x68

.field private static final PROVIDER_OVERLAY_TIMEOUT:I = 0x1388

.field static final REQUEST_ANSWER:I = 0x1

.field private static final REQUEST_CLOSE_OTA_FAILURE_NOTICE:I = 0x77

.field private static final REQUEST_CLOSE_SPC_ERROR_NOTICE:I = 0x76

.field static final REQUEST_DECLINE:I = 0x2

.field static final REQUEST_DEFER:I = 0x3

.field static final REQUEST_REJECT_MSG:I = 0x4

.field private static final REQUEST_UPDATE_BLUETOOTH_INDICATION:I = 0x72

.field private static final REQUEST_UPDATE_TOUCH_UI:I = 0x7a

.field private static final RESULT_CODE_PWD_CONFIRM:I = 0x3f3

.field static final SHOW_DIALPAD_EXTRA:Ljava/lang/String; = "com.android.phone.ShowDialpad"

.field private static final SUPP_SERVICE_FAILED:I = 0x6e

#the value of this static final field might be set in the static constructor
.field private static final SWAP_CMD_BAR_ICON:Z = false

.field private static final THREEWAY_CALLERINFO_DISPLAY_DONE:I = 0x74

.field private static final THREEWAY_CALLERINFO_DISPLAY_TIME:I = 0x7d0

.field private static final TIMEOUT_RESET_TOAST_LONG:I = 0x3a98

.field private static final TIMEOUT_RESET_TOAST_SHORT:I = 0x1388

.field private static final TIME_OUT_HBPCD_RETRY_DIALOG:I = 0x1770

#the value of this static final field might be set in the static constructor
.field private static final TIME_OUT_SAVE_TO_CONTACT_DIALOG:I = 0x0

.field private static final TOUCH_LOCK_DELAY_DEFAULT:I = 0x1770

.field private static final TOUCH_LOCK_TIMER:I = 0x71

.field private static final VDBG:Z = true

.field private static final WILD_PROMPT_CHAR_ENTERED:I = 0x69

.field private static isOTAUnsuccess:Z

.field private static isOnStop:Z

.field private static mIsLastModeDock:Z

.field private static mOTAToneLock:Ljava/lang/Object;


# instance fields
.field public deferCall:Z

.field isReinflatedLayoutByAssetChanged:Z

.field isReinflatedLayoutByOrientation:Z

.field private mAcceptCallKey:Z

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAll:Landroid/view/ViewGroup;

.field private mAllFrameBkResId:I

.field mAudioSrcIconId:I

.field private mBackgroundCall:Lcom/android/internal/telephony/Call;

.field private mBgRemoved:Z

.field private mBluetoothConnectionPending:Z

.field private mBluetoothConnectionRequestTime:J

.field private mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCSPScallManageDialog:Landroid/app/Dialog;

.field private mCallCard:Lcom/android/phone/CallCard;

.field mCallKeyLongPressed:Z

.field mCallKeyPressed:Z

.field mCallLongPress:Ljava/lang/Runnable;

.field private mCallLostDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mCallerData:Lcom/android/phone/InCallScreen$CallerData;

.field private mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

.field private mCurrentConfig:Landroid/content/res/Configuration;

.field private mDTMFDisplay:Landroid/widget/EditText;

.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

.field private mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

.field private mDismissCSPSCallDialog:Z

.field private mDisplayingEndCallHandler:Z

.field mDragedupToDeclineCall:Z

.field private mElapsedTime:Landroid/widget/TextView;

.field private mElapsedTimeShadow:Landroid/widget/TextView;

.field private mEmergencydialog:Lcom/htc/widget/HtcAlertDialog;

.field private mEndCSCall:Landroid/widget/Button;

.field private mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mEndSkypeResumeCSCall:Landroid/widget/Button;

.field private mForegroundCall:Lcom/android/internal/telephony/Call;

.field private mGenericErrorDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mHandler:Landroid/os/Handler;

.field mHasFocus:Z

.field private mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

.field private mHtcCdmaCallGuardPendingIntent:Landroid/content/Intent;

.field private mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

.field private mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

.field private mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

.field private mInCallMenu:Lcom/android/phone/InCallMenu;

.field private mInCallPanel:Landroid/view/ViewGroup;

.field private mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

.field private mInCallStatus:Landroid/widget/TextView;

.field private mInCallStatusShadow:Landroid/widget/TextView;

.field private mInCallStatusViewGroup:Landroid/view/ViewGroup;

.field private mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

.field private mIsDestroyed:Z

.field private mIsEmergencyCall:Z

.field private mIsForegroundActivity:Z

.field private mIsFromEmergencyDialer:Z

.field private mIsWindowFocus:Z

.field private mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

.field private mMainFrame:Landroid/view/ViewGroup;

.field private mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mMmiStartedDialog:Landroid/app/Dialog;

.field private mNeedShowCallLostDialog:Z

.field private mNonCallStatus:Landroid/widget/TextView;

.field private mNonCallStatusShadow:Landroid/widget/TextView;

.field mOnNewIntent:Landroid/content/Intent;

.field private mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

.field private mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

.field private mOperatorNameShadow:Landroid/widget/TextView;

.field private mPauseInProgress:Z

.field private mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mPendingRequest:Lcom/android/phone/util/PendingRequest;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPostDialStrAfterPause:Ljava/lang/String;

.field private mPowerKeyToRejectCall:Z

.field private mProviderAddress:Ljava/lang/String;

.field private mProviderGatewayUri:Landroid/net/Uri;

.field private mProviderIcon:Landroid/graphics/drawable/Drawable;

.field private mProviderLabel:Ljava/lang/CharSequence;

.field private mProviderOverlayVisible:Z

.field private mPwdResultReceiver:Lcom/android/phone/InCallScreen$PwdResultReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisteredForPhoneStates:Z

.field private mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mRingingCall:Lcom/android/internal/telephony/Call;

.field private mRoamingWarning:Landroid/view/View;

.field private mSendRejectMsgWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowCallLogAfterDisconnect:Z

.field private mShowingErrorDialog:Z

.field private mSkypeCSFrame:Landroid/view/ViewGroup;

.field private mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mTaskBar:Lcom/android/phone/widget/ButtonGroup;

.field private mTextForRoamingWarning:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private mTurnOnRadioDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mWildPromptText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    .line 293
    invoke-static {}, Lcom/android/phone/util/Constants;->calculateSaveContactTimeout()I

    move-result v0

    sput v0, Lcom/android/phone/InCallScreen;->TIME_OUT_SAVE_TO_CONTACT_DIALOG:I

    .line 299
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    const/16 v0, 0x9b

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x30

    if-ne v0, v3, :cond_2

    :cond_0
    :goto_1
    sput-boolean v1, Lcom/android/phone/InCallScreen;->CONFIRM_BEFORE_TURN_ON_RADIO:Z

    .line 322
    sput-boolean v2, Lcom/android/phone/InCallScreen;->mIsLastModeDock:Z

    .line 330
    sput-boolean v2, Lcom/android/phone/InCallScreen;->isOTAUnsuccess:Z

    .line 331
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/phone/InCallScreen;->mOTAToneLock:Ljava/lang/Object;

    .line 332
    sput-boolean v2, Lcom/android/phone/InCallScreen;->isOnStop:Z

    .line 678
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/InCallScreen;->SWAP_CMD_BAR_ICON:Z

    return-void

    :cond_1
    move v0, v2

    .line 173
    goto :goto_0

    :cond_2
    move v1, v2

    .line 299
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 167
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 308
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsWindowFocus:Z

    .line 312
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mOnNewIntent:Landroid/content/Intent;

    .line 317
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mDragedupToDeclineCall:Z

    .line 323
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->isReinflatedLayoutByOrientation:Z

    .line 324
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->isReinflatedLayoutByAssetChanged:Z

    .line 336
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->deferCall:Z

    .line 343
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 560
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    .line 609
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 610
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 612
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mDisplayingEndCallHandler:Z

    .line 630
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    .line 631
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 634
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->mAcceptCallKey:Z

    .line 640
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    .line 643
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mPowerKeyToRejectCall:Z

    .line 648
    const v0, 0x7f0200c6

    iput v0, p0, Lcom/android/phone/InCallScreen;->mAllFrameBkResId:I

    .line 666
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mShowingErrorDialog:Z

    .line 669
    const v0, 0x2080a46

    iput v0, p0, Lcom/android/phone/InCallScreen;->mAudioSrcIconId:I

    .line 684
    new-instance v0, Lcom/android/phone/InCallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$1;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    .line 991
    new-instance v0, Lcom/android/phone/InCallScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$2;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1322
    new-instance v0, Lcom/android/phone/InCallScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$3;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 4320
    new-instance v0, Lcom/android/phone/InCallScreen$CallerData;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$CallerData;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    .line 8051
    new-instance v0, Lcom/android/phone/InCallScreen$29;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$29;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLongPress:Ljava/lang/Runnable;

    .line 9375
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mTextForRoamingWarning:Landroid/widget/TextView;

    .line 9770
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/InCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 167
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/InCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;C)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->addVoiceMailNumberPanel()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dontAddVoiceMailNumber()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->processAllowScreenOn()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/InCallScreen;)Lcom/android/phone/HtcIncallControlPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    return-object v0
.end method

.method static synthetic access$1800()Z
    .locals 1

    .prologue
    .line 167
    sget-boolean v0, Lcom/android/phone/InCallScreen;->isOTAUnsuccess:Z

    return v0
.end method

.method static synthetic access$1802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    sput-boolean p0, Lcom/android/phone/InCallScreen;->isOTAUnsuccess:Z

    return p0
.end method

.method static synthetic access$1900()Z
    .locals 1

    .prologue
    .line 167
    sget-boolean v0, Lcom/android/phone/InCallScreen;->isOnStop:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/android/phone/InCallScreen;->mOTAToneLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/phone/InCallScreen;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/phone/InCallScreen;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/android/phone/InCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mBgRemoved:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallScreen$CallerData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetUiWhenOnResume()V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/phone/InCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/phone/InCallScreen;ILandroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->handleHtcMsg(ILandroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/phone/InCallScreen;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/phone/InCallScreen;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/InCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/phone/InCallScreen;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->updateCdmaOperatorInfo(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateOperatorName()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateCdmaRoamingIcon()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/phone/InCallScreen;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/phone/InCallScreen;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/phone/InCallScreen;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/phone/InCallScreen;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/phone/InCallScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/phone/InCallScreen;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->bailOutAfterErrorDialog()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/phone/InCallScreen;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEmergencydialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/phone/InCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mDisplayingEndCallHandler:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/phone/InCallScreen;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/android/phone/InCallScreen;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetArcControl()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->incomingCallLockScreenAnswerCall()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->incomingCallLockScreenDeclineCall()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/phone/InCallScreen;)Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/phone/InCallScreen;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mTurnOnRadioDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/phone/InCallScreen;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/phone/InCallScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->htcCdmaCallGuardResult(Z)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallScreen$InCallScreenMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissHBPCDDialogIfNeeded()V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->processPendingRequest()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->clearPwdResultReceiver()V

    return-void
.end method

.method static synthetic access$5702(Lcom/android/phone/InCallScreen;Lcom/android/phone/util/PendingRequest;)Lcom/android/phone/util/PendingRequest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mPendingRequest:Lcom/android/phone/util/PendingRequest;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/android/phone/InCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mDismissCSPSCallDialog:Z

    return v0
.end method

.method static synthetic access$5902(Lcom/android/phone/InCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mDismissCSPSCallDialog:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/phone/InCallScreen;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCSPScallManageDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/android/phone/InCallScreen;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mCSPScallManageDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onMMICancel()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/InCallScreen;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/InCallScreen;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private addVoiceMailNumberPanel()V
    .locals 2

    .prologue
    .line 4878
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    .line 4879
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 4880
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 4882
    :cond_0
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "addVoiceMailNumberPanel: finishing InCallScreen..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4883
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 4886
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4887
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4888
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 4889
    return-void
.end method

.method private attachMOInfo(Ljava/lang/String;)V
    .locals 5
    .parameter "number"

    .prologue
    .line 9719
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9720
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 9721
    .local v1, mo:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9722
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 9723
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_1

    .line 9724
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attachMOInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9725
    :cond_0
    const-string v2, "number"

    invoke-virtual {v0, v2, p1}, Lcom/android/internal/telephony/Connection;->addUserData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9729
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #mo:Lcom/android/internal/telephony/Call;
    :cond_1
    return-void
.end method

.method private bailOutAfterErrorDialog()V
    .locals 1

    .prologue
    .line 5728
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 5729
    const-string v0, "bailOutAfterErrorDialog: DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5730
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 5731
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 5739
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5741
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "bailOutAfterErrorDialog(): end InCallScreen session..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5742
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 5746
    :cond_2
    return-void
.end method

.method private callWaitingDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 9739
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03000a

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 9741
    .local v2, handlerView:Landroid/view/View;
    new-instance v3, Lcom/android/phone/InCallScreen$DialogClickListener;

    invoke-direct {v3, p0}, Lcom/android/phone/InCallScreen$DialogClickListener;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 9743
    .local v3, listener:Landroid/view/View$OnClickListener;
    const v5, 0x7f08007c

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 9744
    .local v4, resumeCallButton:Landroid/widget/Button;
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9745
    const v5, 0x7f08007d

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 9746
    .local v1, endCallButton:Landroid/widget/Button;
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9748
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9749
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v5, 0x7f0e00cf

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 9750
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 9751
    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 9752
    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 9753
    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 9755
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mCSPScallManageDialog:Landroid/app/Dialog;

    .line 9756
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCSPScallManageDialog:Landroid/app/Dialog;

    new-instance v6, Lcom/android/phone/InCallScreen$34;

    invoke-direct {v6, p0}, Lcom/android/phone/InCallScreen$34;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 9766
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCSPScallManageDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 9767
    iput-boolean v8, p0, Lcom/android/phone/InCallScreen;->mDismissCSPSCallDialog:Z

    .line 9768
    return-void
.end method

.method private checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 3
    .parameter "state"

    .prologue
    .line 4790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkIfOkToInitiateOutgoingCall: ServiceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4792
    packed-switch p1, :pswitch_data_0

    .line 4822
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ServiceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4795
    :pswitch_0
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 4813
    :goto_0
    return-object v0

    .line 4800
    :pswitch_1
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->POWER_OFF:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 4813
    :pswitch_2
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 4792
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private checkIsOtaCall(Landroid/content/Intent;)Z
    .locals 12
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 8144
    const-string v1, "checkIsOtaCall..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8146
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    move v9, v0

    .line 8214
    :cond_1
    :goto_0
    return v9

    .line 8150
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    move v9, v0

    .line 8151
    goto :goto_0

    .line 8154
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    .line 8156
    .local v7, app:Lcom/android/phone/PhoneApp;
    iget-object v1, v7, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_4

    iget-object v1, v7, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v1, :cond_6

    .line 8158
    :cond_4
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "checkIsOtaCall: OtaUtils.CdmaOtaScreenState not initialized"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_5
    move v9, v0

    .line 8159
    goto :goto_0

    .line 8162
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 8163
    .local v6, action:Ljava/lang/String;
    const/4 v9, 0x0

    .line 8164
    .local v9, isOtaCall:Z
    const-string v1, "com.android.phone.PERFORM_CDMA_PROVISIONING"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 8165
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "checkIsOtaCall action = ACTION_PERFORM_CDMA_PROVISIONING"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8166
    :cond_7
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    if-nez v0, :cond_9

    .line 8167
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "checkIsOtaCall: ACTION_PERFORM_CDMA_PROVISIONING is not handled before"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8168
    :cond_8
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 8169
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 8172
    :cond_9
    const/4 v9, 0x1

    .line 8208
    :cond_a
    :goto_1
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkIsOtaCall: isOtaCall ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8209
    :cond_b
    if-eqz v9, :cond_1

    iget-object v0, v7, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v0, :cond_1

    .line 8210
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "checkIsOtaCall: creating OtaUtils..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8211
    :cond_c
    new-instance v0, Lcom/android/phone/OtaUtils;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/OtaUtils;-><init>(Landroid/content/Context;Lcom/android/phone/InCallScreen;Landroid/view/ViewGroup;Lcom/android/phone/CallCard;Lcom/android/phone/DTMFTwelveKeyDialer;)V

    iput-object v0, v7, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    goto/16 :goto_0

    .line 8173
    :cond_d
    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 8177
    :cond_e
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 8182
    .local v11, number:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v11}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8183
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "checkIsOtaCall action ACTION_CALL, it is valid OTA number"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8184
    :cond_f
    const/4 v9, 0x1

    goto :goto_1

    .line 8178
    .end local v11           #number:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 8179
    .local v8, ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_10

    const-string v1, "Error retrieving number using the api getInitialNumber()"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_10
    move v9, v0

    .line 8180
    goto/16 :goto_0

    .line 8186
    .end local v8           #ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    :cond_11
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 8187
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_12

    const-string v1, "checkIsOtaCall action ACTION_MAIN"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8188
    :cond_12
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v10

    .line 8189
    .local v10, isRingingCall:Z
    if-eqz v10, :cond_14

    .line 8190
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIsOtaCall isRingingCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_13
    move v9, v0

    .line 8191
    goto/16 :goto_0

    .line 8192
    :cond_14
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-eq v0, v1, :cond_15

    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v0, v1, :cond_17

    .line 8196
    :cond_15
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_16

    const-string v0, "checkIsOtaCall action ACTION_MAIN, OTA call already in progress"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8197
    :cond_16
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 8199
    :cond_17
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v0, v1, :cond_a

    .line 8201
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_18

    const-string v0, "checkIsOtaCall action ACTION_MAIN, OTA call in progress with UNDEFINED"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8203
    :cond_18
    const/4 v9, 0x1

    goto/16 :goto_1
.end method

.method private clearProvider()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    .line 8429
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    .line 8430
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 8431
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    .line 8432
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mProviderAddress:Ljava/lang/String;

    .line 8433
    return-void
.end method

.method private clearPwdResultReceiver()V
    .locals 1

    .prologue
    .line 9703
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPwdResultReceiver:Lcom/android/phone/InCallScreen$PwdResultReceiver;

    if-eqz v0, :cond_0

    .line 9704
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPwdResultReceiver:Lcom/android/phone/InCallScreen$PwdResultReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9705
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPwdResultReceiver:Lcom/android/phone/InCallScreen$PwdResultReceiver;

    .line 9707
    :cond_0
    return-void
.end method

.method private createWildPromptView()Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, -0x2

    const/high16 v8, 0x4160

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x5

    .line 3924
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3925
    .local v3, result:Landroid/widget/LinearLayout;
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3926
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 3928
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v0, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3932
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3933
    .local v2, promptMsg:Landroid/widget/TextView;
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 3934
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3935
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0265

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3937
    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3939
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    .line 3940
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 3941
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 3942
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setTextSize(F)V

    .line 3943
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 3944
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 3945
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    const v5, 0x1080018

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 3947
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3950
    .local v1, lp2:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x3

    invoke-virtual {v1, v6, v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 3952
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3954
    return-object v3
.end method

.method private delayedCleanupAfterDisconnect()V
    .locals 5

    .prologue
    .line 4917
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delayedCleanupAfterDisconnect()...  Phone state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4929
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 4932
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v1

    if-nez v1, :cond_b

    .line 4934
    const-string v1, "- delayedCleanupAfterDisconnect: phone is idle..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4942
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-eqz v1, :cond_8

    .line 4943
    const-string v1, "- delayedCleanupAfterDisconnect: finishing InCallScreen..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4949
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mDisplayingEndCallHandler:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4951
    const-string v1, "IncallScreen"

    const-string v2, "delayedCleanupAfterDisconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4952
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 4953
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x322

    sget v3, Lcom/android/phone/InCallScreen;->TIME_OUT_SAVE_TO_CONTACT_DIALOG:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4963
    :cond_1
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mShowCallLogAfterDisconnect:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isPhoneStateRestricted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4964
    const-string v1, "- Show Call Log after disconnect..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4965
    invoke-static {}, Lcom/android/phone/PhoneApp;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4966
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 4970
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->EnableNBPCDSetting:Z

    if-eqz v1, :cond_6

    .line 4972
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_5

    .line 4975
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 5016
    :cond_5
    :goto_0
    return-void

    .line 4981
    :cond_6
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_5

    .line 4983
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto :goto_0

    .line 4991
    :cond_8
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->EnableNBPCDSetting:Z

    if-eqz v1, :cond_9

    .line 4993
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v1, :cond_5

    .line 4996
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto :goto_0

    .line 5001
    :cond_9
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_5

    .line 5003
    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto :goto_0

    .line 5011
    :cond_b
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_c

    const-string v1, "- delayedCleanupAfterDisconnect: staying on the InCallScreen..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5012
    :cond_c
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallState()V

    goto :goto_0
.end method

.method private disableLockScreenControlIncomingCall()V
    .locals 2

    .prologue
    .line 7340
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v0}, Lcom/android/phone/widget/HtcLockScreenControl;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 7342
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/HtcLockScreenControl;->setVisibility(I)V

    .line 7343
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v0, :cond_0

    .line 7344
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {v0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->hideAndReleaseArrowAnimation()V

    .line 7346
    :cond_0
    return-void
.end method

.method private dismissAllDialogs()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5755
    const-string v2, "dismissAllDialogs()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5756
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 5763
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/4 v1, 0x0

    .line 5766
    .local v1, needFinishReuqest:Z
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_0

    .line 5767
    const-string v2, "- DISMISSING mMissingVoicemailDialog."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5768
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 5769
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 5771
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    .line 5772
    const-string v2, "- DISMISSING mMmiStartedDialog."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5773
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 5774
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 5776
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_2

    .line 5777
    const-string v2, "- DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5778
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 5779
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 5781
    const/4 v1, 0x1

    .line 5784
    :cond_2
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_3

    .line 5785
    const-string v2, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5786
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 5787
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 5789
    :cond_3
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_4

    .line 5790
    const-string v2, "- DISMISSING mWildPromptDialog."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5791
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 5792
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 5794
    :cond_4
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_5

    .line 5795
    const-string v2, "- DISMISSING mCallLostDialog."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5796
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 5797
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 5805
    :cond_5
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_7

    .line 5806
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5807
    :cond_6
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 5808
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 5811
    :cond_7
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCSPScallManageDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_9

    .line 5812
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_8

    const-string v2, "- DISMISSING mCSPScallManageDialog."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5813
    :cond_8
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCSPScallManageDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 5814
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mCSPScallManageDialog:Landroid/app/Dialog;

    .line 5817
    :cond_9
    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->dismissHtcDialogs(Z)V

    .line 5819
    return-void
.end method

.method private dismissHBPCDDialogIfNeeded()V
    .locals 2

    .prologue
    .line 9503
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 9505
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 9506
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 9507
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 9509
    :cond_0
    return-void
.end method

.method private dismissHtcDialogs(Z)V
    .locals 5
    .parameter "needFinishReuqest"

    .prologue
    const/4 v4, 0x0

    .line 5825
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5826
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x322

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5827
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 5828
    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 5832
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5833
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    .line 5834
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 5835
    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 5840
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5841
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x326

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5844
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    if-eqz v0, :cond_3

    .line 5845
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/HtcIncallControlPanel;->dismissDialog(I)V

    .line 5849
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTurnOnRadioDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_4

    .line 5850
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTurnOnRadioDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 5851
    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mTurnOnRadioDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 5853
    :cond_4
    return-void
.end method

.method private dismissPromptDialogs()V
    .locals 1

    .prologue
    .line 5856
    const-string v0, "dismissPromptDialogs()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5857
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 5858
    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5859
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 5860
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 5862
    :cond_0
    return-void
.end method

.method private dontAddVoiceMailNumber()V
    .locals 1

    .prologue
    .line 4892
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 4893
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 4894
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 4896
    :cond_0
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "dontAddVoiceMailNumber: finishing..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4897
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 4898
    return-void
.end method

.method private dumpBluetoothState()V
    .locals 4

    .prologue
    .line 6528
    const-string v2, "============== dumpBluetoothState() ============="

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= isBluetoothAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= isBluetoothAudioConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= isBluetoothAudioConnectedOrPending: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= PhoneApp.showBluetoothIndication: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6534
    const-string v2, "="

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6535
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v2, :cond_2

    .line 6536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= BluetoothHandsfree.isAudioOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6537
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_1

    .line 6538
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 6540
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 6541
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 6542
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= BluetoothHeadset.getCurrentDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6543
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= BluetoothHeadset.State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6552
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    :goto_0
    return-void

    .line 6547
    :cond_1
    const-string v2, "= mBluetoothHeadset is null"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 6550
    :cond_2
    const-string v2, "= mBluetoothHandsfree is null; device is not BT capable"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private findViewAndInitLayout()V
    .locals 1

    .prologue
    .line 8696
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initTitleBar()V

    .line 8700
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initInCallScreen()V

    .line 8710
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    .line 8711
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->destroy()V

    .line 8713
    :cond_0
    new-instance v0, Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-direct {v0, p0}, Lcom/android/phone/DTMFTwelveKeyDialer;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 8715
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->getDialerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/DTMFTwelveKeyDialerView;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 8716
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0, p0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setOnVisibilityChangedListener(Lcom/android/phone/view/OnVisibilityChangedListener;)V

    .line 8721
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isHardKeyboardHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8722
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->startDialerSession()V

    .line 8725
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initIncomingCommandBar()V

    .line 8726
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initTaskBar()V

    .line 8728
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initIncallControlPanel()V

    .line 8743
    return-void
.end method

.method private getActionTypeForCaller(Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/InCallScreen$InCallScreenActionType;
    .locals 1
    .parameter "ci"

    .prologue
    .line 6774
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenActionType;->VIEW_CONTACT:Lcom/android/phone/InCallScreen$InCallScreenActionType;

    return-object v0
.end method

.method private final getContactPhoto(J)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "contactId"

    .prologue
    .line 8301
    const/4 v2, 0x0

    .line 8302
    .local v2, inputStream:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 8303
    .local v0, d:Landroid/graphics/drawable/Drawable;
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 8306
    .local v4, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v4, v6}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 8312
    :goto_0
    if-eqz v2, :cond_0

    .line 8313
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 8314
    if-eqz v0, :cond_0

    instance-of v5, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    .line 8318
    :cond_0
    if-nez v0, :cond_1

    .line 8319
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/htc/provider/HtcContactsContract$CommonDataKinds$Photo;->getContactPhoto(Landroid/content/ContentResolver;J)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 8322
    .local v3, photoData:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    .line 8323
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v0, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 8326
    .end local v3           #photoData:Landroid/graphics/Bitmap;
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    return-object v0

    .line 8308
    :catch_0
    move-exception v1

    .line 8309
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "InCallScreen"

    const-string v6, "Error opening photo input stream"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getEndCallHandlDialog(JLjava/lang/String;)Lcom/htc/widget/HtcAlertDialog;
    .locals 14
    .parameter "userId"
    .parameter "number"

    .prologue
    .line 6934
    sget-boolean v11, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v11, :cond_0

    const-string v11, "end call"

    const-string v12, "get end call"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6936
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 6937
    const/4 v3, 0x0

    .line 7038
    :goto_0
    return-object v3

    .line 6940
    :cond_1
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6942
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f030027

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 6945
    .local v4, handlerView:Landroid/view/View;
    const v11, 0x7f0800d4

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 6947
    .local v6, noRemind:Landroid/widget/CheckBox;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 6950
    .local v8, pref:Landroid/content/SharedPreferences;
    const-string v11, "pref_key_save_contact"

    const/4 v12, 0x1

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 6952
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 6957
    :goto_1
    new-instance v5, Lcom/android/phone/InCallScreen$19;

    move-object/from16 v0, p3

    invoke-direct {v5, p0, v0}, Lcom/android/phone/InCallScreen$19;-><init>(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 6996
    .local v5, listener:Landroid/view/View$OnClickListener;
    const v11, 0x7f0800ce

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 6997
    .local v7, numberView:Landroid/widget/TextView;
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6999
    const v11, 0x7f0800cf

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 7000
    .local v10, saveNew:Landroid/widget/Button;
    invoke-virtual {v10, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7001
    const v11, 0x7f0800d0

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 7002
    .local v9, saveExist:Landroid/widget/Button;
    invoke-virtual {v9, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7003
    const v11, 0x7f0800d1

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 7004
    .local v2, cancel:Landroid/widget/Button;
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7006
    const v11, 0x7f0e0062

    invoke-virtual {p0, v11}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7007
    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7008
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7009
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7010
    new-instance v11, Lcom/android/phone/InCallScreen$20;

    invoke-direct {v11, p0}, Lcom/android/phone/InCallScreen$20;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v1, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7021
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7023
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    .line 7024
    .local v3, dialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v11, Lcom/android/phone/InCallScreen$21;

    invoke-direct {v11, p0, v6}, Lcom/android/phone/InCallScreen$21;-><init>(Lcom/android/phone/InCallScreen;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v11}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 6954
    .end local v2           #cancel:Landroid/widget/Button;
    .end local v3           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v5           #listener:Landroid/view/View$OnClickListener;
    .end local v7           #numberView:Landroid/widget/TextView;
    .end local v9           #saveExist:Landroid/widget/Button;
    .end local v10           #saveNew:Landroid/widget/Button;
    :cond_2
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method private getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    .line 4271
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4273
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4274
    const/4 v1, 0x0

    .line 4308
    :goto_0
    return-object v1

    .line 4281
    :cond_0
    const-string v3, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4282
    const-string v3, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4284
    .local v1, actualNumberToDial:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> got EXTRA_ACTUAL_NUMBER_TO_DIAL; returning \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4290
    .end local v1           #actualNumberToDial:Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    const-string v3, "android.intent.action.CALL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4292
    const-string v3, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4296
    :cond_2
    const-string v3, "number"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "isEnableRoamingAssist"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 4300
    const-string v3, "number"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4301
    .local v2, sNumber:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v1, v2

    .line 4302
    goto :goto_0

    .line 4308
    .end local v2           #sNumber:Ljava/lang/String;
    :cond_3
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getNBPCDNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "number"
    .parameter "personId"

    .prologue
    .line 9554
    move-object v1, p1

    .line 9555
    .local v1, result:Ljava/lang/String;
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->EnableNBPCDSetting:Z

    if-eqz v2, :cond_0

    .line 9556
    invoke-static {}, Lcom/android/phone/HtcNBPCDUtil;->isHBPCDRetryDialing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/phone/HtcNBPCDUtil;->getHBPCDString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9557
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/HtcNBPCDUtil;->setHBPCDRetryDialing(Z)V

    .line 9558
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NBPCD use HBPCD retry number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 9579
    :cond_0
    :goto_0
    return-object v1

    .line 9561
    :cond_1
    invoke-static {}, Lcom/android/phone/HtcNBPCDUtil;->setNoConversion()V

    .line 9565
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 9567
    const/4 v0, 0x1

    .line 9568
    .local v0, mIsContact:Z
    const-string v2, "0"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9570
    const/4 v0, 0x0

    .line 9576
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lcom/android/phone/HtcNBPCDUtil;->parseNumber(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 9574
    .end local v0           #mIsContact:Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #mIsContact:Z
    goto :goto_1
.end method

.method private getRetryHBPCDDialog(Ljava/lang/String;)Lcom/htc/widget/HtcAlertDialog;
    .locals 11
    .parameter "number_HBPCD"

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 9412
    sget-boolean v8, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v8, :cond_0

    .line 9413
    const-string v8, "end call"

    const-string v9, "get end call"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9415
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 9499
    :goto_0
    return-object v2

    .line 9419
    :cond_1
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9421
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f03003a

    invoke-virtual {v8, v9, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 9424
    .local v3, handlerView:Landroid/view/View;
    new-instance v4, Lcom/android/phone/InCallScreen$32;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/InCallScreen$32;-><init>(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 9469
    .local v4, listener:Landroid/view/View$OnClickListener;
    const v8, 0x7f0800f5

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 9471
    .local v5, numberView:Landroid/widget/TextView;
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9473
    const v8, 0x7f0800f6

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 9475
    .local v6, retryHBPCD:Landroid/widget/Button;
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9476
    const v8, 0x7f0800f7

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 9478
    .local v1, cancelHBPCD:Landroid/widget/Button;
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9479
    const v8, 0x7f0800f8

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 9481
    .local v7, settingHBPCD:Landroid/widget/Button;
    invoke-virtual {v7, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9483
    const v8, 0x7f0e013f

    invoke-virtual {p0, v8}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 9484
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 9485
    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 9486
    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 9488
    new-instance v8, Lcom/android/phone/InCallScreen$33;

    invoke-direct {v8, p0}, Lcom/android/phone/InCallScreen$33;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 9498
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 9499
    .local v2, dialog:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0
.end method

.method private getTagForConnection(Lcom/android/internal/telephony/Connection;Lcom/android/phone/widget/ButtonGroup$ButtonTag;)Lcom/android/phone/widget/ButtonGroup$ButtonTag;
    .locals 6
    .parameter "conn"
    .parameter "tag"

    .prologue
    const/4 v5, 0x1

    .line 7520
    if-nez p1, :cond_0

    .line 7521
    const v3, 0x7f080042

    iput v3, p2, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->id:I

    .line 7522
    const v3, 0x7f0e0480

    iput v3, p2, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->drawable:I

    .line 7523
    const v3, 0x7f0e0255

    iput v3, p2, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->text:I

    .line 7553
    :goto_0
    return-object p2

    .line 7527
    :cond_0
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 7530
    .local v1, ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v2, 0x0

    .line 7532
    .local v2, showSpIcon:Z
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isCdmaCallsOnly()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 7534
    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    .line 7538
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->getActionTypeForCaller(Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/InCallScreen$InCallScreenActionType;

    move-result-object v0

    .line 7539
    .local v0, actionType:Lcom/android/phone/InCallScreen$InCallScreenActionType;
    sget-object v3, Lcom/android/phone/InCallScreen$35;->$SwitchMap$com$android$phone$InCallScreen$InCallScreenActionType:[I

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen$InCallScreenActionType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    .line 7543
    sget-boolean v3, Lcom/android/phone/HtcFeatureList;->FEATURE_TASKBAR_RIGHT_VIEW_SP:Z

    if-ne v3, v5, :cond_2

    if-ne v2, v5, :cond_2

    .line 7545
    const v3, 0x7f080028

    iput v3, p2, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->id:I

    .line 7546
    const v3, 0x7f02000d

    iput v3, p2, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->drawable:I

    goto :goto_0

    .line 7550
    :cond_2
    const v3, 0x7f080047

    iput v3, p2, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->id:I

    .line 7551
    const v3, 0x7f0e0481

    iput v3, p2, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->drawable:I

    .line 7552
    const v3, 0x7f0e01ba

    iput v3, p2, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->text:I

    goto :goto_0
.end method

.method private getViewOrInsertForConnection(Lcom/android/internal/telephony/Connection;)Landroid/content/Intent;
    .locals 7
    .parameter "conn"

    .prologue
    .line 6746
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 6748
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v1, 0x0

    .line 6750
    .local v1, result:Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 6751
    iget-wide v2, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    iget-wide v4, v0, Lcom/android/internal/telephony/CallerInfo;->recordNumber:J

    iget-object v6, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/htc/util/contacts/PhoneUtils;->getViewContactIntent(JJLjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 6752
    if-nez v1, :cond_0

    .line 6753
    const-string v2, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get call info from caller info error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6754
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6755
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/contacts/PhoneUtils;->getViewUnknownCardIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 6756
    if-nez v1, :cond_0

    .line 6757
    const-string v2, "InCallScreen"

    const-string v3, "no address in connection"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6770
    :cond_0
    :goto_0
    return-object v1

    .line 6760
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDialString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/contacts/PhoneUtils;->getViewUnknownCardIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 6761
    if-nez v1, :cond_0

    .line 6762
    const-string v2, "InCallScreen"

    const-string v3, "no dialing in connection"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6767
    :cond_2
    const-string v2, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no caller information in conn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleBackKey()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2492
    const-string v2, "handleBackKey()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2501
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2502
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->muteRingingCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2515
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2506
    goto :goto_0

    .line 2510
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2511
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2515
    goto :goto_0
.end method

.method private handleDeferBtn()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 9077
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "InCallScreen"

    const-string v6, "defer call"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9079
    :cond_0
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 9080
    .local v4, ringingCall:Lcom/android/internal/telephony/Call;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9083
    const/4 v1, 0x0

    .line 9085
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 9086
    .local v3, phoneType:I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 9087
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 9094
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 9097
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/phone/util/CallDeferUtils;->launchCallDeferConfig(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 9098
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 9100
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 9101
    iput-boolean v7, p0, Lcom/android/phone/InCallScreen;->deferCall:Z

    .line 9106
    .end local v0           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v1           #conn:Lcom/android/internal/telephony/Connection;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #phoneType:I
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onEndCallBtnClick()V

    .line 9108
    return-void

    .line 9088
    .restart local v1       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v3       #phoneType:I
    :cond_2
    if-ne v3, v7, :cond_3

    .line 9089
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    .line 9091
    :cond_3
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private handleDialerKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDialerKeyDown: keyCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2477
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    .line 2479
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->okToDialDTMFTones()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2480
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 2485
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleHtcMsg(ILandroid/os/Message;)V
    .locals 7
    .parameter "what"
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 8855
    packed-switch p1, :pswitch_data_0

    .line 8987
    :cond_0
    :goto_0
    return-void

    .line 8858
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->handleStuffAfterOnResume()V

    goto :goto_0

    .line 8863
    :pswitch_1
    const-string v4, "InCallScreen"

    const-string v5, "-- MSG_END_CALL_FINISH_IMMEDIATELY"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8865
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 8870
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getAudioMode(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 8871
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    goto :goto_0

    .line 8883
    :pswitch_2
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8885
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->placeCall()V

    goto :goto_0

    .line 8891
    :pswitch_3
    const-string v5, "InCallScreen"

    const-string v6, "MSG_ACCEPTE_CALL_KEY"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8892
    iput-boolean v4, p0, Lcom/android/phone/InCallScreen;->mAcceptCallKey:Z

    goto :goto_0

    .line 8899
    :pswitch_4
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v4

    if-nez v4, :cond_0

    .line 8900
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    goto :goto_0

    .line 8907
    :pswitch_5
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v3

    .line 8908
    .local v3, hasRingingCall:Z
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->allIdle(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_1

    move v1, v4

    .line 8909
    .local v1, hasActiveCall:Z
    :goto_1
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->allIdle(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_2

    move v2, v4

    .line 8911
    .local v2, hasHoldingCall:Z
    :goto_2
    if-eqz v3, :cond_0

    .line 8912
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 8913
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCallBothLinesInUse()V

    goto :goto_0

    .end local v1           #hasActiveCall:Z
    .end local v2           #hasHoldingCall:Z
    :cond_1
    move v1, v5

    .line 8908
    goto :goto_1

    .restart local v1       #hasActiveCall:Z
    :cond_2
    move v2, v5

    .line 8909
    goto :goto_2

    .line 8915
    .restart local v2       #hasHoldingCall:Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 8925
    .end local v1           #hasActiveCall:Z
    .end local v2           #hasHoldingCall:Z
    .end local v3           #hasRingingCall:Z
    :pswitch_6
    iget-object v4, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->onSuppServiceNotification(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 8930
    :pswitch_7
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v4, :cond_4

    .line 8931
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 8933
    iput-object v6, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 8936
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 8937
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    goto/16 :goto_0

    .line 8943
    :pswitch_8
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 8944
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 8945
    const-string v4, "InCallScreen"

    const-string v5, "handle message: MSG_RELEASE_ALL_CALL_RESULT"

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 8951
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_9
    iget-boolean v4, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-eqz v4, :cond_0

    .line 8964
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p2, Landroid/os/Message;->arg1:I

    iget v6, p2, Landroid/os/Message;->arg2:I

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 8972
    :pswitch_a
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mToast:Landroid/widget/Toast;

    if-eqz v4, :cond_0

    .line 8973
    iput-object v6, p0, Lcom/android/phone/InCallScreen;->mToast:Landroid/widget/Toast;

    goto/16 :goto_0

    .line 8980
    :pswitch_b
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto/16 :goto_0

    .line 8855
    nop

    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private handleKidzoneRingingConfirm(JI)V
    .locals 4
    .parameter "id"
    .parameter "request"

    .prologue
    .line 9613
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKidzoneRequestConfirm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9614
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPendingRequest:Lcom/android/phone/util/PendingRequest;

    if-eqz v1, :cond_1

    .line 9615
    const-string v1, "InCallScreen"

    const-string v2, "there is already one pending request existed!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9618
    :cond_1
    new-instance v1, Lcom/android/phone/util/PendingRequest;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/phone/util/PendingRequest;-><init>(JI)V

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mPendingRequest:Lcom/android/phone/util/PendingRequest;

    .line 9622
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 9623
    .local v0, pwd:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.HtcChooseLockGeneric"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 9625
    const-string v1, "hideKeyguard"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9627
    const/16 v1, 0x3f3

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InCallScreen;->startActivityForResult(Landroid/content/Intent;I)V

    .line 9629
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->registerForPwdResult()V

    .line 9630
    return-void
.end method

.method private handleMissingVoiceMailNumber()V
    .locals 6

    .prologue
    .line 4827
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "handleMissingVoiceMailNumber"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4829
    :cond_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 4830
    .local v0, msg:Landroid/os/Message;
    const/16 v3, 0x6b

    iput v3, v0, Landroid/os/Message;->what:I

    .line 4832
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 4833
    .local v1, msg2:Landroid/os/Message;
    const/16 v3, 0x6a

    iput v3, v1, Landroid/os/Message;->what:I

    .line 4837
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e0266

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e0267

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e025b

    new-instance v5, Lcom/android/phone/InCallScreen$13;

    invoke-direct {v5, p0, v0}, Lcom/android/phone/InCallScreen$13;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e0268

    new-instance v5, Lcom/android/phone/InCallScreen$12;

    invoke-direct {v5, p0, v1}, Lcom/android/phone/InCallScreen$12;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/phone/InCallScreen$11;

    invoke-direct {v4, p0, v0}, Lcom/android/phone/InCallScreen$11;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 4864
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 4867
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 4869
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    const v4, 0x102023a

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4870
    .local v2, title:Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 4871
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 4875
    :cond_1
    return-void
.end method

.method private handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    .locals 8
    .parameter "r"
    .parameter "ch"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 3721
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 3723
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 3724
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/Connection$PostDialState;

    .line 3727
    .local v3, state:Lcom/android/internal/telephony/Connection$PostDialState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlePostOnDialChar: state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ch = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3729
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    if-nez v4, :cond_1

    .line 3786
    .end local v3           #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_0
    :goto_0
    return-void

    .line 3732
    .restart local v3       #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_1
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 3733
    .local v1, phoneType:I
    sget-object v4, Lcom/android/phone/InCallScreen$35;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 3735
    :pswitch_0
    if-ne v1, v6, :cond_0

    .line 3736
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    .line 3737
    iget-boolean v4, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    if-eqz v4, :cond_2

    .line 3738
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mPostDialStrAfterPause:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InCallScreen;->showPausePromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    .line 3740
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    .line 3741
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->startLocalToneCdma(C)V

    goto :goto_0

    .line 3751
    :pswitch_1
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "handlePostOnDialChars: show WAIT prompt..."

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3752
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v2

    .line 3753
    .local v2, postDialStr:Ljava/lang/String;
    if-ne v1, v6, :cond_4

    .line 3754
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    .line 3755
    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_0

    .line 3756
    :cond_4
    if-ne v1, v7, :cond_5

    .line 3757
    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_0

    .line 3759
    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3764
    .end local v2           #postDialStr:Ljava/lang/String;
    :pswitch_2
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_6

    const-string v4, "handlePostOnDialChars: show WILD prompt"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3765
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 3769
    :pswitch_3
    if-ne v1, v6, :cond_0

    .line 3770
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    goto :goto_0

    .line 3775
    :pswitch_4
    if-ne v1, v6, :cond_0

    .line 3776
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mPostDialStrAfterPause:Ljava/lang/String;

    .line 3777
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    .line 3778
    iput-boolean v7, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    goto/16 :goto_0

    .line 3733
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

.method private handleStartupError(Lcom/android/phone/InCallScreen$InCallInitStatus;)V
    .locals 5
    .parameter "status"

    .prologue
    const v4, 0x7f0e03ad

    const/4 v3, 0x1

    .line 5541
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartupError(): status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5553
    :cond_0
    sget-object v0, Lcom/android/phone/InCallScreen$35;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    invoke-virtual {p1}, Lcom/android/phone/InCallScreen$InCallInitStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5630
    :pswitch_0
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStartupError: unexpected status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5631
    invoke-direct {p0, v4, v3}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    .line 5634
    :cond_1
    :goto_0
    return-void

    .line 5559
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleMissingVoiceMailNumber()V

    goto :goto_0

    .line 5571
    :pswitch_2
    const v0, 0x7f0e01a1

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 5579
    :pswitch_3
    const v0, 0x7f0e03aa

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 5584
    :pswitch_4
    const v0, 0x7f0e03ab

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 5590
    :pswitch_5
    const-string v0, "InCallScreen"

    const-string v1, "handleStartupError: unexpected PHONE_NOT_IN_USE status"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5598
    :pswitch_6
    const v0, 0x7f0e03ac

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 5610
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    .line 5611
    const v0, 0x7f0e03ae

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5621
    :pswitch_8
    invoke-direct {p0, v4, v3}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 5626
    :pswitch_9
    const-string v0, "InCallScreen"

    const-string v1, "handleStartupError: waiting for call gaurd dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5553
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
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
    .end packed-switch
.end method

.method private htcCdmaCallGuardCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const v2, 0x7f0e0171

    .line 9196
    const-string v0, "InCallScreen"

    const-string v1, "htcCdmaCallGuardCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9198
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 9200
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v0, :cond_0

    .line 9201
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    .line 9204
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    const v1, 0x7f0e0170

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 9209
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->EnableCallGuard2:Z

    if-ne v0, v3, :cond_2

    .line 9210
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->htcGetCdmaEriCallGuard()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 9213
    const-string v0, "InCallScreen"

    const-string v1, "OoO Warning - the roaming network (Sprint Home"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9214
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 9228
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9230
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 9235
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 9236
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 9237
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, -0x1

    const v2, 0x7f0e013c

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/phone/InCallScreen$30;

    invoke-direct {v3, p0}, Lcom/android/phone/InCallScreen$30;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/app/HtcProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 9244
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, -0x2

    const v2, 0x7f0e013b

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/phone/InCallScreen$31;

    invoke-direct {v3, p0}, Lcom/android/phone/InCallScreen$31;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/app/HtcProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 9253
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 9254
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 9255
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 9256
    return-void

    .line 9217
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    const v1, 0x7f0e0175

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9220
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    const v1, 0x7f0e0176

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9224
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9210
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private htcCdmaCallGuardResult(Z)V
    .locals 3
    .parameter "performCall"

    .prologue
    const/4 v2, 0x0

    .line 9259
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v0, :cond_0

    .line 9283
    :goto_0
    return-void

    .line 9264
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 9265
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    .line 9266
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2

    .line 9267
    if-eqz p1, :cond_1

    .line 9268
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardPendingIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->placeCallinternal(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 9269
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardPendingIntent:Landroid/content/Intent;

    .line 9270
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->onResumeAfterCallActivation(Z)V

    goto :goto_0

    .line 9273
    :cond_1
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardPendingIntent:Landroid/content/Intent;

    .line 9274
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    goto :goto_0

    .line 9278
    :cond_2
    if-eqz p1, :cond_3

    .line 9279
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardPendingIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->placeCallinternal(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 9281
    :cond_3
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardPendingIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method private htcCheckPhoneNumberBlocking(Ljava/lang/String;)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 6
    .parameter "number"

    .prologue
    const/4 v5, 0x2

    .line 9945
    move-object v1, p1

    .line 9946
    .local v1, pureNumberPart:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 9947
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->formatDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9949
    :cond_0
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9950
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9951
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9953
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa8

    if-ne v3, v4, :cond_2

    sget-boolean v3, Lcom/android/phone/HtcFeatureList;->FEATURE_BACKGROUND_OTA:Z

    if-nez v3, :cond_2

    const-string v3, "*228"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9957
    const-string v3, "initOtaString"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 9958
    invoke-static {}, Lcom/android/phone/HtcCdmaPhoneApp;->initOtaString()V

    .line 9977
    :cond_1
    invoke-static {v1}, Lcom/android/phone/HtcCdmaPhoneApp;->enableCallGuard(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9978
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->HTC_CDMA_MO_CALL_GUARD:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 9989
    :goto_0
    return-object v2

    .line 9960
    :cond_2
    sget-boolean v3, Lcom/android/phone/HtcFeatureList;->FEATURE_BACKGROUND_OTA:Z

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/OtaUtils;->getOtaspNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9962
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {}, Lcom/android/phone/OtaUtils;->getOtaspNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v0, v3, v4

    .line 9963
    .local v0, lenNumber:I
    if-eqz v0, :cond_3

    if-ne v0, v5, :cond_1

    .line 9964
    :cond_3
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->HTC_VERIZON_OTA_CALL_FAILED_SIM_UNPROVISIONED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 9965
    .local v2, simStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;
    invoke-static {}, Lcom/android/phone/HtcCdmaPhoneApp;->checkVerizonSIM()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 9967
    :pswitch_0
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->HTC_VERIZON_OTA_CALL_FAILED_NO_SIM:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 9968
    goto :goto_0

    .line 9970
    :pswitch_1
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->HTC_VERIZON_OTA_CALL_FAILED_SIM_PROVISIONED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 9982
    .end local v0           #lenNumber:I
    .end local v2           #simStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_WPHONE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 9984
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->isGSMCallGuardEnable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 9985
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->HTC_CDMA_MO_CALL_GUARD:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 9989
    :cond_5
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 9965
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private incomingCallLockScreenAnswerCall()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 7682
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7685
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gsm.lockscreen.mode.status"

    const-string v3, "false"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7686
    const-string v1, "InCallScreen"

    const-string v2, ">>> incomingCallLockScreenAnswerCall(),   set lockscreen mode :false "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7688
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getSkypeCallState()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 7690
    const-string v1, "InCallScreen"

    const-string v2, ">>> incomingCallLockScreenAnswerCall(),   broadcast reject ps call "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7691
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.Reject_PS_Call"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7692
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7696
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7697
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->WAITING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v1, v2, :cond_3

    .line 7698
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerAndEnd()V

    .line 7702
    :cond_1
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 7704
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/phone/widget/HtcLockScreenControl;->setVisibility(I)V

    .line 7705
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v1, :cond_2

    .line 7706
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {v1}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->hideAndReleaseArrowAnimation()V

    .line 7707
    :cond_2
    return-void

    .line 7700
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_0
.end method

.method private incomingCallLockScreenDeclineCall()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 7736
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7739
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gsm.lockscreen.mode.status"

    const-string v2, "false"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7740
    const-string v0, "InCallScreen"

    const-string v1, ">>> incomingCallLockScreenDeclineCall(),   set lockscreen mode :false "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7751
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 7774
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->mDragedupToDeclineCall:Z

    .line 7776
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x320

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7778
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    .line 7780
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x322

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7781
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 7782
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 7785
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getSkypeCallState()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 7788
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->hideIncomingCallArc()V

    .line 7802
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->forceWakeUpScreen()V

    .line 7805
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7806
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 7809
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/HtcLockScreenControl;->setVisibility(I)V

    .line 7811
    return-void

    .line 7793
    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->deferCall:Z

    if-nez v0, :cond_4

    .line 7794
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->showKeyguardWithAnimation(Z)V

    .line 7797
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method private initCallGuard()V
    .locals 6

    .prologue
    .line 9383
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mRoamingWarning:Landroid/view/View;

    if-nez v4, :cond_0

    .line 9385
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 9386
    .local v0, app:Lcom/android/phone/PhoneApp;
    const-string v4, "com.android.phone"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/android/phone/PhoneApp;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 9388
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 9389
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030025

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mRoamingWarning:Landroid/view/View;

    .line 9390
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mRoamingWarning:Landroid/view/View;

    const v5, 0x7f08009d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mTextForRoamingWarning:Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9399
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    return-void

    .line 9391
    :catch_0
    move-exception v2

    .line 9393
    .local v2, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private initInCallScreen()V
    .locals 13

    .prologue
    const v3, 0x7f08006c

    const/4 v2, 0x1

    .line 2369
    const-string v0, "initInCallScreen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2371
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    .line 2378
    .local v10, configuration:Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 2380
    const v0, 0x7f0800ff

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMainFrame:Landroid/view/ViewGroup;

    .line 2381
    const v0, 0x7f080101

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    .line 2382
    const v0, 0x7f08000d

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mAll:Landroid/view/ViewGroup;

    .line 2383
    sget-boolean v0, Lcom/android/phone/util/BuildUtils;->SENSE_TABLET:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/phone/util/BuildUtils;->SENSE_LANDSCAPE:Z

    if-eqz v0, :cond_6

    .line 2385
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mAll:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setRoundedCornerEnabled(Z)V

    .line 2403
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_2

    .line 2404
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->destroy()V

    .line 2407
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v0, :cond_3

    .line 2408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    .line 2412
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget v1, v10, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getCallCard(I)Landroid/view/View;

    move-result-object v9

    .line 2414
    .local v9, callCardLayout:Landroid/view/View;
    if-eqz v9, :cond_4

    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->isReinflatedLayoutByAssetChanged:Z

    if-nez v0, :cond_7

    .line 2416
    :cond_4
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->isReinflatedLayoutByAssetChanged:Z

    .line 2421
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030005

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2422
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 2424
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/phone/PhoneApp;->setCallCard(Landroid/view/View;)V

    .line 2438
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/phone/PhoneApp;->setPreloadConfiguration(Landroid/content/res/Configuration;)V

    .line 2443
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallCard;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    .line 2444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - mCallCard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2445
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, p0}, Lcom/android/phone/CallCard;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 2447
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_5

    .line 2448
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallStatusViewGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallStatus:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallStatusShadow:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mElapsedTime:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mElapsedTimeShadow:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mNonCallStatus:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mNonCallStatusShadow:Landroid/widget/TextView;

    move-object v8, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/phone/CallCard;->passCallStatusViews(Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/android/phone/InCallScreen;)V

    .line 2451
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2458
    :cond_5
    :goto_2
    return-void

    .line 2386
    .end local v9           #callCardLayout:Landroid/view/View;
    :cond_6
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isGlacierTMO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2387
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mAll:Landroid/view/ViewGroup;

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2428
    .restart local v9       #callCardLayout:Landroid/view/View;
    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 2430
    .local v12, parent:Landroid/view/ViewGroup;
    if-eqz v12, :cond_8

    .line 2432
    invoke-virtual {v12, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2435
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 2453
    .end local v12           #parent:Landroid/view/ViewGroup;
    :catch_0
    move-exception v11

    .line 2454
    .local v11, e:Ljava/lang/Exception;
    const-string v0, "InCallScreen"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private initInCallTouchUi()V
    .locals 1

    .prologue
    .line 6193
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "initInCallTouchUi()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6201
    :cond_0
    return-void
.end method

.method private initIncallControlPanel()V
    .locals 2

    .prologue
    .line 8345
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    if-eqz v0, :cond_0

    .line 8346
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    invoke-virtual {v0}, Lcom/android/phone/HtcIncallControlPanel;->destroy()V

    .line 8349
    :cond_0
    new-instance v0, Lcom/android/phone/HtcIncallControlPanel;

    invoke-direct {v0, p0}, Lcom/android/phone/HtcIncallControlPanel;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    .line 8350
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    const v1, 0x7f0800b4

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/HtcIncallControlPanel;->initLayout(Landroid/view/View;)V

    .line 8351
    return-void
.end method

.method private initIncomingCommandBar()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 9859
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 9860
    .local v1, res:Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 9863
    .local v2, resid:I
    const v6, 0x7f0800fc

    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/phone/widget/ButtonGroup;

    iput-object v6, p0, Lcom/android/phone/InCallScreen;->mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

    .line 9865
    const-string v6, "cmd_bar_2"

    const-string v7, "layout"

    const-string v8, "com.android.phone"

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 9866
    .local v0, layout:I
    if-nez v0, :cond_0

    .line 9867
    const v0, 0x2090001

    .line 9869
    :cond_0
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v6, v0}, Lcom/android/phone/widget/ButtonGroup;->setLayoutResources(I)V

    .line 9871
    const/4 v5, 0x0

    .line 9872
    .local v5, unit:I
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c004c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 9874
    .local v3, textSize:F
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

    const v7, 0x2020001

    const v8, 0x7f08003a

    const v9, 0x7f0e0029

    invoke-virtual {v6, v7, v8, v10, v9}, Lcom/android/phone/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 9877
    .local v4, tv:Landroid/widget/TextView;
    const v6, 0x7f020074

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 9878
    invoke-virtual {v4, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9880
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

    const v7, 0x2020003

    const v8, 0x7f08003b

    const v9, 0x7f0e002a

    invoke-virtual {v6, v7, v8, v10, v9}, Lcom/android/phone/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    move-result-object v4

    .end local v4           #tv:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 9882
    .restart local v4       #tv:Landroid/widget/TextView;
    const v6, 0x7f02007d

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 9883
    invoke-virtual {v4, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9885
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v6, p0}, Lcom/android/phone/widget/ButtonGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9886
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v6, p0}, Lcom/android/phone/widget/ButtonGroup;->setOnVisibilityChangedListener(Lcom/android/phone/view/OnVisibilityChangedListener;)V

    .line 9889
    return-void
.end method

.method private initOtaState()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 8231
    const/4 v2, 0x0

    .line 8233
    .local v2, inOtaCall:Z
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 8234
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 8236
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v4, :cond_2

    .line 8237
    :cond_0
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "initOtaState func - All CdmaOTA utility classes not initialized"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8266
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_1
    :goto_0
    return v3

    .line 8241
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->checkIsOtaCall(Landroid/content/Intent;)Z

    move-result v2

    .line 8242
    if-eqz v2, :cond_b

    iget-object v4, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v4, :cond_b

    .line 8243
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v3}, Lcom/android/phone/OtaUtils;->getCdmaOtaInCallScreenUiState()Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    move-result-object v1

    .line 8245
    .local v1, cdmaOtaInCallScreenState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v1, v3, :cond_5

    .line 8246
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "initOtaState - in OTA Normal mode"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8247
    :cond_3
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #cdmaOtaInCallScreenState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    :cond_4
    :goto_1
    move v3, v2

    .line 8266
    goto :goto_0

    .line 8248
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v1       #cdmaOtaInCallScreenState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    :cond_5
    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v1, v3, :cond_7

    .line 8250
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_6

    const-string v3, "initOtaState - in OTA END mode"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8251
    :cond_6
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_1

    .line 8252
    :cond_7
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v3, v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v4, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v3, v4, :cond_9

    .line 8254
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_8

    const-string v3, "initOtaState - set OTA END Mode"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8255
    :cond_8
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_1

    .line 8257
    :cond_9
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_a

    const-string v3, "initOtaState - Set OTA NORMAL Mode"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8258
    :cond_a
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_1

    .line 8261
    .end local v1           #cdmaOtaInCallScreenState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    :cond_b
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v4, :cond_4

    .line 8262
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v4, v3}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    goto :goto_1
.end method

.method private initTaskBar()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 7240
    const v5, 0x7f0800fb

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/phone/widget/ButtonGroup;

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    .line 7242
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "cmd_bar_7"

    const-string v7, "layout"

    const-string v8, "com.android.phone"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 7243
    .local v1, layout:I
    if-nez v1, :cond_0

    .line 7244
    const v1, 0x2090006

    .line 7246
    :cond_0
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v5, v1}, Lcom/android/phone/widget/ButtonGroup;->setLayoutResources(I)V

    .line 7248
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20a0026

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 7251
    .local v0, color:I
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    const v6, 0x2020001

    const v7, 0x7f080043

    const v8, 0x7f0e0029

    invoke-virtual {v5, v6, v7, v9, v8}, Lcom/android/phone/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 7253
    .local v4, tv:Landroid/widget/TextView;
    sget-boolean v5, Lcom/android/phone/util/BuildUtils;->SENSE_TABLET:Z

    if-nez v5, :cond_1

    .line 7254
    const v5, 0x7f02007d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 7256
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c004c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 7258
    .local v3, textSize:F
    invoke-virtual {v4, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7259
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7261
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x205003b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 7262
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2050137

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    .line 7263
    .local v2, paddingTop:I
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    const v6, 0x2020006

    invoke-virtual {v5, v6}, Lcom/android/phone/widget/ButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #tv:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 7264
    .restart local v4       #tv:Landroid/widget/TextView;
    invoke-virtual {v4, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7265
    invoke-virtual {v4, v9, v2, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 7266
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    const v6, 0x2020007

    invoke-virtual {v5, v6}, Lcom/android/phone/widget/ButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #tv:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 7267
    .restart local v4       #tv:Landroid/widget/TextView;
    invoke-virtual {v4, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7268
    invoke-virtual {v4, v9, v2, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 7270
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateKeypadIcon()V

    .line 7274
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v5, p0}, Lcom/android/phone/widget/ButtonGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7277
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v5}, Lcom/android/phone/widget/ButtonGroup;->requestLayout()V

    .line 7278
    return-void
.end method

.method private initTitleBar()V
    .locals 6

    .prologue
    .line 7142
    const v3, 0x7f080141

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcBlinkingTextView;

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    .line 7144
    const v3, 0x7f080140

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mOperatorNameShadow:Landroid/widget/TextView;

    .line 7146
    const v3, 0x7f080142

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallStatusViewGroup:Landroid/view/ViewGroup;

    .line 7148
    const v3, 0x7f080144

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallStatus:Landroid/widget/TextView;

    .line 7149
    const v3, 0x7f080143

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallStatusShadow:Landroid/widget/TextView;

    .line 7151
    const v3, 0x7f080146

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mElapsedTime:Landroid/widget/TextView;

    .line 7152
    const v3, 0x7f080145

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mElapsedTimeShadow:Landroid/widget/TextView;

    .line 7154
    const v3, 0x7f0800fe

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 7155
    .local v1, titlebar:Landroid/view/View;
    const-string v3, "common_app_bkg_top"

    const-string v4, "drawable"

    const v5, 0x20807c7

    invoke-static {v3, v4, v5}, Lcom/android/phone/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 7156
    .local v0, id:I
    if-eqz v0, :cond_0

    .line 7157
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 7159
    :cond_0
    const v3, 0x7f080148

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mNonCallStatus:Landroid/widget/TextView;

    .line 7160
    const v3, 0x7f080147

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mNonCallStatusShadow:Landroid/widget/TextView;

    .line 7161
    const v3, 0x7f08014f

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarImage;

    .line 7162
    .local v2, volumeControl:Lcom/htc/widget/HeaderBarImage;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 7163
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7164
    const v3, 0x7f0e01e9

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 7165
    invoke-virtual {v2, p0}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7169
    sget-boolean v3, Lcom/android/phone/HtcFeatureList;->EnableCallGuard:Z

    if-eqz v3, :cond_1

    .line 7170
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initCallGuard()V

    .line 7173
    :cond_1
    return-void
.end method

.method private internalSwapCalls()V
    .locals 2

    .prologue
    .line 5964
    const-string v0, "internalSwapCalls()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5971
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5972
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 5981
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 5986
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 5987
    return-void
.end method

.method private isOn(Z)Z
    .locals 1
    .parameter "On"

    .prologue
    .line 4772
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4774
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 6582
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "InCallScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6583
    :cond_0
    return-void
.end method

.method private mergeCalls()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 6705
    const-string v2, "mergeCalls"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6706
    invoke-static {}, Lcom/android/phone/PhoneUtils;->canMergeCalls()I

    move-result v1

    .line 6707
    .local v1, mergeResult:I
    if-nez v1, :cond_0

    .line 6708
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    .line 6728
    :goto_0
    return-void

    .line 6710
    :cond_0
    if-ne v4, v1, :cond_3

    const v0, 0x7f0e00de

    .line 6713
    .local v0, errorMessageResId:I
    :goto_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_2

    .line 6714
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6715
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 6717
    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 6719
    :cond_2
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e025b

    invoke-virtual {v2, v3, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 6724
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 6726
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0

    .line 6710
    .end local v0           #errorMessageResId:I
    :cond_3
    const v0, 0x7f0e03b4

    goto :goto_1
.end method

.method private okToDialDTMFTones()Z
    .locals 5

    .prologue
    .line 6150
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 6151
    .local v2, hasRingingCall:Z
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 6162
    .local v1, fgCallState:Lcom/android/internal/telephony/Call$State;
    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 6167
    .local v0, canDial:Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[okToDialDTMFTones] foreground state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ringing state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", call screen mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6172
    return v0

    .line 6162
    .end local v0           #canDial:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 30
    .parameter "r"

    .prologue
    .line 3256
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/telephony/Connection;

    .line 3257
    .local v13, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v18

    .line 3258
    .local v18, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "onDisconnect: "

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v27, ", cause="

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3260
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v22, 0x1

    .line 3261
    .local v22, currentlyIdle:Z
    :goto_0
    const/4 v11, 0x0

    .line 3266
    .local v11, autoretrySetting:I
    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->getPhoneTypeByConnection(Ljava/lang/Object;)I

    move-result v23

    .line 3268
    .local v23, disconnectedPhoneType:I
    const/4 v3, 0x2

    move/from16 v0, v23

    if-ne v3, v0, :cond_1

    .line 3271
    if-eqz v22, :cond_1

    .line 3272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v27, "call_auto_retry"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 3280
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 3282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen$CallerData;->destroy()V

    .line 3284
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/phone/PhoneUtils;->mIsFlashCall:Z

    .line 3285
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/phone/PhoneUtils;->mIsMergeCall:Z

    .line 3288
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    .line 3308
    .local v10, app:Lcom/android/phone/PhoneApp;
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_3

    .line 3309
    const v3, 0x7f0e0237

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v3, v1}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    .line 3654
    :goto_1
    return-void

    .line 3260
    .end local v10           #app:Lcom/android/phone/PhoneApp;
    .end local v11           #autoretrySetting:I
    .end local v22           #currentlyIdle:Z
    .end local v23           #disconnectedPhoneType:I
    :cond_2
    const/16 v22, 0x0

    goto :goto_0

    .line 3311
    .restart local v10       #app:Lcom/android/phone/PhoneApp;
    .restart local v11       #autoretrySetting:I
    .restart local v22       #currentlyIdle:Z
    .restart local v23       #disconnectedPhoneType:I
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_4

    .line 3312
    const v3, 0x7f0e0236

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v3, v1}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_1

    .line 3314
    :cond_4
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_5

    .line 3315
    const v3, 0x7f0e0238

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v3, v1}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_1

    .line 3317
    :cond_5
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_6

    .line 3318
    const v3, 0x7f0e0239

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v3, v1}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_1

    .line 3320
    :cond_6
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_7

    .line 3321
    const v3, 0x7f0e023a

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v3, v1}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_1

    .line 3325
    :cond_7
    const/4 v3, 0x2

    move/from16 v0, v23

    if-ne v3, v0, :cond_a

    .line 3330
    sget-object v16, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    .line 3331
    .local v16, callState:Lcom/android/internal/telephony/Call$State;
    if-eqz v13, :cond_8

    .line 3332
    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->htcGetPreviousStateBeforeDisconnected()Lcom/android/internal/telephony/Call$State;

    move-result-object v16

    .line 3335
    :cond_8
    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v16

    if-ne v0, v3, :cond_17

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_17

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_17

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_17

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_17

    .line 3340
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->showCallLostDialog()V

    .line 3365
    :cond_9
    :goto_2
    sget-boolean v3, Lcom/android/phone/HtcFeatureList;->EnableNBPCDSetting:Z

    if-eqz v3, :cond_a

    .line 3367
    invoke-static {}, Lcom/android/phone/HtcNBPCDUtil;->isHBPCDRetryUI()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/phone/InCallScreen;->mDisplayingEndCallHandler:Z

    if-nez v3, :cond_a

    .line 3368
    const-string v3, "- mNeedShowCallLostDialog ==true and show showRetryHBPCDDialog"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3369
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->showRetryHBPCDDialog()V

    .line 3384
    .end local v16           #callState:Lcom/android/internal/telephony/Call$State;
    :cond_a
    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    .line 3386
    .local v14, call:Lcom/android/internal/telephony/Call;
    if-eqz v14, :cond_c

    .line 3395
    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v21

    .line 3396
    .local v21, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v21, :cond_c

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v3

    const/16 v27, 0x1

    move/from16 v0, v27

    if-le v3, v0, :cond_c

    .line 3397
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/Connection;

    .line 3398
    .local v20, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v27, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v27

    if-ne v3, v0, :cond_b

    .line 3407
    const-string v3, "- Still-active conf call; clearing DISCONNECTED..."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3408
    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 3409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 3418
    .end local v20           #conn:Lcom/android/internal/telephony/Connection;
    .end local v21           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v26           #i$:Ljava/util/Iterator;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v27, "emergency_call_retry_count"

    const/16 v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 3429
    .local v24, emergencyCallRetryCount:I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/InCallScreen;->mShowCallLogAfterDisconnect:Z

    .line 3436
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v3

    if-nez v3, :cond_d

    .line 3437
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 3448
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->checkChinaBuild()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 3450
    const/4 v12, 0x0

    .line 3469
    .local v12, bailOutImmediately:Z
    :goto_3
    const/4 v8, 0x0

    .line 3470
    .local v8, number:Ljava/lang/String;
    const-wide/16 v4, -0x1

    .line 3471
    .local v4, userId:J
    const-wide/16 v6, -0x1

    .line 3472
    .local v6, recordNumber:J
    const/4 v9, 0x0

    .line 3473
    .local v9, presentation:I
    if-eqz v14, :cond_e

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v3

    if-nez v3, :cond_e

    .line 3474
    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v19

    .line 3476
    .local v19, ci:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v19, :cond_e

    .line 3477
    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 3478
    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 3479
    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/android/internal/telephony/CallerInfo;->recordNumber:J

    .line 3480
    move-object/from16 v0, v19

    iget v9, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 3484
    .end local v19           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_e
    if-eqz v12, :cond_1e

    .line 3486
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_f

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_f

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_10

    .line 3493
    :cond_f
    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_10

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_10

    move-object/from16 v3, p0

    .line 3496
    invoke-direct/range {v3 .. v9}, Lcom/android/phone/InCallScreen;->showEndCallHandlerDialogIfNeeded(JJLjava/lang/String;I)Z

    .line 3500
    :cond_10
    const-string v3, "- onDisconnect: bailOutImmediately..."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3505
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V

    .line 3509
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_11

    if-lez v24, :cond_11

    .line 3511
    new-instance v3, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-class v27, Lcom/android/phone/EmergencyCallHandler;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 3617
    :cond_11
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 3619
    const-string v3, "mWaitPromptDialog.dismiss"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3620
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v3, :cond_12

    .line 3621
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 3622
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3624
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v3, :cond_13

    .line 3625
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 3626
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3628
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v3, :cond_14

    .line 3629
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 3630
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3634
    :cond_14
    if-eqz v22, :cond_15

    .line 3635
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/InCallScreen;->mIsEmergencyCall:Z

    .line 3638
    :cond_15
    sget-boolean v3, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_KIDZONE:Z

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mPendingRequest:Lcom/android/phone/util/PendingRequest;

    if-eqz v3, :cond_16

    .line 3641
    new-instance v17, Landroid/content/Intent;

    const-string v3, "com.htc.action.EXIT_CONFIRM_PASSWORD"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3642
    .local v17, cancelIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 3643
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/InCallScreen;->mPendingRequest:Lcom/android/phone/util/PendingRequest;

    .line 3644
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->clearPwdResultReceiver()V

    .line 3650
    .end local v17           #cancelIntent:Landroid/content/Intent;
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/android/phone/EcidClient;->updateLookupQueries(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_1

    .line 3341
    .end local v4           #userId:J
    .end local v6           #recordNumber:J
    .end local v8           #number:Ljava/lang/String;
    .end local v9           #presentation:I
    .end local v12           #bailOutImmediately:Z
    .end local v14           #call:Lcom/android/internal/telephony/Call;
    .end local v24           #emergencyCallRetryCount:I
    .restart local v16       #callState:Lcom/android/internal/telephony/Call$State;
    :cond_17
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v16

    if-eq v0, v3, :cond_18

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v16

    if-ne v0, v3, :cond_9

    :cond_18
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_9

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_9

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_9

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_9

    .line 3347
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    if-eqz v3, :cond_19

    .line 3349
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->showCallLostDialog()V

    .line 3350
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_2

    .line 3352
    :cond_19
    if-nez v11, :cond_1a

    .line 3354
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->showCallLostDialog()V

    .line 3355
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_2

    .line 3359
    :cond_1a
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_2

    .line 3455
    .end local v16           #callState:Lcom/android/internal/telephony/Call$State;
    .restart local v14       #call:Lcom/android/internal/telephony/Call;
    .restart local v24       #emergencyCallRetryCount:I
    :cond_1b
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_1c

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_1c

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_1c

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_1d

    if-lez v24, :cond_1d

    :cond_1c
    if-eqz v22, :cond_1d

    const/4 v12, 0x1

    .restart local v12       #bailOutImmediately:Z
    :goto_5
    goto/16 :goto_3

    .end local v12           #bailOutImmediately:Z
    :cond_1d
    const/4 v12, 0x0

    goto :goto_5

    .line 3515
    .restart local v4       #userId:J
    .restart local v6       #recordNumber:J
    .restart local v8       #number:Ljava/lang/String;
    .restart local v9       #presentation:I
    .restart local v12       #bailOutImmediately:Z
    :cond_1e
    const-string v3, "- onDisconnect: delayed bailout..."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3523
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 3527
    if-eqz v22, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedFgCall()Z

    move-result v3

    if-nez v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedBgCall()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 3530
    :cond_1f
    const-string v3, "- onDisconnect: switching to \'Call ended\' state..."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3531
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 3536
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v25

    .line 3537
    .local v25, hasActiveCall:Z
    if-nez v25, :cond_24

    .line 3538
    const-string v3, "- onDisconnect: cleaning up after FG call disconnect..."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3542
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v3, :cond_21

    .line 3543
    const-string v3, "- DISMISSING mWaitPromptDialog."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3544
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 3545
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3547
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v3, :cond_22

    .line 3548
    const-string v3, "- DISMISSING mWildPromptDialog."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3549
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 3550
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3554
    :cond_22
    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_23

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_23

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_23

    move-object/from16 v3, p0

    .line 3557
    invoke-direct/range {v3 .. v9}, Lcom/android/phone/InCallScreen;->showEndCallHandlerDialogIfNeeded(JJLjava/lang/String;I)Z

    .line 3561
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v3, :cond_24

    .line 3563
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v3, v0, v1}, Lcom/android/phone/CallCard;->foceUpdateTitle(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 3579
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->checkChinaBuild()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 3583
    const/16 v15, 0xbb8

    .line 3612
    .local v15, callEndedDisplayDelay:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v27, 0x6c

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3614
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v27, 0x6c

    int-to-long v0, v15

    move-wide/from16 v28, v0

    move/from16 v0, v27

    move-wide/from16 v1, v28

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 3586
    .end local v15           #callEndedDisplayDelay:I
    :cond_25
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_26

    .line 3590
    const/16 v15, 0x1388

    .restart local v15       #callEndedDisplayDelay:I
    goto :goto_6

    .line 3594
    .end local v15           #callEndedDisplayDelay:I
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v3, :cond_27

    .line 3596
    const/16 v15, 0x7d0

    .restart local v15       #callEndedDisplayDelay:I
    goto :goto_6

    .line 3603
    .end local v15           #callEndedDisplayDelay:I
    :cond_27
    const/16 v15, 0xc8

    .restart local v15       #callEndedDisplayDelay:I
    goto :goto_6
.end method

.method private onEndCallBtnClick()V
    .locals 1

    .prologue
    .line 6733
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6735
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finishImmediatelyIfNecessary()V

    .line 6737
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 6740
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/HtcNBPCDUtil;->setHBPCDRetryUI(Z)V

    .line 6743
    :cond_0
    return-void
.end method

.method private onHoldClick()V
    .locals 4

    .prologue
    .line 5373
    const-string v2, "onHoldClick()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5375
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 5376
    .local v0, hasActiveCall:Z
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 5377
    .local v1, hasHoldingCall:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- hasActiveCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hasHoldingCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5379
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 5381
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5383
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 5398
    :cond_0
    :goto_0
    return-void

    .line 5386
    :cond_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 5388
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method private onMMICancel()V
    .locals 1

    .prologue
    .line 3693
    const-string v0, "onMMICancel()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3696
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    .line 3707
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onMMICancel: finishing InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3708
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 3709
    return-void
.end method

.method private onMMIInitiate(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 3660
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMMIInitiate()...  AsyncResult r = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3667
    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v2, :cond_0

    .line 3668
    const-string v2, "Activity not in foreground! Bailing out..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3684
    :goto_0
    return-void

    .line 3676
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 3678
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/MmiCode;

    .line 3679
    .local v1, mmiCode:Lcom/android/internal/telephony/MmiCode;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - MmiCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3681
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x35

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3682
    .local v0, message:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-static {p0, v1, v0, v2}, Lcom/android/phone/PhoneUtils;->displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "r"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3174
    const-string v0, "onPhoneStateChanged()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3176
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->setSuppServiceRequesting(Z)V

    .line 3178
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_3

    .line 3180
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 3181
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x322

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3182
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 3183
    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3187
    :cond_0
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->EnableNBPCDSetting:Z

    if-eqz v0, :cond_1

    .line 3188
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissHBPCDDialogIfNeeded()V

    .line 3193
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_3

    .line 3194
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "- Ringing DISMISS mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3195
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 3196
    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3203
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_6

    .line 3206
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 3207
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->updateKeyguardShowWhenLockPolicy(Z)V

    .line 3210
    :cond_6
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    if-ne v0, v1, :cond_7

    .line 3212
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->updateKeyguardShowWhenLockPolicy(Z)V

    .line 3219
    :cond_7
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_9

    .line 3220
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "onPhoneStateChanged: Activity not in foreground! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3237
    :cond_8
    :goto_0
    return-void

    .line 3224
    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 3228
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 3231
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_8

    .line 3232
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_8

    .line 3233
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    goto :goto_0
.end method

.method private onResumeAfterCallActivation(Z)V
    .locals 9
    .parameter "handledStartupError"

    .prologue
    const/16 v8, 0x70

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1502
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1506
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1507
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->setVolumeControlStream(I)V

    .line 1512
    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->takeKeyEvents(Z)V

    .line 1515
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 1521
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 1524
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetUiWhenOnResume()V

    .line 1532
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->quickLaunch()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1533
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v4, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v3, v4, :cond_c

    .line 1534
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->syncWithPhoneState()Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v1

    .line 1535
    .local v1, status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v1, v3, :cond_1

    .line 1536
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- onResume: syncWithPhoneState failed! status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1540
    :cond_0
    if-eqz p1, :cond_9

    .line 1548
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "  ==> syncWithPhoneState failed, but staying here anyway."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1582
    .end local v1           #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_1
    const v3, 0x1129d

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1589
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_e

    .line 1605
    const-string v3, "- posting ALLOW_SCREEN_ON message..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1606
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1610
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x62

    if-eq v3, v4, :cond_2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x63

    if-eq v3, v4, :cond_2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x41

    if-eq v3, v4, :cond_2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x42

    if-ne v3, v4, :cond_d

    .line 1615
    :cond_2
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1636
    :goto_1
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 1648
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getRestoreMuteOnInCallResume()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1650
    invoke-static {}, Lcom/android/phone/PhoneUtils;->restoreMuteState()Ljava/lang/Boolean;

    .line 1651
    invoke-virtual {v0, v6}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 1654
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v3

    const-class v4, Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Profiler;->profileViewCreate(Landroid/view/Window;Ljava/lang/String;)V

    .line 1655
    const-string v3, "onResume() done."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1658
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    if-eqz v3, :cond_4

    .line 1659
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v3}, Lcom/android/phone/widget/ButtonGroup;->requestLayout()V

    .line 1662
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->quickLaunch()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1664
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialingScreen()V

    .line 1671
    :cond_5
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    invoke-virtual {v3}, Lcom/android/phone/HtcIncallControlPanel;->updateSpeakerButton()V

    .line 1674
    sget-boolean v3, Lcom/android/phone/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v3, :cond_f

    .line 1675
    invoke-static {p0, v7}, Lcom/htc/util/res/HtcResUtil;->getBlurWallpaper(Landroid/content/Context;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 1676
    .local v2, wallpaper:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_6

    .line 1677
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1678
    iput-boolean v7, p0, Lcom/android/phone/InCallScreen;->mBgRemoved:Z

    .line 1680
    :cond_6
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1681
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->showDialPad()V

    .line 1682
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateKeypadIcon()V

    .line 1687
    .end local v2           #wallpaper:Landroid/graphics/drawable/Drawable;
    :cond_7
    :goto_2
    return-void

    .line 1509
    :cond_8
    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreen;->setVolumeControlStream(I)V

    goto/16 :goto_0

    .line 1562
    .restart local v1       #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_9
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_a

    const-string v3, "  ==> syncWithPhoneState failed; bailing out!"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1563
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1566
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1567
    :cond_b
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto :goto_2

    .line 1574
    .end local v1           #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_c
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    if-eqz v3, :cond_7

    .line 1575
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v3}, Lcom/android/phone/widget/ButtonGroup;->requestLayout()V

    goto :goto_2

    .line 1619
    :cond_d
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 1634
    :cond_e
    invoke-virtual {v0, v6}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto/16 :goto_1

    .line 1684
    :cond_f
    iget-boolean v3, p0, Lcom/android/phone/InCallScreen;->mBgRemoved:Z

    if-nez v3, :cond_7

    .line 1685
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method

.method private onSuppServiceNotification(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter "ar"

    .prologue
    const v4, 0x7f0e0051

    const/4 v6, 0x0

    .line 7986
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 7987
    .local v0, not:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "InCallScreen"

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7988
    :cond_0
    const-string v1, ""

    .line 7989
    .local v1, str:Ljava/lang/String;
    iget v2, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    if-nez v2, :cond_2

    .line 7991
    iget v2, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    packed-switch v2, :pswitch_data_0

    .line 8044
    :goto_0
    :pswitch_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8045
    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 8047
    :cond_1
    return-void

    .line 7995
    :pswitch_1
    const v2, 0x7f0e004f

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7996
    goto :goto_0

    .line 7998
    :pswitch_2
    const v2, 0x7f0e0050

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7999
    goto :goto_0

    .line 8001
    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8002
    goto :goto_0

    .line 8004
    :pswitch_4
    const v2, 0x7f0e0052

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8005
    goto :goto_0

    .line 8007
    :pswitch_5
    const v2, 0x7f0e0053

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8008
    goto :goto_0

    .line 8010
    :pswitch_6
    const v2, 0x7f0e0054

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8011
    goto :goto_0

    .line 8013
    :pswitch_7
    const v2, 0x7f0e0055

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 8018
    :cond_2
    iget v2, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 8020
    :pswitch_8
    const v2, 0x7f0e0056

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    iget v5, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/InCallScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 8022
    goto :goto_0

    .line 8024
    :pswitch_9
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8025
    goto :goto_0

    .line 7991
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 8018
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private phoneIsInUse()Z
    .locals 2

    .prologue
    .line 2466
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private placeCall(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 28
    .parameter "intent"

    .prologue
    .line 4324
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "placeCall()...  intent = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mEmergencydialog:Lcom/htc/widget/HtcAlertDialog;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 4329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mEmergencydialog:Lcom/htc/widget/HtcAlertDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 4330
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallScreen;->mEmergencydialog:Lcom/htc/widget/HtcAlertDialog;

    .line 4335
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 4336
    const-string v23, "placeCall() but dialing currently"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4337
    sget-object v15, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_IGNORED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 4591
    :cond_1
    :goto_0
    return-object v15

    .line 4341
    :cond_2
    const/16 v16, 0x0

    .line 4345
    .local v16, phone:Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v15

    .line 4349
    .local v15, okToCallStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/InCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v14

    .line 4357
    .local v14, number:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    .line 4358
    .local v22, uri:Landroid/net/Uri;
    if-eqz v22, :cond_3

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    .line 4359
    .local v19, scheme:Ljava/lang/String;
    :goto_1
    const-string v23, "android.phone.extra.SIP_PHONE_URI"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 4361
    .local v20, sipPhoneUri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v14, v2}, Lcom/android/phone/PhoneUtils;->pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v16

    .line 4362
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "- got Phone instance: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", class = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4365
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/ServiceState;->getState()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InCallScreen$InCallInitStatus;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 4380
    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v11

    .line 4381
    .local v11, isEmergencyNumber:Z
    const-string v23, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 4383
    .local v10, isEmergencyIntent:Z
    if-nez v14, :cond_6

    .line 4384
    const-string v23, "InCallScreen"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "placeCall: couldn\'t get a phone number from Intent "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4385
    sget-object v15, Lcom/android/phone/InCallScreen$InCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 4358
    .end local v10           #isEmergencyIntent:Z
    .end local v11           #isEmergencyNumber:Z
    .end local v19           #scheme:Ljava/lang/String;
    .end local v20           #sipPhoneUri:Ljava/lang/String;
    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 4367
    .end local v14           #number:Ljava/lang/String;
    .end local v22           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 4372
    .local v8, ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    sget-object v23, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-object/from16 v0, v23

    if-eq v15, v0, :cond_4

    .line 4373
    sget-boolean v23, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v23, :cond_1

    const-string v23, "Voicemail number not reachable in current SIM card state."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4376
    :cond_4
    sget-boolean v23, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v23, :cond_5

    const-string v23, "VoiceMailNumberMissingException from getInitialNumber()"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4377
    :cond_5
    sget-object v15, Lcom/android/phone/InCallScreen$InCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 4388
    .end local v8           #ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    .restart local v10       #isEmergencyIntent:Z
    .restart local v11       #isEmergencyNumber:Z
    .restart local v14       #number:Ljava/lang/String;
    .restart local v19       #scheme:Ljava/lang/String;
    .restart local v20       #sipPhoneUri:Ljava/lang/String;
    .restart local v22       #uri:Landroid/net/Uri;
    :cond_6
    if-eqz v11, :cond_7

    if-nez v10, :cond_7

    .line 4389
    const-string v23, "InCallScreen"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Non-CALL_EMERGENCY Intent "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " attempted to call emergency number "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4392
    sget-object v15, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 4393
    :cond_7
    if-nez v11, :cond_8

    if-eqz v10, :cond_8

    .line 4394
    const-string v23, "InCallScreen"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received CALL_EMERGENCY Intent "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " with non-emergency number "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " -- failing call."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4397
    sget-object v15, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 4401
    :cond_8
    if-eqz v11, :cond_9

    .line 4402
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallScreen;->mIsEmergencyCall:Z

    .line 4424
    :cond_9
    const/4 v3, 0x0

    .line 4426
    .local v3, airplaneMode:Z
    if-eqz v11, :cond_a

    if-eqz v10, :cond_a

    .line 4429
    sget-object v23, Lcom/android/phone/InCallScreen$InCallInitStatus;->POWER_OFF:Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-object/from16 v0, v23

    if-eq v15, v0, :cond_a

    sget-object v23, Lcom/android/phone/InCallScreen$InCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-object/from16 v0, v23

    if-eq v15, v0, :cond_a

    .line 4431
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "airplane_mode_on"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    if-lez v23, :cond_a

    .line 4433
    const/4 v3, 0x1

    .line 4435
    const-string v23, "IncallScreen"

    const-string v24, "Airplane mode is on but service state is still in service"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4444
    :cond_a
    sget-object v23, Lcom/android/phone/InCallScreen$InCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-object/from16 v0, v23

    if-ne v15, v0, :cond_b

    .line 4445
    sget-object v15, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 4446
    sget-boolean v23, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v23, :cond_b

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "==> UPDATING status to: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4450
    :cond_b
    const/4 v12, 0x0

    .line 4451
    .local v12, isWifiCallOn:Z
    const/4 v6, 0x0

    .line 4452
    .local v6, emergencyCallPref:I
    const-string v7, "NOT_INITIALIZED"

    .line 4453
    .local v7, emergencyState:Ljava/lang/String;
    const/16 v18, 0x1

    .line 4454
    .local v18, powerOn:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 4456
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    const-string v24, "com.movial.ipphone.IPPhoneProxy"

    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 4457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneProxy;->getEmergencyPreference()I

    move-result v6

    .line 4458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneProxy;->getEmergencyState()Ljava/lang/String;

    move-result-object v7

    .line 4459
    const-string v23, "NOT_INITIALIZED"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v23

    if-nez v23, :cond_13

    const/4 v12, 0x1

    .line 4467
    :cond_c
    :goto_2
    if-eqz v12, :cond_14

    if-eqz v11, :cond_14

    if-nez v6, :cond_d

    const-string v23, "IDLE"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_e

    :cond_d
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v6, v0, :cond_14

    const-string v23, "IMS_CALL_FAILED"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    :cond_e
    const/4 v9, 0x1

    .line 4471
    .local v9, imsCS:Z
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/phone/InCallScreen;->isOn(Z)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 4473
    :try_start_2
    const-string v23, "com.movial.ipphone.IPPhoneProxy"

    invoke-static/range {v23 .. v23}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v23

    const-string v24, "setForceEmergencyMode"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sget-object v27, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4474
    const-string v23, "com.movial.ipphone.IPPhoneProxy"

    invoke-static/range {v23 .. v23}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v23

    const-string v24, "setEmergencyRadioOn"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 4479
    :cond_f
    :goto_4
    if-eqz v9, :cond_15

    if-nez v18, :cond_15

    const/16 v21, 0x1

    .line 4480
    .local v21, turnRadioOn:Z
    :goto_5
    const-string v23, "InCallScreen"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "EmergencyPref = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " imsCS = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " powerOn="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " emergencyState = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " turnRadioOn = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4484
    sget-object v23, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-object/from16 v0, v23

    if-ne v15, v0, :cond_10

    if-nez v3, :cond_10

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->isOn(Z)Z

    move-result v23

    if-eqz v23, :cond_19

    .line 4491
    :cond_10
    if-nez v3, :cond_12

    if-eqz v11, :cond_11

    sget-object v23, Lcom/android/phone/InCallScreen$InCallInitStatus;->POWER_OFF:Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-object/from16 v0, v23

    if-eq v15, v0, :cond_12

    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->isOn(Z)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 4496
    :cond_12
    sget-short v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v24, 0x9f

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    .line 4503
    invoke-static {}, Lcom/android/phone/util/BuildUtils;->isWifiCallingEnabled()Z

    move-result v23

    if-eqz v23, :cond_16

    if-eqz v11, :cond_16

    const/4 v13, 0x1

    .line 4506
    .local v13, isWifiEmergencyCalling:Z
    :goto_6
    invoke-static {}, Lcom/android/phone/util/BuildUtils;->isConfirmBeforeTurnOnRadioEnabled()Z

    move-result v23

    if-eqz v23, :cond_17

    if-nez v13, :cond_17

    .line 4508
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->showTurnOnRadioDialog()V

    .line 4517
    :goto_7
    sget-object v15, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 4459
    .end local v9           #imsCS:Z
    .end local v13           #isWifiEmergencyCalling:Z
    .end local v21           #turnRadioOn:Z
    :cond_13
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 4462
    :catch_1
    move-exception v5

    .line 4463
    .local v5, e:Ljava/lang/Exception;
    const-string v23, "InCallScreen"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4467
    .end local v5           #e:Ljava/lang/Exception;
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 4475
    .restart local v9       #imsCS:Z
    :catch_2
    move-exception v5

    .line 4476
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v23, "InCallScreen"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 4479
    .end local v5           #e:Ljava/lang/Exception;
    :cond_15
    const/16 v21, 0x0

    goto/16 :goto_5

    .line 4503
    .restart local v21       #turnRadioOn:Z
    :cond_16
    const/4 v13, 0x0

    goto :goto_6

    .line 4510
    .restart local v13       #isWifiEmergencyCalling:Z
    :cond_17
    new-instance v23, Landroid/content/Intent;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-class v24, Lcom/android/phone/EmergencyCallHandler;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 4512
    sget-boolean v23, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v23, :cond_18

    .line 4513
    const-string v23, "placeCall: starting EmergencyCallHandler, finishing InCallScreen..."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4514
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto :goto_7

    .line 4523
    .end local v13           #isWifiEmergencyCalling:Z
    :cond_19
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    .line 4533
    .local v4, app:Lcom/android/phone/PhoneApp;
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    .line 4536
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/InCallScreen;->htcCheckPhoneNumberBlocking(Ljava/lang/String;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v17

    .line 4538
    .local v17, phoneNumberBlockedFromUI:Lcom/android/phone/InCallScreen$InCallInitStatus;
    sget-object v23, Lcom/android/phone/InCallScreen$35;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/InCallScreen$InCallInitStatus;->ordinal()I

    move-result v24

    aget v23, v23, v24

    packed-switch v23, :pswitch_data_0

    .line 4573
    sget-object v17, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 4581
    :cond_1a
    :goto_8
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1b

    invoke-static {v14}, Lcom/android/phone/HtcCdmaPhoneApp;->enableCallGuard(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_1c

    :cond_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/InCallScreen;->isGSMCallGuardEnable(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_1d

    .line 4585
    :cond_1c
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardPendingIntent:Landroid/content/Intent;

    .line 4587
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/InCallScreen;->updateCallCard(Landroid/content/Intent;)V

    .line 4588
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->htcCdmaCallGuardCreate()V

    .line 4589
    sget-object v15, Lcom/android/phone/InCallScreen$InCallInitStatus;->HTC_CDMA_MO_CALL_GUARD:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 4540
    :pswitch_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardPendingIntent:Landroid/content/Intent;

    .line 4542
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/InCallScreen;->updateCallCard(Landroid/content/Intent;)V

    .line 4543
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->htcCdmaCallGuardCreate()V

    goto :goto_8

    .line 4546
    :pswitch_1
    sget-boolean v23, Lcom/android/phone/HtcFeatureList;->FEATURE_BACKGROUND_OTA:Z

    if-eqz v23, :cond_1a

    .line 4547
    sget-object v23, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 4549
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/InCallScreen;->updateCallCard(Landroid/content/Intent;)V

    .line 4550
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 4551
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lcom/android/phone/HtcCdmaPhoneApp;->failVerizonOTAcall(I)V

    goto :goto_8

    .line 4555
    :pswitch_2
    sget-boolean v23, Lcom/android/phone/HtcFeatureList;->FEATURE_BACKGROUND_OTA:Z

    if-eqz v23, :cond_1a

    .line 4556
    sget-object v23, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 4558
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/InCallScreen;->updateCallCard(Landroid/content/Intent;)V

    .line 4559
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 4560
    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Lcom/android/phone/HtcCdmaPhoneApp;->failVerizonOTAcall(I)V

    goto :goto_8

    .line 4564
    :pswitch_3
    sget-boolean v23, Lcom/android/phone/HtcFeatureList;->FEATURE_BACKGROUND_OTA:Z

    if-eqz v23, :cond_1a

    .line 4565
    sget-object v23, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 4567
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/InCallScreen;->updateCallCard(Landroid/content/Intent;)V

    .line 4568
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 4569
    const/16 v23, 0x2

    invoke-static/range {v23 .. v23}, Lcom/android/phone/HtcCdmaPhoneApp;->failVerizonOTAcall(I)V

    goto/16 :goto_8

    .line 4591
    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v14}, Lcom/android/phone/InCallScreen;->placeCallinternal(Landroid/content/Intent;Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v15

    goto/16 :goto_0

    .line 4538
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private placeCallinternal(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 1
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 4595
    invoke-direct {p0, p1, v0, v0}, Lcom/android/phone/InCallScreen;->placeCallinternal(Landroid/content/Intent;Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v0

    return-object v0
.end method

.method private placeCallinternal(Landroid/content/Intent;Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 13
    .parameter "intent"
    .parameter "dialPhone"
    .parameter "dialNumber"

    .prologue
    .line 4600
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 4602
    .local v0, app:Lcom/android/phone/PhoneApp;
    move-object/from16 v8, p3

    .line 4607
    .local v8, number:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 4609
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 4614
    :cond_0
    :goto_0
    if-nez v8, :cond_1

    .line 4615
    const-string v10, "InCallScreen"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "placeCall: couldn\'t get a phone number from Intent "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4616
    sget-object v10, Lcom/android/phone/InCallScreen$InCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 4766
    :goto_1
    return-object v10

    .line 4610
    :catch_0
    move-exception v3

    .line 4611
    .local v3, ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    const/4 v8, 0x0

    goto :goto_0

    .line 4618
    .end local v3           #ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    :cond_1
    if-nez p2, :cond_3

    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 4620
    .local v9, phone:Lcom/android/internal/telephony/Phone;
    :goto_2
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    const-string v10, "*71"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "*72"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "*73"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_2
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0xa8

    if-ne v10, v11, :cond_4

    .line 4624
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 4626
    const-string v10, "InCallScreen"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HTC_CDMA_CALLFORWARD_INVALID, number="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4627
    sget-object v10, Lcom/android/phone/InCallScreen$InCallInitStatus;->HTC_CDMA_CALLFORWARD_INVALID:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_1

    .end local v9           #phone:Lcom/android/internal/telephony/Phone;
    :cond_3
    move-object v9, p2

    .line 4618
    goto :goto_2

    .line 4631
    .restart local v9       #phone:Lcom/android/internal/telephony/Phone;
    :cond_4
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    .line 4632
    .local v6, isEmergencyNumber:Z
    const-string v10, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 4634
    .local v5, isEmergencyIntent:Z
    sput-boolean v6, Lcom/android/phone/PhoneApp;->mResumeE911:Z

    .line 4637
    invoke-static {v8, v9}, Lcom/android/phone/PhoneUtils;->pluscodeDialingParser(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v8

    .line 4641
    move-object v7, v8

    .line 4643
    .local v7, mOriginalNumber:Ljava/lang/String;
    const-string v10, "personId"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v8, v10}, Lcom/android/phone/InCallScreen;->getNBPCDNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4646
    invoke-static {v8, v9}, Lcom/android/phone/PhoneUtils;->hTcCdmaNumberHyphenation(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v8

    .line 4650
    invoke-static {v8, v9}, Lcom/android/phone/PhoneUtils;->parseInternationalDialingNumber(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v8

    .line 4658
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 4660
    .local v2, contactUri:Landroid/net/Uri;
    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    if-eqz v10, :cond_5

    if-nez v6, :cond_5

    if-nez v5, :cond_5

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->isRoutableViaGateway(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 4664
    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    invoke-static {p0, v9, v8, v2, v10}, Lcom/android/phone/PhoneUtils;->placeCallVia(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)I

    move-result v1

    .line 4677
    .local v1, callStatus:I
    :goto_3
    packed-switch v1, :pswitch_data_0

    .line 4764
    const-string v10, "InCallScreen"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "placeCall: unknown callStatus "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " from PhoneUtils.placeCall() for number \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4766
    sget-object v10, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_1

    .line 4670
    .end local v1           #callStatus:I
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen$CallerData;->getId()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v12}, Lcom/android/phone/InCallScreen$CallerData;->getNumberType()I

    move-result v12

    invoke-static {v9, v8, v10, v11, v12}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v1

    .restart local v1       #callStatus:I
    goto :goto_3

    .line 4679
    :pswitch_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "placeCall: PhoneUtils.placeCall() succeeded for regular call \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4699
    const/4 v4, 0x1

    .line 4700
    .local v4, hideDialer:Z
    const-string v10, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    const/4 v4, 0x1

    .line 4701
    :goto_4
    sget-boolean v10, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_DIAL_WITH_DIALPAD:Z

    if-eqz v10, :cond_6

    if-eqz v4, :cond_6

    .line 4703
    invoke-static {v8}, Lcom/htc/util/phone/DialUtils;->dialWithDialpad(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    const/4 v4, 0x1

    .line 4705
    :cond_6
    :goto_5
    if-eqz v4, :cond_a

    .line 4706
    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 4710
    :goto_6
    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->attachMOInfo(Ljava/lang/String;)V

    .line 4723
    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v10}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 4725
    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_7

    .line 4727
    iget-object v10, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v10}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v10

    sget-object v11, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v10, v11, :cond_7

    .line 4737
    iget-object v10, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 4744
    :cond_7
    sget-object v10, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_1

    .line 4700
    :cond_8
    const/4 v4, 0x0

    goto :goto_4

    .line 4703
    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    .line 4708
    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->showDialPad()V

    goto :goto_6

    .line 4746
    .end local v4           #hideDialer:Z
    :pswitch_1
    sget-boolean v10, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v10, :cond_b

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "placeCall: specified number was an MMI code: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4756
    :cond_b
    sget-object v10, Lcom/android/phone/InCallScreen$InCallInitStatus;->DIALED_MMI:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_1

    .line 4758
    :pswitch_2
    const-string v10, "InCallScreen"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "placeCall: PhoneUtils.placeCall() FAILED for number \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4762
    sget-object v10, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_1

    .line 4677
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processAllowScreenOn()V
    .locals 3

    .prologue
    .line 2702
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x70

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2704
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 2705
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 2707
    .local v0, notifier:Lcom/android/phone/CallNotifier;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getSkypeCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2710
    const-string v1, "processAllowScreenOn()...play call waiting tone"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2711
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->setupPSCallRingingState()V

    .line 2722
    .end local v0           #notifier:Lcom/android/phone/CallNotifier;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_1

    .line 2727
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    .line 2731
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2732
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setupJogBallForIncomingCall(Z)Z

    .line 2735
    :cond_2
    return-void

    .line 2716
    .restart local v0       #notifier:Lcom/android/phone/CallNotifier;
    :cond_3
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->ring()V

    goto :goto_0
.end method

.method private processPendingRequest()V
    .locals 2

    .prologue
    .line 9669
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPendingRequest:Lcom/android/phone/util/PendingRequest;

    if-eqz v0, :cond_1

    .line 9670
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPendingRequest:Lcom/android/phone/util/PendingRequest;

    invoke-virtual {v0}, Lcom/android/phone/util/PendingRequest;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 9698
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPendingRequest:Lcom/android/phone/util/PendingRequest;

    .line 9699
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->clearPwdResultReceiver()V

    .line 9700
    return-void

    .line 9672
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 9677
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_0

    .line 9682
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleDeferBtn()V

    goto :goto_0

    .line 9687
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->onSendSMessageClick()V

    goto :goto_0

    .line 9695
    :cond_1
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "InCallScreen"

    const-string v1, "no pending request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9670
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private quickLaunch()Z
    .locals 1

    .prologue
    .line 9118
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mOnNewIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerForPhoneStates()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2129
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    if-nez v1, :cond_1

    .line 2130
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2131
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2132
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2133
    .local v0, phoneType:I
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x33

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2140
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x34

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2141
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x73

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2143
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2144
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6e

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2148
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2149
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x75

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2159
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    .line 2161
    .end local v0           #phoneType:I
    :cond_1
    return-void
.end method

.method private registerForPwdResult()V
    .locals 3

    .prologue
    .line 9655
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "InCallScreen"

    const-string v2, "registerForPwdResult"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9656
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPwdResultReceiver:Lcom/android/phone/InCallScreen$PwdResultReceiver;

    if-nez v1, :cond_1

    .line 9657
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.htc.action.CONFIRM_PASSWORD_RESULT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 9658
    .local v0, filter:Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/phone/InCallScreen$PwdResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/InCallScreen$PwdResultReceiver;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallScreen$1;)V

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mPwdResultReceiver:Lcom/android/phone/InCallScreen$PwdResultReceiver;

    .line 9659
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPwdResultReceiver:Lcom/android/phone/InCallScreen$PwdResultReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/InCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 9666
    .end local v0           #filter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 9661
    :cond_1
    const-string v1, "InCallScreen"

    const-string v2, "result receive is already existed!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestForNotFullScreen()V
    .locals 7

    .prologue
    const/16 v6, 0x800

    .line 8361
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 8362
    .local v2, winP:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 8363
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 8364
    .local v0, flags:I
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "PHONE/InCallScreen_Debug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current flags: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8365
    :cond_0
    and-int/lit16 v3, v0, 0x800

    if-eq v3, v6, :cond_1

    .line 8367
    invoke-virtual {v2, v6}, Landroid/view/Window;->addFlags(I)V

    .line 8369
    :cond_1
    return-void
.end method

.method private resetArcControl()V
    .locals 2

    .prologue
    .line 9710
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "InCallScreen"

    const-string v1, "updateBottomControlLayout p1 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9711
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v0}, Lcom/android/phone/widget/HtcLockScreenControl;->resetDrawerPosition()V

    .line 9712
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/HtcLockScreenControl;->setVisibility(I)V

    .line 9713
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v0, :cond_1

    .line 9714
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {v0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->loadAndShowArrowAnimation()V

    .line 9716
    :cond_1
    return-void
.end method

.method private resetAvatarBeforeCall(Ljava/lang/String;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 8997
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mHasFocus:Z

    if-eqz v0, :cond_1

    .line 9005
    :cond_0
    :goto_0
    return-void

    .line 9001
    :cond_1
    const-string v0, "android.intent.action.CALL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9003
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallCard;->showUnknownAvatarPhoto(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method private resetUiWhenOnResume()V
    .locals 3

    .prologue
    .line 9013
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 9015
    .local v0, isRinging:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 9016
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v1}, Lcom/android/phone/CallCard;->updateDisplayForNoPerson()V

    .line 9018
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateOperatorName()V

    .line 9019
    return-void

    .line 9013
    .end local v0           #isRinging:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendMessageAndEnd(ILjava/lang/String;)V
    .locals 4
    .parameter "type"
    .parameter "number"

    .prologue
    .line 6826
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 6828
    .local v1, preference:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_reject_msg_text"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6829
    .local v0, msg:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 6830
    :cond_0
    const v2, 0x7f0e005e

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6833
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/phone/InCallScreen;->sendMessageAndEnd(ILjava/lang/String;Ljava/lang/String;)V

    .line 6834
    return-void
.end method

.method private sendMessageDirectly(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "number"
    .parameter "msg"

    .prologue
    .line 7922
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7923
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.SEND_SMS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7924
    const-string v1, "dest"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7925
    const-string v1, "msg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7926
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 7927
    return-void
.end method

.method private setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V
    .locals 4
    .parameter "newMode"

    .prologue
    const/4 v3, 0x0

    .line 5997
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInCallScreenMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5999
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 6001
    .local v0, app:Lcom/android/phone/PhoneApp;
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 6003
    sget-object v1, Lcom/android/phone/InCallScreen$35;->$SwitchMap$com$android$phone$InCallScreen$InCallScreenMode:[I

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen$InCallScreenMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 6101
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 6008
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateMenuButtonHint()V

    .line 6011
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6013
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6014
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_0

    .line 6020
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 6089
    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_1

    .line 6090
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_0

    .line 6091
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    goto :goto_0

    .line 6094
    :cond_1
    const-string v1, "WARNING: Setting mode to UNDEFINED but phone is OFFHOOK, skip cleanOtaScreen."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 6003
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private setLayoutByConfig(Lcom/android/phone/PhoneApp;)V
    .locals 7
    .parameter "app"

    .prologue
    .line 8676
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 8677
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 8679
    .local v2, orientation:I
    invoke-virtual {p1, v2}, Lcom/android/phone/PhoneApp;->getIncallScreenLayout(I)Landroid/view/View;

    move-result-object v1

    .line 8681
    .local v1, incallScreenLayout:Landroid/view/View;
    if-eqz v1, :cond_0

    iget-boolean v4, p0, Lcom/android/phone/InCallScreen;->isReinflatedLayoutByOrientation:Z

    if-nez v4, :cond_1

    .line 8682
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/phone/InCallScreen;->isReinflatedLayoutByOrientation:Z

    .line 8683
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03003d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 8684
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/phone/PhoneApp;->setInCallScreen(Landroid/view/View;)V

    .line 8685
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->setContentView(Landroid/view/View;)V

    .line 8693
    :goto_0
    return-void

    .line 8687
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 8688
    .local v3, parent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_2

    .line 8689
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8691
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setWarningMsgForRoaming(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 9377
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTextForRoamingWarning:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 9378
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTextForRoamingWarning:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 9379
    :cond_0
    return-void
.end method

.method private setupAlertingLock()V
    .locals 6

    .prologue
    .line 7817
    const v4, 0x7f08013e

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/phone/widget/HtcLockScreenControl;

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    .line 7818
    new-instance v2, Lcom/android/phone/InCallScreen$22;

    invoke-direct {v2, p0}, Lcom/android/phone/InCallScreen$22;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 7829
    .local v2, rOpenDownDrawer:Ljava/lang/Runnable;
    new-instance v3, Lcom/android/phone/InCallScreen$23;

    invoke-direct {v3, p0}, Lcom/android/phone/InCallScreen$23;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 7840
    .local v3, rOpenUpDrawer:Ljava/lang/Runnable;
    new-instance v1, Lcom/android/phone/InCallScreen$24;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$24;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 7850
    .local v1, rDraggingUpDrawer:Ljava/lang/Runnable;
    new-instance v0, Lcom/android/phone/InCallScreen$25;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$25;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 7860
    .local v0, rDraggingDownDrawer:Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v4, v2}, Lcom/android/phone/widget/HtcLockScreenControl;->setOpenDrawerDownRunnable(Ljava/lang/Runnable;)V

    .line 7863
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v4, v3}, Lcom/android/phone/widget/HtcLockScreenControl;->setOpenDrawerUpRunnable(Ljava/lang/Runnable;)V

    .line 7864
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/phone/widget/HtcLockScreenControl;->setLockScreenForIncomingCall(Z)V

    .line 7866
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v4, v1}, Lcom/android/phone/widget/HtcLockScreenControl;->setDragingUpRunnable(Ljava/lang/Runnable;)V

    .line 7867
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v4, v0}, Lcom/android/phone/widget/HtcLockScreenControl;->setDragingDownRunnable(Ljava/lang/Runnable;)V

    .line 7868
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v4, v0}, Lcom/android/phone/widget/HtcLockScreenControl;->setCloseDrawerRunnable(Ljava/lang/Runnable;)V

    .line 7871
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/phone/widget/HtcLockScreenControl;->setVisibility(I)V

    .line 7872
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v4, p0}, Lcom/android/phone/widget/HtcLockScreenControl;->setOnVisibilityChangedListener(Lcom/android/phone/view/OnVisibilityChangedListener;)V

    .line 7886
    return-void
.end method

.method private setupLockScreenControlArcIncomingCall()V
    .locals 4

    .prologue
    .line 7890
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-nez v0, :cond_0

    .line 7892
    new-instance v0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    .line 7893
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->setHintText(Ljava/lang/String;Ljava/lang/String;)V

    .line 7894
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    if-eqz v0, :cond_0

    .line 7895
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/HtcLockScreenControl;->setArcControl(Landroid/view/View;)V

    .line 7897
    :cond_0
    return-void
.end method

.method private setupPreloadContactInfo(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x2

    .line 8789
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen$CallerData;->destroy()V

    .line 8790
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 8852
    :cond_0
    :goto_0
    return-void

    .line 8795
    :cond_1
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v5, p1}, Lcom/android/phone/InCallScreen$CallerData;->initFromIntent(Landroid/content/Intent;)V

    .line 8796
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen$CallerData;->getId()Ljava/lang/String;

    move-result-object v0

    .line 8798
    .local v0, callerId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8799
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    const/4 v6, 0x0

    #setter for: Lcom/android/phone/InCallScreen$CallerData;->mbHasPhoto:Z
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen$CallerData;->access$4802(Lcom/android/phone/InCallScreen$CallerData;Z)Z

    .line 8801
    :cond_2
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "InCallScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNewIntent mbHasPhoto: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    #getter for: Lcom/android/phone/InCallScreen$CallerData;->mbHasPhoto:Z
    invoke-static {v7}, Lcom/android/phone/InCallScreen$CallerData;->access$4800(Lcom/android/phone/InCallScreen$CallerData;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8803
    :cond_3
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    #getter for: Lcom/android/phone/InCallScreen$CallerData;->mbHasPhoto:Z
    invoke-static {v5}, Lcom/android/phone/InCallScreen$CallerData;->access$4800(Lcom/android/phone/InCallScreen$CallerData;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 8804
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/android/phone/InCallScreen;->getContactPhoto(J)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 8805
    .local v4, photoData:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v5, v4}, Lcom/android/phone/InCallScreen$CallerData;->setPhoto(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 8808
    .end local v4           #photoData:Landroid/graphics/drawable/Drawable;
    :cond_4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 8810
    .local v3, number:Ljava/lang/String;
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 8813
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200a7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 8816
    .restart local v4       #photoData:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v5, v4}, Lcom/android/phone/InCallScreen$CallerData;->setPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 8818
    sget-boolean v5, Lcom/android/phone/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v5, :cond_5

    .line 8819
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->overwriteCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/android/phone/InCallScreen$CallerData;->mCallerName:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen$CallerData;->access$4902(Lcom/android/phone/InCallScreen$CallerData;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8848
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #photoData:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v2

    .line 8849
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "InCallScreen"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 8820
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #number:Ljava/lang/String;
    .restart local v4       #photoData:Landroid/graphics/drawable/Drawable;
    :cond_5
    :try_start_1
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v8, :cond_7

    .line 8822
    sget-boolean v5, Lcom/android/phone/HtcFeatureList;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v5, :cond_6

    .line 8823
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    const v6, 0x10402db

    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/android/phone/InCallScreen$CallerData;->mCallerName:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen$CallerData;->access$4902(Lcom/android/phone/InCallScreen$CallerData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 8828
    :cond_6
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    const v6, 0x7f0e016d

    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/android/phone/InCallScreen$CallerData;->mNumber:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen$CallerData;->access$5002(Lcom/android/phone/InCallScreen$CallerData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 8834
    :cond_7
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    #setter for: Lcom/android/phone/InCallScreen$CallerData;->mNumber:Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/android/phone/InCallScreen$CallerData;->access$5002(Lcom/android/phone/InCallScreen$CallerData;Ljava/lang/String;)Ljava/lang/String;

    .line 8835
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    const v6, 0x10402db

    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/android/phone/InCallScreen$CallerData;->mCallerName:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen$CallerData;->access$4902(Lcom/android/phone/InCallScreen$CallerData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 8839
    .end local v4           #photoData:Landroid/graphics/drawable/Drawable;
    :cond_8
    sget-boolean v5, Lcom/android/phone/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v5, :cond_9

    .line 8840
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->overwriteCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8841
    .local v1, displayName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 8842
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    #setter for: Lcom/android/phone/InCallScreen$CallerData;->mCallerName:Ljava/lang/String;
    invoke-static {v5, v1}, Lcom/android/phone/InCallScreen$CallerData;->access$4902(Lcom/android/phone/InCallScreen$CallerData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 8844
    .end local v1           #displayName:Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 8845
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen$CallerData;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/android/phone/InCallScreen;->getNBPCDNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/android/phone/InCallScreen$CallerData;->mNumber:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen$CallerData;->access$5002(Lcom/android/phone/InCallScreen$CallerData;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private showCallLostDialog()V
    .locals 3

    .prologue
    const v2, 0x7f0e0246

    const/4 v1, 0x1

    .line 5692
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "showCallLostDialog()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5695
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_2

    .line 5696
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "showCallLostDialog: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5725
    :cond_1
    :goto_0
    return-void

    .line 5701
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_3

    .line 5702
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "showCallLostDialog: There is a mCallLostDialog already."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5706
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5707
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v0

    if-ne v0, v1, :cond_5

    .line 5709
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5711
    :cond_5
    const v0, 0x7f0e0249

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5716
    :cond_6
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showCallguardMessage(Z)V
    .locals 4
    .parameter "bShow"

    .prologue
    const v3, 0x7f0e0172

    const/4 v2, 0x1

    .line 9324
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRoamingWarning:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->EnableCallGuard:Z

    if-nez v0, :cond_1

    .line 9370
    :cond_0
    :goto_0
    return-void

    .line 9328
    :cond_1
    if-ne p1, v2, :cond_5

    .line 9330
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRoamingWarning:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 9332
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mRoamingWarning:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9339
    :cond_2
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->EnableCallGuard2:Z

    if-ne v0, v2, :cond_3

    .line 9340
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->htcGetCdmaEriCallGuard()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 9343
    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setWarningMsgForRoaming(I)V

    .line 9355
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9357
    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setWarningMsgForRoaming(I)V

    .line 9360
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRoamingWarning:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 9346
    :pswitch_0
    const v0, 0x7f0e0177

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setWarningMsgForRoaming(I)V

    goto :goto_1

    .line 9349
    :pswitch_1
    const v0, 0x7f0e0178

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setWarningMsgForRoaming(I)V

    goto :goto_1

    .line 9364
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRoamingWarning:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 9366
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mRoamingWarning:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 9368
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRoamingWarning:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 9340
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showDialPad(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 9039
    if-eqz p1, :cond_0

    const-string v1, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9041
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v1, :cond_0

    .line 9042
    const-string v1, "com.android.phone.ShowDialpad"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 9043
    .local v0, showDialpad:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- internalResolveIntent: SHOW_DIALPAD_EXTRA value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 9044
    if-eqz v0, :cond_1

    .line 9045
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->showDialPad()V

    .line 9051
    .end local v0           #showDialpad:Z
    :cond_0
    :goto_0
    return-void

    .line 9047
    .restart local v0       #showDialpad:Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->hideDialPad()V

    goto :goto_0
.end method

.method private showEndCallHandlerDialogIfNeeded(JJLjava/lang/String;I)Z
    .locals 8
    .parameter "userId"
    .parameter "recordNumber"
    .parameter "number"
    .parameter "presentType"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6837
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v4, v5, :cond_1

    .line 6929
    :cond_0
    :goto_0
    return v2

    .line 6841
    :cond_1
    sget-boolean v4, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v4, :cond_2

    .line 6842
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/phone/CityIdInfo;->addContactsOverrided(Landroid/content/ContentResolver;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6848
    :cond_2
    cmp-long v4, p1, v6

    if-gtz v4, :cond_0

    cmp-long v4, p3, v6

    if-gtz v4, :cond_0

    .line 6852
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6857
    invoke-static {p5}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6859
    const v4, 0x10402db

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6866
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6870
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq p6, v4, :cond_0

    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-eq p6, v4, :cond_0

    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq p6, v4, :cond_0

    .line 6876
    const-string v4, "Private number"

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Unavailable"

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Restricted"

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6881
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "end call"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6882
    :cond_3
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_4

    const-string v4, "end call"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "record number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6883
    :cond_4
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_5

    const-string v4, "end call"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6885
    :cond_5
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 6888
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v4, "pref_key_save_contact"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6898
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 6899
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "end call"

    const-string v4, "show no simutanious end call"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6903
    :cond_6
    invoke-direct {p0, p1, p2, p5}, Lcom/android/phone/InCallScreen;->getEndCallHandlDialog(JLjava/lang/String;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 6905
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v4, :cond_9

    .line 6906
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_7

    const-string v2, "end call"

    const-string v4, "show end call"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6912
    :cond_7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->checkChinaBuild()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v2, :cond_8

    .line 6913
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->hide()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6925
    :goto_1
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->mDisplayingEndCallHandler:Z

    move v2, v3

    .line 6926
    goto/16 :goto_0

    .line 6915
    :cond_8
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 6916
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x322

    sget v5, Lcom/android/phone/InCallScreen;->TIME_OUT_SAVE_TO_CONTACT_DIALOG:I

    int-to-long v5, v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 6919
    :catch_0
    move-exception v0

    .line 6920
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "InCallScreen"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 6928
    .end local v0           #e:Ljava/lang/Exception;
    :cond_9
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "end call"

    const-string v4, "show no end call"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private showGenericErrorDialog(IZ)V
    .locals 5
    .parameter "resid"
    .parameter "isStartupError"

    .prologue
    .line 5642
    iget-boolean v3, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-eqz v3, :cond_1

    .line 5644
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 5645
    .local v2, msg:Ljava/lang/CharSequence;
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showGenericErrorDialog(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5650
    :cond_0
    if-eqz p2, :cond_2

    .line 5651
    new-instance v1, Lcom/android/phone/InCallScreen$14;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$14;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 5655
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/phone/InCallScreen$15;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$15;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 5673
    .local v0, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    :goto_0
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e021f

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e025b

    invoke-virtual {v3, v4, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 5684
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 5687
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 5689
    .end local v0           #cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    .end local v1           #clickListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v2           #msg:Ljava/lang/CharSequence;
    :cond_1
    return-void

    .line 5660
    .restart local v2       #msg:Ljava/lang/CharSequence;
    :cond_2
    new-instance v1, Lcom/android/phone/InCallScreen$16;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$16;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 5664
    .restart local v1       #clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/phone/InCallScreen$17;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$17;-><init>(Lcom/android/phone/InCallScreen;)V

    .restart local v0       #cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    goto :goto_0
.end method

.method private showPausePromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 6
    .parameter "c"
    .parameter "postDialStrAfterPause"

    .prologue
    .line 3903
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3904
    .local v2, r:Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3905
    .local v0, buf:Ljava/lang/StringBuilder;
    const v3, 0x7f0e0261

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3906
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3908
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v3, :cond_1

    .line 3909
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3910
    :cond_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 3911
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3914
    :cond_1
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3917
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 3919
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x78

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 3920
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3921
    return-void
.end method

.method private showRetryHBPCDDialog()V
    .locals 4

    .prologue
    .line 9403
    invoke-static {}, Lcom/android/phone/HtcNBPCDUtil;->getHBPCDString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->getRetryHBPCDDialog(Ljava/lang/String;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 9404
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/HtcNBPCDUtil;->setHBPCDRetryUI(Z)V

    .line 9405
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 9407
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd2

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 9409
    return-void
.end method

.method private showTurnOnRadioDialog()V
    .locals 5

    .prologue
    .line 7945
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e0016

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e025b

    new-instance v4, Lcom/android/phone/InCallScreen$28;

    invoke-direct {v4, p0}, Lcom/android/phone/InCallScreen$28;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e024d

    new-instance v4, Lcom/android/phone/InCallScreen$27;

    invoke-direct {v4, p0}, Lcom/android/phone/InCallScreen$27;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/InCallScreen$26;

    invoke-direct {v3, p0}, Lcom/android/phone/InCallScreen$26;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mTurnOnRadioDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 7973
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 7975
    .local v0, isRestrictedMode:Z
    if-eqz v0, :cond_0

    const/16 v1, 0x7d9

    .line 7978
    .local v1, type:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mTurnOnRadioDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setType(I)V

    .line 7979
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mTurnOnRadioDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 7981
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mTurnOnRadioDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 7982
    return-void

    .line 7975
    .end local v1           #type:I
    :cond_0
    const/16 v1, 0x7d8

    goto :goto_0
.end method

.method private showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 5
    .parameter "c"
    .parameter "postDialStr"

    .prologue
    .line 3789
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3790
    .local v1, r:Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3791
    .local v0, buf:Ljava/lang/StringBuilder;
    const v2, 0x7f0e0260

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3792
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3795
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_1

    .line 3796
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3797
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 3798
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3802
    :cond_1
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0262

    new-instance v4, Lcom/android/phone/InCallScreen$8;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/InCallScreen$8;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/InCallScreen$7;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/InCallScreen$7;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/phone/InCallScreen$6;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/InCallScreen$6;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/InCallScreen$5;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/InCallScreen$5;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3848
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 3850
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 3851
    return-void
.end method

.method private showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 0
    .parameter "c"
    .parameter "postDialStr"

    .prologue
    .line 3894
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    .line 3896
    return-void
.end method

.method private showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 3958
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->createWildPromptView()Landroid/view/View;

    move-result-object v0

    .line 3960
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    .line 3961
    const-string v1, "- DISMISSING mWildPromptDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3962
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 3963
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3967
    :cond_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0262

    new-instance v3, Lcom/android/phone/InCallScreen$10;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/InCallScreen$10;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/InCallScreen$9;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InCallScreen$9;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3993
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 3995
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 3997
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 3998
    return-void
.end method

.method private stopTimer()V
    .locals 1

    .prologue
    .line 2365
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->stopTimer()V

    .line 2366
    :cond_0
    return-void
.end method

.method private syncWithPhoneState()Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 1

    .prologue
    .line 4232
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "syncWithPhoneState()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4233
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallState()V

    .line 4234
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dumpBluetoothState()V

    .line 4240
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4242
    :cond_1
    const-string v0, "syncWithPhoneState: it\'s ok to be here; update the screen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4243
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 4244
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 4253
    :goto_0
    return-object v0

    .line 4247
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTurnOnRadioDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_3

    .line 4248
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 4252
    :cond_3
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "syncWithPhoneState: phone is idle; we shouldn\'t be here!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4253
    :cond_4
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0
.end method

.method private unregisterForPhoneStates()V
    .locals 2

    .prologue
    .line 2164
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 2165
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 2166
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 2168
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 2170
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 2171
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 2172
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPostDialCharacter(Landroid/os/Handler;)V

    .line 2173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    .line 2174
    return-void
.end method

.method private updateBottomControlLayout()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 7282
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/phone/widget/ButtonGroup;->setVisibility(I)V

    .line 7283
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/phone/widget/ButtonGroup;->setVisibility(I)V

    .line 7284
    const/4 v1, 0x0

    .line 7286
    .local v1, is3dLockScreenDisplayed:Z
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 7288
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_0
    move v0, v5

    .line 7291
    .local v0, bConnection:Z
    :goto_0
    const-string v3, "false"

    .line 7293
    .local v3, mLockScreenStatus:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getSkypeCallState()I

    move-result v6

    if-ne v6, v5, :cond_7

    move v2, v5

    .line 7295
    .local v2, isSkypeCall:Z
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 7296
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gsm.lockscreen.mode.status"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7299
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier;->isNewRingingConnectionInKeyguardRestrictedInputMode()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    if-nez v0, :cond_8

    const-string v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v2, :cond_8

    .line 7302
    :cond_3
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v6}, Lcom/android/phone/widget/HtcLockScreenControl;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isPortrait()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 7305
    const-string v6, "InCallScreen"

    const-string v7, "updateBottomControlLayout p1 "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7306
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v6}, Lcom/android/phone/widget/HtcLockScreenControl;->resetDrawerPosition()V

    .line 7307
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v6, v4}, Lcom/android/phone/widget/HtcLockScreenControl;->setVisibility(I)V

    .line 7308
    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->setRequestedOrientation(I)V

    .line 7310
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 7313
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gsm.lockscreen.mode.status"

    const-string v6, "true"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7314
    const-string v4, "InCallScreen"

    const-string v5, ">>> set lockscreen mode :true "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7317
    :cond_4
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v4, :cond_5

    .line 7318
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {v4}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->loadAndShowArrowAnimation()V

    .line 7336
    .end local v0           #bConnection:Z
    .end local v2           #isSkypeCall:Z
    .end local v3           #mLockScreenStatus:Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->updateBottomTaskBar(Z)V

    .line 7337
    return-void

    :cond_6
    move v0, v4

    .line 7288
    goto/16 :goto_0

    .restart local v0       #bConnection:Z
    .restart local v3       #mLockScreenStatus:Ljava/lang/String;
    :cond_7
    move v2, v4

    .line 7293
    goto :goto_1

    .line 7324
    .restart local v2       #isSkypeCall:Z
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->disableLockScreenControlIncomingCall()V

    .line 7326
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateBottomForIncoming()V

    goto :goto_2

    .line 7330
    .end local v0           #bConnection:Z
    .end local v2           #isSkypeCall:Z
    .end local v3           #mLockScreenStatus:Ljava/lang/String;
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->disableLockScreenControlIncomingCall()V

    .line 7332
    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->updateBottomTaskBar(Z)V

    goto :goto_2
.end method

.method private updateBottomForIncoming()V
    .locals 2

    .prologue
    .line 7349
    const-string v0, "InCallScreen"

    const-string v1, "updateBottomForIncoming"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7351
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->INCOMING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_0

    .line 7352
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/ButtonGroup;->setVisibility(I)V

    .line 7360
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v0}, Lcom/android/phone/widget/ButtonGroup;->requestLayout()V

    .line 7361
    return-void

    .line 7354
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/ButtonGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateBottomTaskBar(Z)V
    .locals 21
    .parameter "is3dLockScreenDisplayed"

    .prologue
    .line 7365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/phone/InCallScreen$InCallScreenMode;->INCOMING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1

    const/4 v14, 0x1

    .line 7367
    .local v14, isIncoming:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isRinging()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 7368
    if-nez p1, :cond_2

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v17

    if-eqz v17, :cond_0

    if-nez v14, :cond_2

    .line 7370
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lcom/android/phone/widget/ButtonGroup;->setVisibility(I)V

    .line 7373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/widget/ButtonGroup;->requestLayout()V

    .line 7479
    :goto_1
    return-void

    .line 7365
    .end local v14           #isIncoming:Z
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 7379
    .restart local v14       #isIncoming:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getInCallPhoneType()I

    move-result v13

    .line 7382
    .local v13, inCallPhoneType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/phone/widget/ButtonGroup;->setVisibility(I)V

    .line 7384
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 7387
    .local v15, res:Landroid/content/res/Resources;
    const v9, 0x7f0e0252

    .line 7388
    .local v9, centerTextId:I
    sget-boolean v17, Lcom/android/phone/InCallScreen;->SWAP_CMD_BAR_ICON:Z

    if-eqz v17, :cond_5

    const v6, 0x2020006

    .line 7391
    .local v6, btnId:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/phone/widget/ButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/phone/widget/ButtonGroup$ButtonTag;

    .line 7393
    .local v16, tag:Lcom/android/phone/widget/ButtonGroup$ButtonTag;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isDialing()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 7394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 7395
    .local v8, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    .line 7396
    .local v10, conn:Lcom/android/internal/telephony/Connection;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v10, v1}, Lcom/android/phone/InCallScreen;->getTagForConnection(Lcom/android/internal/telephony/Connection;Lcom/android/phone/widget/ButtonGroup$ButtonTag;)Lcom/android/phone/widget/ButtonGroup$ButtonTag;

    move-result-object v16

    .line 7446
    .end local v8           #call:Lcom/android/internal/telephony/Call;
    .end local v10           #conn:Lcom/android/internal/telephony/Connection;
    :goto_3
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isCarTypeUiMode()Z

    move-result v17

    if-eqz v17, :cond_3

    sget v17, Lcom/android/phone/PhoneApp;->sIsNaviShowable:I

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 7454
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    move-object/from16 v17, v0

    const v18, 0x2020001

    const v19, 0x7f080043

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/android/phone/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    move-result-object v5

    .line 7456
    .local v5, btn:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isAlive()Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 7457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->id:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->drawable:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->text:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/android/phone/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    .line 7462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/phone/widget/ButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 7463
    .local v7, btnViewId:Landroid/view/View;
    if-eqz v7, :cond_4

    .line 7465
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/htc/cscore/util/CSUtil;->getLockScreenStatus(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 7466
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7478
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/widget/ButtonGroup;->requestLayout()V

    goto/16 :goto_1

    .line 7388
    .end local v5           #btn:Landroid/view/View;
    .end local v6           #btnId:I
    .end local v7           #btnViewId:Landroid/view/View;
    .end local v16           #tag:Lcom/android/phone/widget/ButtonGroup$ButtonTag;
    :cond_5
    const v6, 0x2020007

    goto/16 :goto_2

    .line 7397
    .restart local v6       #btnId:I
    .restart local v16       #tag:Lcom/android/phone/widget/ButtonGroup$ButtonTag;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isMultiple()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 7400
    sget-boolean v17, Lcom/android/phone/PhoneUtils;->SUPPORT_MERGE_CALL:Z

    if-eqz v17, :cond_7

    .line 7403
    const v17, 0x7f080044

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->id:I

    .line 7404
    const v17, 0x7f0e0482

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->drawable:I

    .line 7405
    const v17, 0x7f0e0254

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->text:I

    goto/16 :goto_3

    .line 7408
    :cond_7
    const v17, 0x7f08003f

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->id:I

    .line 7409
    const v17, 0x7f0e047b

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->drawable:I

    .line 7410
    const v17, 0x7f0e01ba

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->text:I

    goto/16 :goto_3

    .line 7412
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isAlive()Z

    move-result v17

    if-nez v17, :cond_9

    .line 7413
    const v9, 0x7f0e0398

    .line 7414
    const v17, 0x7f080047

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->id:I

    .line 7415
    const v17, 0x7f0e0481

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->drawable:I

    .line 7416
    const v17, 0x7f0e01ba

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->text:I

    goto/16 :goto_3

    .line 7419
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isConference()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 7423
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isEspresso()Z

    move-result v17

    if-nez v17, :cond_a

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v13, v0, :cond_b

    .line 7427
    :cond_a
    const v17, 0x7f08003f

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->id:I

    .line 7428
    const v17, 0x7f0e047b

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->drawable:I

    .line 7429
    const v17, 0x7f0e01ba

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->text:I

    goto/16 :goto_3

    .line 7431
    :cond_b
    const v17, 0x7f080042

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->id:I

    .line 7432
    const v17, 0x7f0e0480

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->drawable:I

    .line 7433
    const v17, 0x7f0e0255

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->text:I

    goto/16 :goto_3

    .line 7436
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    .line 7437
    .local v12, fgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 7438
    .local v4, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    .line 7440
    .restart local v10       #conn:Lcom/android/internal/telephony/Connection;
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v10, v1}, Lcom/android/phone/InCallScreen;->getTagForConnection(Lcom/android/internal/telephony/Connection;Lcom/android/phone/widget/ButtonGroup$ButtonTag;)Lcom/android/phone/widget/ButtonGroup$ButtonTag;

    move-result-object v16

    goto/16 :goto_3

    .line 7438
    .end local v10           #conn:Lcom/android/internal/telephony/Connection;
    :cond_d
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    goto :goto_5

    .line 7468
    .end local v4           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v12           #fgCall:Lcom/android/internal/telephony/Call;
    .restart local v5       #btn:Landroid/view/View;
    .restart local v7       #btnViewId:Landroid/view/View;
    :cond_e
    const/16 v17, 0x1

    :try_start_1
    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->setEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 7470
    :catch_0
    move-exception v11

    .line 7471
    .local v11, e:Ljava/lang/Exception;
    const-string v17, "InCallScreen"

    const-string v18, "Can\'t get CS LockScreen status"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method private updateCallCard(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 9288
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v4}, Lcom/android/phone/CallCard;->updateDisplayForNoPerson()V

    .line 9291
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen$CallerData;->destroy()V

    .line 9292
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v4, p1}, Lcom/android/phone/InCallScreen$CallerData;->initFromIntent(Landroid/content/Intent;)V

    .line 9293
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen$CallerData;->getId()Ljava/lang/String;

    move-result-object v0

    .line 9295
    .local v0, callerId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9296
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    const/4 v5, 0x0

    #setter for: Lcom/android/phone/InCallScreen$CallerData;->mbHasPhoto:Z
    invoke-static {v4, v5}, Lcom/android/phone/InCallScreen$CallerData;->access$4802(Lcom/android/phone/InCallScreen$CallerData;Z)Z

    .line 9298
    :cond_0
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    #getter for: Lcom/android/phone/InCallScreen$CallerData;->mbHasPhoto:Z
    invoke-static {v4}, Lcom/android/phone/InCallScreen$CallerData;->access$4800(Lcom/android/phone/InCallScreen$CallerData;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9299
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/phone/InCallScreen;->getContactPhoto(J)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 9300
    .local v3, photoData:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v4, v3}, Lcom/android/phone/InCallScreen$CallerData;->setPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 9304
    .end local v3           #photoData:Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 9309
    .local v2, phonenumber:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    #getter for: Lcom/android/phone/InCallScreen$CallerData;->mCallerName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/InCallScreen$CallerData;->access$4900(Lcom/android/phone/InCallScreen$CallerData;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    .line 9317
    :cond_2
    return-void

    .line 9305
    .end local v2           #phonenumber:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 9306
    .local v1, ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    const/4 v2, 0x0

    .restart local v2       #phonenumber:Ljava/lang/String;
    goto :goto_0
.end method

.method private updateCallStatus()Lcom/android/phone/InCallScreen$InCallScreenMode;
    .locals 13

    .prologue
    .line 7561
    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 7562
    .local v7, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 7563
    .local v3, fgCall:Lcom/android/internal/telephony/Call;
    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 7566
    .local v1, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 7568
    .local v8, ringingState:Lcom/android/internal/telephony/Call$State;
    sget-boolean v10, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v10, :cond_0

    const-string v10, "InCallScreen"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ringincCallState: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7570
    :cond_0
    sget-object v10, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v10, :cond_1

    .line 7571
    sget-object v10, Lcom/android/phone/InCallScreen$InCallScreenMode;->INCOMING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v10, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 7572
    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 7646
    :goto_0
    return-object v10

    .line 7574
    :cond_1
    sget-object v10, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v10, :cond_2

    .line 7575
    sget-object v10, Lcom/android/phone/InCallScreen$InCallScreenMode;->WAITING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v10, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 7576
    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    goto :goto_0

    .line 7579
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 7580
    .local v4, fgState:Lcom/android/internal/telephony/Call$State;
    sget-boolean v10, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v10, :cond_3

    const-string v10, "InCallScreen"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fgCallState: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7582
    :cond_3
    sget-object v10, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v10, :cond_4

    .line 7583
    sget-object v10, Lcom/android/phone/InCallScreen$InCallScreenMode;->DIALING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v10, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 7584
    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    goto :goto_0

    .line 7586
    :cond_4
    sget-object v10, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v10, :cond_5

    .line 7587
    sget-object v10, Lcom/android/phone/InCallScreen$InCallScreenMode;->ALERTING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v10, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 7588
    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    goto :goto_0

    .line 7591
    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 7592
    .local v2, bgState:Lcom/android/internal/telephony/Call$State;
    sget-boolean v10, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v10, :cond_6

    const-string v10, "InCallScreen"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bgCallState: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7595
    :cond_6
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v10

    if-nez v10, :cond_9

    .line 7596
    sget-object v10, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v10, :cond_7

    sget-object v10, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v10, :cond_8

    .line 7598
    :cond_7
    sget-object v10, Lcom/android/phone/InCallScreen$InCallScreenMode;->DISCONNECTED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v10, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 7603
    :goto_1
    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    goto :goto_0

    .line 7600
    :cond_8
    sget-object v10, Lcom/android/phone/InCallScreen$InCallScreenMode;->IDLE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v10, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    goto :goto_1

    .line 7608
    :cond_9
    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getInCallPhoneType()I

    move-result v6

    .line 7609
    .local v6, phoneType:I
    const/4 v10, 0x2

    if-ne v6, v10, :cond_a

    .line 7610
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 7611
    .local v0, app:Lcom/android/phone/PhoneApp;
    if-eqz v0, :cond_a

    .line 7612
    const/4 v9, 0x0

    .line 7613
    .local v9, screenModeUpdate:Z
    sget-object v10, Lcom/android/phone/InCallScreen$35;->$SwitchMap$com$android$phone$CdmaPhoneCallState$PhoneCallState:[I

    iget-object v11, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v11}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 7628
    :goto_2
    if-eqz v9, :cond_a

    .line 7629
    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    goto/16 :goto_0

    .line 7615
    :pswitch_0
    sget-object v10, Lcom/android/phone/InCallScreen$InCallScreenMode;->MULTIPLE_ALIVE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v10, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 7616
    const/4 v9, 0x1

    .line 7617
    goto :goto_2

    .line 7619
    :pswitch_1
    sget-object v10, Lcom/android/phone/InCallScreen$InCallScreenMode;->CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v10, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 7620
    const/4 v9, 0x1

    .line 7621
    goto :goto_2

    .line 7624
    :pswitch_2
    sget-object v10, Lcom/android/phone/InCallScreen$InCallScreenMode;->SINGLE_ALIVE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v10, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 7625
    const/4 v9, 0x1

    goto :goto_2

    .line 7634
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v9           #screenModeUpdate:Z
    :cond_a
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 7635
    sget-object v10, Lcom/android/phone/InCallScreen$InCallScreenMode;->MULTIPLE_ALIVE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v10, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 7636
    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    goto/16 :goto_0

    .line 7639
    :cond_b
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v10

    if-eqz v10, :cond_c

    move-object v5, v3

    .line 7641
    .local v5, liveCall:Lcom/android/internal/telephony/Call;
    :goto_3
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 7642
    sget-object v10, Lcom/android/phone/InCallScreen$InCallScreenMode;->CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v10, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 7643
    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    goto/16 :goto_0

    .end local v5           #liveCall:Lcom/android/internal/telephony/Call;
    :cond_c
    move-object v5, v1

    .line 7639
    goto :goto_3

    .line 7645
    .restart local v5       #liveCall:Lcom/android/internal/telephony/Call;
    :cond_d
    sget-object v10, Lcom/android/phone/InCallScreen$InCallScreenMode;->SINGLE_ALIVE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v10, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 7646
    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    goto/16 :goto_0

    .line 7613
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateCdmaOperatorInfo(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 10026
    new-instance v2, Lcom/android/internal/telephony/gsm/OperatorInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/OperatorInfo;-><init>()V

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    .line 10027
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    const-string v3, "networkState"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    iput-boolean v0, v2, Lcom/android/internal/telephony/gsm/OperatorInfo;->inService:Z

    .line 10030
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    const-string v2, "showSpn"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->showSpn:Z

    .line 10031
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    const-string v2, "showPlmn"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    .line 10032
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    const-string v1, "spn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    .line 10033
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    const-string v1, "plmn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    .line 10034
    return-void

    :cond_0
    move v0, v1

    .line 10027
    goto :goto_0
.end method

.method private final updateCdmaRoamingIcon()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 9514
    const-string v3, "InCallScreen"

    const-string v4, "updateCdmaRoamingIcon()..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9515
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 9516
    .local v2, nPhone:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCdmaEriIconIndex()I

    move-result v0

    .line 9517
    .local v0, iconIndex:I
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCdmaEriIconMode()I

    move-result v1

    .line 9519
    .local v1, iconMode:I
    if-ne v0, v5, :cond_0

    .line 9520
    const-string v3, "InCallScreen"

    const-string v4, "getCdmaEriIconIndex returned null, skipping ERI icon update"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9544
    :goto_0
    return-void

    .line 9524
    :cond_0
    if-ne v1, v5, :cond_1

    .line 9525
    const-string v3, "InCallScreen"

    const-string v4, "getCdmeEriIconMode returned null, skipping ERI icon update"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9529
    :cond_1
    if-ne v0, v7, :cond_2

    .line 9530
    const-string v3, "InCallScreen"

    const-string v4, "Cdma ROAMING_INDICATOR_OFF, removing ERI icon"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9531
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcBlinkingTextView;->setTextBlinkable(Z)V

    goto :goto_0

    .line 9535
    :cond_2
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 9537
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcBlinkingTextView;->setTextBlinkable(Z)V

    goto :goto_0

    .line 9540
    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcBlinkingTextView;->setTextBlinkable(Z)V

    goto :goto_0

    .line 9535
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateConfig()V
    .locals 3

    .prologue
    .line 8746
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 8748
    .local v0, configuration:Landroid/content/res/Configuration;
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isHardKeyboardHidden()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isLandscape()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8751
    const/4 v1, 0x2

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 8752
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 8754
    :cond_0
    return-void
.end method

.method private updateDialingScreen()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 8760
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 8763
    .local v1, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v2}, Lcom/android/phone/CallCard;->updateDialingCallCard()V

    .line 8766
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v2, v6}, Lcom/android/phone/widget/ButtonGroup;->setVisibility(I)V

    .line 8767
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/phone/widget/ButtonGroup;->setVisibility(I)V

    .line 8769
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->disableLockScreenControlIncomingCall()V

    .line 8772
    sget-boolean v2, Lcom/android/phone/util/BuildUtils;->SENSE_LANDSCAPE:Z

    if-eqz v2, :cond_0

    .line 8785
    :goto_0
    return-void

    .line 8778
    :cond_0
    sget-boolean v2, Lcom/android/phone/InCallScreen;->SWAP_CMD_BAR_ICON:Z

    if-eqz v2, :cond_1

    const v0, 0x2020006

    .line 8781
    .local v0, btnId:I
    :goto_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    const v3, 0x7f080047

    const v4, 0x7f0e0481

    const v5, 0x7f0e01ba

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/phone/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    .line 8782
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    const v3, 0x2020001

    const v4, 0x7f080043

    const v5, 0x7f0e0252

    invoke-virtual {v2, v3, v4, v6, v5}, Lcom/android/phone/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 8784
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v2}, Lcom/android/phone/widget/ButtonGroup;->requestLayout()V

    goto :goto_0

    .line 8778
    .end local v0           #btnId:I
    :cond_1
    const v0, 0x2020007

    goto :goto_1
.end method

.method private updateFakeBottomTaskBar()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 7484
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/phone/widget/ButtonGroup;->setVisibility(I)V

    .line 7485
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v4, v7}, Lcom/android/phone/widget/ButtonGroup;->setVisibility(I)V

    .line 7488
    sget-boolean v4, Lcom/android/phone/util/BuildUtils;->SENSE_LANDSCAPE:Z

    if-eqz v4, :cond_0

    .line 7516
    :goto_0
    return-void

    .line 7494
    :cond_0
    const v2, 0x7f0e0252

    .line 7495
    .local v2, centerTextId:I
    sget-boolean v4, Lcom/android/phone/InCallScreen;->SWAP_CMD_BAR_ICON:Z

    if-eqz v4, :cond_2

    const v1, 0x2020006

    .line 7497
    .local v1, btnId:I
    :goto_1
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v4, v1}, Lcom/android/phone/widget/ButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/widget/ButtonGroup$ButtonTag;

    .line 7498
    .local v3, tag:Lcom/android/phone/widget/ButtonGroup$ButtonTag;
    const v4, 0x7f080047

    iput v4, v3, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->id:I

    .line 7499
    const v4, 0x7f0e0481

    iput v4, v3, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->drawable:I

    .line 7500
    const v4, 0x7f0e01ba

    iput v4, v3, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->text:I

    .line 7502
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isCarTypeUiMode()Z

    move-result v4

    if-eqz v4, :cond_1

    sget v4, Lcom/android/phone/PhoneApp;->sIsNaviShowable:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 7509
    :cond_1
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    const v5, 0x2020001

    const v6, 0x7f080043

    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/android/phone/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    move-result-object v0

    .line 7510
    .local v0, btn:Landroid/view/View;
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isAlive()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 7512
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    iget v5, v3, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->id:I

    iget v6, v3, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->drawable:I

    invoke-virtual {v4, v1, v5, v6, v7}, Lcom/android/phone/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    .line 7515
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v4}, Lcom/android/phone/widget/ButtonGroup;->requestLayout()V

    goto :goto_0

    .line 7495
    .end local v0           #btn:Landroid/view/View;
    .end local v1           #btnId:I
    .end local v3           #tag:Lcom/android/phone/widget/ButtonGroup$ButtonTag;
    :cond_2
    const v1, 0x2020007

    goto :goto_1
.end method

.method private updateMenuButtonHint()V
    .locals 1

    .prologue
    .line 5524
    const-string v0, "updateMenuButtonHint()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5530
    return-void
.end method

.method private updateOperatorName()V
    .locals 4

    .prologue
    const/16 v3, 0x1f4

    .line 7181
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorNameShadow:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 7186
    :cond_0
    const v2, 0x7f080141

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcBlinkingTextView;

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    .line 7188
    const v2, 0x7f080140

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorNameShadow:Landroid/widget/TextView;

    .line 7190
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v0

    .line 7191
    .local v0, op:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcBlinkingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7192
    .local v1, uiOpName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 7194
    :cond_2
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcBlinkingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 7196
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v2, v3, v3}, Lcom/htc/widget/HtcBlinkingTextView;->setTextBlinkOnOffTime(II)V

    .line 7198
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorNameShadow:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7200
    :cond_3
    return-void
.end method

.method private updateProviderOverlay()V
    .locals 11

    .prologue
    const/16 v10, 0x79

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 5495
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateProviderOverlay: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5496
    const v5, 0x7f080103

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 5498
    .local v2, overlay:Landroid/view/ViewGroup;
    iget-boolean v5, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    if-eqz v5, :cond_0

    .line 5499
    const v5, 0x7f0e0401

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 5500
    .local v3, template:Ljava/lang/CharSequence;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    aput-object v6, v5, v9

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mProviderAddress:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5503
    .local v4, text:Ljava/lang/CharSequence;
    const v5, 0x7f080104

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5504
    .local v0, message:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 5505
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5507
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5511
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 5512
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v5, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 5513
    .local v1, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5517
    .end local v0           #message:Landroid/widget/TextView;
    .end local v1           #msg:Landroid/os/Message;
    .end local v3           #template:Ljava/lang/CharSequence;
    .end local v4           #text:Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 5515
    :cond_0
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private viewAllPeople()V
    .locals 2

    .prologue
    .line 9028
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9029
    .local v0, viewAll:Landroid/content/Intent;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 9030
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 9031
    return-void
.end method

.method private viewContact()V
    .locals 3

    .prologue
    .line 6650
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 6651
    .local v1, currentCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6652
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 6656
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->getViewOrInsertForConnection(Lcom/android/internal/telephony/Connection;)Landroid/content/Intent;

    move-result-object v0

    .line 6659
    .local v0, actionIntent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 6660
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 6663
    :cond_1
    return-void
.end method

.method private viewContactSp()V
    .locals 5

    .prologue
    .line 6667
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 6668
    .local v1, currentCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6669
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 6671
    :cond_0
    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaCall;

    .end local v1           #currentCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcGetActiveConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 6673
    .local v0, c:Lcom/android/internal/telephony/Connection;
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-ne v2, v3, :cond_3

    .line 6675
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDialString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDialString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "*2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6678
    :cond_1
    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mIsFromEmergencyDialer:Z

    if-nez v2, :cond_2

    .line 6681
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e0146

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e025b

    new-instance v4, Lcom/android/phone/InCallScreen$18;

    invoke-direct {v4, p0}, Lcom/android/phone/InCallScreen$18;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mEmergencydialog:Lcom/htc/widget/HtcAlertDialog;

    .line 6699
    :cond_2
    :goto_0
    return-void

    .line 6697
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->viewContact()V

    goto :goto_0
.end method


# virtual methods
.method public allowOthersToRing()Z
    .locals 3

    .prologue
    const/16 v2, 0x70

    const/4 v0, 0x1

    .line 10040
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v1, :cond_0

    .line 10052
    :goto_0
    return v0

    .line 10045
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10047
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 10052
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method applyBackgroundTheme()V
    .locals 4

    .prologue
    .line 1313
    const-string v1, "common_glance_bkg"

    const-string v2, "drawable"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/phone/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1314
    .local v0, id:I
    if-eqz v0, :cond_0

    .line 1315
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1316
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1317
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mBgRemoved:Z

    .line 1320
    :cond_0
    return-void
.end method

.method public changeIncomingCallScreen()V
    .locals 2

    .prologue
    .line 9834
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 9836
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/HtcLockScreenControl;->setVisibility(I)V

    .line 9837
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v0, :cond_0

    .line 9838
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {v0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->hideAndReleaseArrowAnimation()V

    .line 9839
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->setNewRingingConnectionInKeyguardRestrictedInputMode(Z)V

    .line 9840
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateBottomControlLayout()V

    .line 9841
    return-void
.end method

.method public checkChinaBuild()Z
    .locals 2

    .prologue
    .line 9845
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 9848
    :cond_0
    const/4 v0, 0x1

    .line 9852
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method connectBluetoothAudio()V
    .locals 2

    .prologue
    .line 6555
    const-string v0, "connectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6556
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_0

    .line 6557
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOn()V

    .line 6567
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    .line 6568
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionRequestTime:J

    .line 6569
    return-void
.end method

.method disconnectBluetoothAudio()V
    .locals 1

    .prologue
    .line 6572
    const-string v0, "disconnectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6573
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_0

    .line 6574
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    .line 6576
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    .line 6577
    return-void
.end method

.method dismissMenu(Z)V
    .locals 4
    .parameter "dismissImmediate"

    .prologue
    const/16 v3, 0x6f

    .line 6362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissMenu(immediate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6364
    if-eqz p1, :cond_0

    .line 6365
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->closeOptionsMenu()V

    .line 6372
    :goto_0
    return-void

    .line 6367
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 6368
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 6369
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 2745
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2765
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 2750
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v0

    .line 2752
    .local v0, isDown:Z
    if-eqz v0, :cond_0

    .line 2755
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finishImmediatelyIfNecessary()V

    goto :goto_0

    .line 2745
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public endInCallScreenSession()V
    .locals 1

    .prologue
    .line 2099
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "endInCallScreenSession()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2100
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    .line 2101
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 2102
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2056
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "finish()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2059
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2060
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    .line 2089
    :cond_1
    :goto_0
    return-void

    .line 2066
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x320

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2068
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_3

    .line 2070
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x322

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2071
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 2072
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 2075
    :cond_3
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->EnableNBPCDSetting:Z

    if-eqz v0, :cond_4

    .line 2076
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissHBPCDDialogIfNeeded()V

    .line 2080
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_1

    .line 2086
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method finishForNaviModeChange()V
    .locals 0

    .prologue
    .line 9996
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 9997
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 9998
    return-void
.end method

.method public finishImmediatelyIfNecessary()V
    .locals 25

    .prologue
    .line 2769
    const/16 v17, 0x0

    .line 2770
    .local v17, total:I
    const/4 v10, 0x0

    .line 2772
    .local v10, finish:Z
    const/4 v8, 0x0

    .line 2773
    .local v8, connectionsList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v7, 0x0

    .line 2775
    .local v7, connection:Lcom/android/internal/telephony/Connection;
    const-string v20, "IncallScreen"

    const-string v21, "finishImmediatelyIfNecessary"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->checkChinaBuild()Z

    move-result v20

    if-nez v20, :cond_8

    .line 2781
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    sget-object v21, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    sget-object v21, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 2782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v11

    .line 2784
    .local v11, forgroundNum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v8

    .line 2786
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v11, :cond_0

    .line 2787
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Lcom/android/internal/telephony/Connection;

    move-object v7, v0

    .line 2786
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2790
    :cond_0
    add-int v17, v17, v11

    .line 2793
    .end local v11           #forgroundNum:I
    .end local v12           #i:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v20

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedBgCall()Z

    move-result v20

    if-nez v20, :cond_3

    .line 2794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    .line 2796
    .local v3, backgroundNum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections()Ljava/util/List;

    move-result-object v8

    .line 2798
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_1
    if-ge v12, v3, :cond_2

    .line 2799
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Lcom/android/internal/telephony/Connection;

    move-object v7, v0

    .line 2798
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2803
    :cond_2
    add-int v17, v17, v3

    .line 2806
    .end local v3           #backgroundNum:I
    .end local v12           #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v20

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getRingingCalls()Ljava/util/List;

    move-result-object v20

    sget-object v21, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-static/range {v20 .. v21}, Lcom/android/phone/PhoneUtils;->hasState(Ljava/util/List;Lcom/android/internal/telephony/Call$State;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 2809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getRingingCalls()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v16

    .line 2811
    .local v16, ringingNum:I
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_2
    move/from16 v0, v16

    if-ge v12, v0, :cond_4

    .line 2812
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Lcom/android/internal/telephony/Connection;

    move-object v7, v0

    .line 2811
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 2815
    :cond_4
    add-int v17, v17, v16

    .line 2820
    .end local v12           #i:I
    .end local v16           #ringingNum:I
    :cond_5
    const-string v20, "IncallScreen"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "finishImmediatelyIfNecessary total = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2824
    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-gt v0, v1, :cond_7

    if-eqz v7, :cond_7

    .line 2826
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 2828
    .local v5, call:Lcom/android/internal/telephony/Call;
    const/4 v13, 0x0

    .line 2829
    .local v13, number:Ljava/lang/String;
    const-wide/16 v18, -0x1

    .line 2830
    .local v18, userId:J
    const-wide/16 v14, -0x1

    .line 2831
    .local v14, recordNumber:J
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v20

    if-nez v20, :cond_7

    .line 2832
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v6

    .line 2834
    .local v6, ci:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v6, :cond_7

    .line 2835
    iget-wide v0, v6, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v18, v0

    .line 2837
    const-wide/16 v20, 0x0

    cmp-long v20, v18, v20

    if-gtz v20, :cond_6

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v20

    if-nez v20, :cond_7

    .line 2839
    :cond_6
    const/4 v10, 0x1

    .line 2841
    const-string v20, "IncallScreen"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "finishImmediatelyIfNecessary userId = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    .end local v5           #call:Lcom/android/internal/telephony/Call;
    .end local v6           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v13           #number:Ljava/lang/String;
    .end local v14           #recordNumber:J
    .end local v18           #userId:J
    :cond_7
    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-gt v0, v1, :cond_8

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_8

    .line 2849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x320

    const-wide/16 v22, 0xc8

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    move-object/from16 v20, v0

    const v21, 0x2020001

    const v22, 0x7f080043

    const/16 v23, 0x0

    const v24, 0x7f0e0398

    invoke-virtual/range {v20 .. v24}, Lcom/android/phone/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    move-result-object v4

    .line 2853
    .local v4, btn:Landroid/view/View;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2861
    .end local v4           #btn:Landroid/view/View;
    :cond_8
    :goto_3
    return-void

    .line 2856
    :catch_0
    move-exception v9

    .line 2857
    .local v9, e:Ljava/lang/Exception;
    const-string v20, "IncallScreen"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method getCallCard()Lcom/android/phone/CallCard;
    .locals 1

    .prologue
    .line 9589
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    return-object v0
.end method

.method getCallerCname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8421
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen$CallerData;->getCname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCallerData()Lcom/android/phone/InCallScreen$CallerData;
    .locals 1

    .prologue
    .line 8377
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    if-nez v0, :cond_0

    .line 8378
    new-instance v0, Lcom/android/phone/InCallScreen$CallerData;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$CallerData;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    .line 8381
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    return-object v0
.end method

.method getCallerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8390
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen$CallerData;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCallerNumberType()I
    .locals 1

    .prologue
    .line 8408
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen$CallerData;->getNumberType()I

    move-result v0

    return v0
.end method

.method getCallerPhotoData()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 8399
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen$CallerData;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getDialerDisplay()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 6143
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDTMFDisplay:Landroid/widget/EditText;

    return-object v0
.end method

.method getLockScreenArc()Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;
    .locals 1

    .prologue
    .line 7918
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    return-object v0
.end method

.method getMode()Lcom/android/phone/InCallScreen$InCallScreenMode;
    .locals 1

    .prologue
    .line 7651
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    return-object v0
.end method

.method getOperatorAlpha()Ljava/lang/String;
    .locals 3

    .prologue
    .line 7659
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 7660
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getOperatorInfo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/OperatorInfo;

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    .line 7663
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/OperatorInfo;->inService:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7667
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getImsRegistered()Z

    move-result v0

    .line 7668
    .local v0, imsRegistered:Z
    if-eqz v0, :cond_1

    .line 7669
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e01ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7673
    .end local v0           #imsRegistered:Z
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->calculateOperatorString(Lcom/android/internal/telephony/gsm/OperatorInfo;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPowerKeyFlag()Z
    .locals 1

    .prologue
    .line 8467
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mPowerKeyToRejectCall:Z

    return v0
.end method

.method public handleCallKey()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2586
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v6}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2591
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_0

    .line 2593
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x324

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2662
    :cond_0
    :goto_0
    return v4

    .line 2600
    :cond_1
    iget-boolean v6, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-eqz v6, :cond_0

    .line 2602
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 2603
    .local v2, hasRingingCall:Z
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->allIdle(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_3

    move v0, v4

    .line 2604
    .local v0, hasActiveCall:Z
    :goto_1
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->allIdle(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_4

    move v1, v4

    .line 2606
    .local v1, hasHoldingCall:Z
    :goto_2
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getInCallPhoneType()I

    move-result v3

    .line 2607
    .local v3, phoneType:I
    if-eqz v2, :cond_7

    .line 2618
    const-string v5, "InCallScreen"

    const-string v6, "handleCallKey: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 2624
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "handleCallKey: ringing (both lines in use) ==> answer!"

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2625
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCallBothLinesInUse()V

    goto :goto_0

    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    .end local v3           #phoneType:I
    :cond_3
    move v0, v5

    .line 2603
    goto :goto_1

    .restart local v0       #hasActiveCall:Z
    :cond_4
    move v1, v5

    .line 2604
    goto :goto_2

    .line 2627
    .restart local v1       #hasHoldingCall:Z
    .restart local v3       #phoneType:I
    :cond_5
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_6

    const-string v5, "handleCallKey: ringing ==> answer!"

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2629
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 2634
    :cond_7
    if-nez v0, :cond_8

    if-eqz v1, :cond_a

    .line 2635
    :cond_8
    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    .line 2637
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2639
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_0

    .line 2643
    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->switchHoldUnhold()V

    goto :goto_0

    .line 2655
    :cond_a
    const-string v5, "handleCallKey: call in foregound ==> ignoring."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method handleKidzoneRingingConfirm(I)V
    .locals 3
    .parameter "request"

    .prologue
    .line 9608
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestCreateTime()J

    move-result-wide v0

    .line 9609
    .local v0, id:J
    invoke-direct {p0, v0, v1, p1}, Lcom/android/phone/InCallScreen;->handleKidzoneRingingConfirm(JI)V

    .line 9610
    return-void
.end method

.method handleOnscreenButtonClick(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 5485
    return-void
.end method

.method public handleOtaCallEnd()V
    .locals 3

    .prologue
    .line 8117
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 8119
    .local v0, app:Lcom/android/phone/PhoneApp;
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "handleOtaCallEnd entering"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8120
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v1, v2, :cond_3

    :cond_1
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v1, :cond_3

    .line 8126
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "handleOtaCallEnd - Set OTA Call End stater"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8127
    :cond_2
    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 8128
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 8130
    :cond_3
    return-void
.end method

.method handleStuffAfterOnResume()V
    .locals 5

    .prologue
    .line 1219
    const-string v2, "IncallSCreen"

    const-string v3, "handleStuffAfterOnResume"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->quickLaunch()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1222
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mOnNewIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 1223
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v2, v3, :cond_0

    .line 1224
    const-string v2, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNewIntent: status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from internalResolveIntent()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mOnNewIntent:Landroid/content/Intent;

    .line 1232
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- onResume: initial status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1233
    :cond_1
    const/4 v0, 0x0

    .line 1235
    .local v0, handledStartupError:Z
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v2, v3, :cond_5

    .line 1236
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- onResume: failure during startup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1239
    :cond_2
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_IGNORED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-ne v2, v3, :cond_4

    .line 1241
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 1242
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 1304
    .end local v0           #handledStartupError:Z
    :cond_3
    :goto_0
    return-void

    .line 1250
    .restart local v0       #handledStartupError:Z
    :cond_4
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->handleStartupError(Lcom/android/phone/InCallScreen$InCallInitStatus;)V

    .line 1252
    const/4 v0, 0x1

    .line 1258
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 1261
    :cond_5
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v2, v3, :cond_9

    .line 1262
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->syncWithPhoneState()Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v1

    .line 1263
    .local v1, status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v1, v2, :cond_3

    .line 1264
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- onResume: syncWithPhoneState failed! status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1268
    :cond_6
    if-eqz v0, :cond_7

    .line 1276
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "  ==> syncWithPhoneState failed, but staying here anyway."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1290
    :cond_7
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_8

    const-string v2, "  ==> syncWithPhoneState failed; bailing out!"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1291
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1292
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto :goto_0

    .line 1298
    .end local v1           #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_9
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    if-eqz v2, :cond_3

    .line 1299
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v2}, Lcom/android/phone/widget/ButtonGroup;->requestLayout()V

    goto :goto_0
.end method

.method hasPhoto()Z
    .locals 1

    .prologue
    .line 8417
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen$CallerData;->hasPhoto()Z

    move-result v0

    return v0
.end method

.method hideDialPad()V
    .locals 1

    .prologue
    .line 9070
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9071
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->openOrCloseKeypad()V

    .line 9073
    :cond_0
    return-void
.end method

.method public hideIncomingCallArc()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9823
    const-string v0, ".....hideIncomingCallArc()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 9824
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/HtcLockScreenControl;->setVisibility(I)V

    .line 9825
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v0, :cond_0

    .line 9826
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {v0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->hideAndReleaseArrowAnimation()V

    .line 9827
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->showKeyguardWithAnimation(Z)V

    .line 9828
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mDragedupToDeclineCall:Z

    .line 9829
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    .line 9830
    return-void
.end method

.method internalAnswerAndEnd()V
    .locals 2

    .prologue
    .line 5928
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalAnswerAndEnd()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5929
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 5932
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 5933
    return-void
.end method

.method internalAnswerCall()V
    .locals 9

    .prologue
    .line 5878
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 5880
    .local v2, hasRingingCall:Z
    if-eqz v2, :cond_1

    .line 5881
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 5882
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 5883
    .local v5, ringing:Lcom/android/internal/telephony/Call;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 5884
    .local v4, phoneType:I
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 5885
    .local v0, hasActiveCall:Z
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 5887
    .local v1, hasHoldingCall:Z
    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    .line 5888
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "internalAnswerCall: answering (CDMA)..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5890
    :cond_0
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 5917
    :goto_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 5918
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateFakeBottomTaskbarAfterAnswerCall()V

    .line 5922
    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    .end local v4           #phoneType:I
    .end local v5           #ringing:Lcom/android/internal/telephony/Call;
    :cond_1
    return-void

    .line 5892
    .restart local v0       #hasActiveCall:Z
    .restart local v1       #hasHoldingCall:Z
    .restart local v3       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v4       #phoneType:I
    .restart local v5       #ringing:Lcom/android/internal/telephony/Call;
    :cond_2
    const/4 v6, 0x1

    if-eq v4, v6, :cond_3

    const/4 v6, 0x3

    if-ne v4, v6, :cond_7

    .line 5898
    :cond_3
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 5899
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_4

    const-string v6, "internalAnswerCall: answering (both lines in use!)..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5903
    :cond_4
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6, v5}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 5909
    :cond_5
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_6

    const-string v6, "internalAnswerCall: answering..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5910
    :cond_6
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 5914
    :cond_7
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method internalAnswerCallBothLinesInUse()V
    .locals 2

    .prologue
    .line 5943
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalAnswerCallBothLinesInUse()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5946
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 5950
    return-void
.end method

.method internalHangupRingingCall()V
    .locals 1

    .prologue
    .line 5956
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalHangupRingingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5957
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 5958
    return-void
.end method

.method internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2263
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2264
    :cond_0
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 2360
    :goto_0
    return-object v2

    .line 2271
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2272
    .local v0, action:Ljava/lang/String;
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "internalResolveIntent: action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2275
    :cond_2
    const-string v3, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2277
    iput-boolean v6, p0, Lcom/android/phone/InCallScreen;->mIsEmergencyCall:Z

    .line 2281
    :cond_3
    const-string v3, "com.android.phone.EmergencyDialer"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2283
    iput-boolean v6, p0, Lcom/android/phone/InCallScreen;->mIsFromEmergencyDialer:Z

    .line 2297
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 2303
    .local v1, app:Lcom/android/phone/PhoneApp;
    const-string v3, "com.android.phone.PERFORM_CDMA_PROVISIONING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2315
    const-string v3, "InCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The google ota intent has been disabled by Htc: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 2287
    .end local v1           #app:Lcom/android/phone/PhoneApp;
    :cond_4
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mIsFromEmergencyDialer:Z

    goto :goto_1

    .line 2318
    .restart local v1       #app:Lcom/android/phone/PhoneApp;
    :cond_5
    const-string v3, "android.intent.action.ANSWER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2319
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    .line 2320
    invoke-virtual {v1, v5}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 2321
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 2322
    :cond_6
    const-string v3, "android.intent.action.CALL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2324
    :cond_7
    invoke-virtual {v1, v5}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 2329
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2330
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getProviderLabel(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    .line 2331
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getProviderIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 2332
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getProviderGatewayUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    .line 2333
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->formatProviderUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mProviderAddress:Ljava/lang/String;

    .line 2334
    iput-boolean v6, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    .line 2336
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mProviderAddress:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2338
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->clearProvider()V

    .line 2343
    :cond_9
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->placeCall(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v2

    .line 2344
    .local v2, status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    goto/16 :goto_0

    .line 2341
    .end local v2           #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->clearProvider()V

    goto :goto_2

    .line 2345
    :cond_b
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2353
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->showDialPad(Landroid/content/Intent;)V

    .line 2355
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 2357
    :cond_c
    const-string v3, "InCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "internalResolveIntent: unexpected intent action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0
.end method

.method isBluetoothAudioConnected()Z
    .locals 3

    .prologue
    .line 6466
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v1, :cond_0

    .line 6467
    const-string v1, "isBluetoothAudioConnected: ==> FALSE (null mBluetoothHandsfree)"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6468
    const/4 v0, 0x0

    .line 6472
    :goto_0
    return v0

    .line 6470
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    .line 6471
    .local v0, isAudioOn:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBluetoothAudioConnected: ==> isAudioOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method isBluetoothAudioConnectedOrPending()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6486
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6487
    const-string v3, "isBluetoothAudioConnectedOrPending: ==> TRUE (really connected)"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6511
    :goto_0
    return v2

    .line 6495
    :cond_0
    iget-boolean v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    if-eqz v4, :cond_2

    .line 6496
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionRequestTime:J

    sub-long v0, v4, v6

    .line 6498
    .local v0, timeSinceRequest:J
    const-wide/16 v4, 0x1388

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 6499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBluetoothAudioConnectedOrPending: ==> TRUE (requested "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msec ago)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 6503
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBluetoothAudioConnectedOrPending: ==> FALSE (request too old: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " msec ago)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6505
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    move v2, v3

    .line 6506
    goto :goto_0

    .line 6510
    .end local v0           #timeSinceRequest:J
    :cond_2
    const-string v2, "isBluetoothAudioConnectedOrPending: ==> FALSE"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v2, v3

    .line 6511
    goto :goto_0
.end method

.method isBluetoothAvailable()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 6420
    const-string v4, "isBluetoothAvailable()..."

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6421
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v4, :cond_0

    .line 6423
    const-string v4, "  ==> FALSE (not BT capable)"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v2, v3

    .line 6459
    :goto_0
    return v2

    .line 6443
    :cond_0
    const/4 v2, 0x0

    .line 6444
    .local v2, isConnected:Z
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v4, :cond_1

    .line 6445
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 6447
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 6448
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 6449
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    const/4 v2, 0x1

    .line 6451
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - headset state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - headset address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6454
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - isConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6458
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ==> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method isDialerOpened()Z
    .locals 1

    .prologue
    .line 6116
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEmergency()Z
    .locals 1

    .prologue
    .line 8335
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsEmergencyCall:Z

    return v0
.end method

.method isForegroundActivity()Z
    .locals 1

    .prologue
    .line 2105
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method public isGSMCallGuardEnable(Ljava/lang/String;)Z
    .locals 3
    .parameter "number"

    .prologue
    const/4 v0, 0x1

    .line 10010
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_WPHONE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10012
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->EnableCallGuard:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gsm"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isVoiceRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10017
    const-string v1, "InCallScreen"

    const-string v2, "enableCallGuard( true"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10021
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isKeyEventAcceptableDTMF(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2666
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->isKeyEventAcceptable(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isManageConferenceMode()Z
    .locals 1

    .prologue
    .line 6109
    const/4 v0, 0x0

    return v0
.end method

.method public isOtaCallInActiveState()Z
    .locals 1

    .prologue
    .line 8097
    const/4 v0, 0x0

    return v0
.end method

.method public isOtaCallInEndState()Z
    .locals 2

    .prologue
    .line 8133
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneStateRestricted()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 6292
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v0

    .line 6293
    .local v0, serviceState:I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method makeToast(IZ)V
    .locals 7
    .parameter "resId"
    .parameter "isShort"

    .prologue
    const/16 v6, 0x32a

    const/16 v4, 0x328

    .line 8445
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 8447
    .local v0, duration:I
    :goto_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 8448
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 8450
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 8451
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 8453
    if-eqz p2, :cond_1

    const/16 v2, 0x1388

    .line 8455
    .local v2, resetDelay:I
    :goto_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    int-to-long v4, v2

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 8456
    return-void

    .line 8445
    .end local v0           #duration:I
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #resetDelay:I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 8453
    .restart local v0       #duration:I
    .restart local v1       #msg:Landroid/os/Message;
    :cond_1
    const/16 v2, 0x3a98

    goto :goto_1
.end method

.method needKidzonePwd()Z
    .locals 4

    .prologue
    .line 9601
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isKidzone()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->onlyRinging(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 9603
    .local v0, need:Z
    :goto_0
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needKidzonePwd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9604
    :cond_0
    return v0

    .line 9601
    .end local v0           #need:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method okToShowDialpad()Z
    .locals 1

    .prologue
    .line 6186
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->okToDialDTMFTones()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method okToShowInCallTouchUi()Z
    .locals 2

    .prologue
    .line 6278
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 9928
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " destroyed?: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 9929
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    if-nez v0, :cond_1

    .line 9931
    packed-switch p1, :pswitch_data_0

    .line 9939
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 9940
    return-void

    .line 9934
    :pswitch_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/phone/EcidClient;->handleResult(Landroid/content/Context;IILandroid/content/Intent;)V

    goto :goto_0

    .line 9931
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 2567
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleBackKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2572
    :goto_0
    return-void

    .line 2571
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method onBluetoothClick(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 5401
    const-string v0, "onBluetoothClick()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5403
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5405
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5406
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 5425
    :goto_0
    return-void

    .line 5414
    :cond_0
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5415
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 5418
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->connectBluetoothAudio()V

    goto :goto_0

    .line 5423
    :cond_2
    const-string v0, "InCallScreen"

    const-string v1, "Got onBluetoothClick, but bluetooth is unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 22
    .parameter "view"

    .prologue
    .line 5024
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v9

    .line 5026
    .local v9, id:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    .line 5027
    .local v16, tag:Ljava/lang/Object;
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/phone/widget/ButtonGroup$ButtonTag;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 5028
    check-cast v16, Lcom/android/phone/widget/ButtonGroup$ButtonTag;

    .end local v16           #tag:Ljava/lang/Object;
    move-object/from16 v0, v16

    iget v9, v0, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->id:I

    .line 5031
    :cond_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onClick(View "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", id "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")..."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5032
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/phone/InCallMenuItemView;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v11, p1

    .line 5033
    check-cast v11, Lcom/android/phone/InCallMenuItemView;

    .line 5034
    .local v11, item:Lcom/android/phone/InCallMenuItemView;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  ==> menu item! "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5041
    .end local v11           #item:Lcom/android/phone/InCallMenuItemView;
    :cond_1
    const/4 v6, 0x1

    .line 5042
    .local v6, dismissMenuImmediate:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 5044
    .local v5, context:Landroid/content/Context;
    sparse-switch v9, :sswitch_data_0

    .line 5278
    const-string v18, "InCallScreen"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Got click from unexpected View ID "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " (View = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5284
    :cond_2
    :goto_0
    const v19, 0x1129f

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v18, v0

    if-eqz v18, :cond_d

    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    :goto_1
    aput-object v18, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5298
    if-nez v6, :cond_4

    .line 5303
    sget-boolean v18, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v18, :cond_3

    const-string v18, "- onClick: updating menu to show \'new\' current state..."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5305
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->updateMenu()Z

    move-result v13

    .line 5307
    .local v13, okToShowMenu:Z
    if-nez v13, :cond_4

    .line 5315
    const-string v18, "onClick: Tried to update menu, but now need to take it down!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5316
    const/4 v6, 0x1

    .line 5321
    .end local v13           #okToShowMenu:Z
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 5330
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 5331
    return-void

    .line 5046
    .restart local p1
    :sswitch_0
    const-string v18, "onClick: AnswerAndHold..."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5047
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 5051
    :sswitch_1
    const-string v18, "onClick: AnswerAndEnd..."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5052
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->internalAnswerAndEnd()V

    goto :goto_0

    .line 5057
    :sswitch_2
    const-string v18, "onClick: SwapCalls..."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5058
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_0

    .line 5063
    :sswitch_3
    const-string v18, "onClick: MergeCalls..."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5065
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->mergeCalls()V

    goto :goto_0

    .line 5071
    :sswitch_4
    const-string v18, "onClick: Show/hide dialpad..."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 5075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 5076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto/16 :goto_0

    .line 5078
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    goto/16 :goto_0

    .line 5086
    :sswitch_5
    const-string v18, "onClick: Speaker..."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5091
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/phone/InCallScreen;->switchSpeakerOnOff(Landroid/content/Context;)V

    .line 5093
    const/4 v6, 0x0

    .line 5094
    goto/16 :goto_0

    .line 5097
    :sswitch_6
    const-string v18, "onClick: Bluetooth..."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5098
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/phone/InCallScreen;->onBluetoothClick(Landroid/content/Context;)V

    .line 5100
    const/4 v6, 0x0

    .line 5101
    goto/16 :goto_0

    .line 5105
    :sswitch_7
    const-string v18, "onClick: Mute..."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5106
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v18

    if-nez v18, :cond_6

    const/4 v12, 0x1

    .line 5107
    .local v12, newMuteState:Z
    :goto_2
    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 5109
    const/4 v6, 0x0

    .line 5110
    goto/16 :goto_0

    .line 5106
    .end local v12           #newMuteState:Z
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 5114
    :sswitch_8
    const-string v18, "onClick: Hold..."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5115
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->switchHoldUnhold()V

    .line 5118
    const/4 v6, 0x0

    .line 5119
    goto/16 :goto_0

    .line 5123
    :sswitch_9
    const-string v18, "onClick: AddCall..."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;)V

    goto/16 :goto_0

    .line 5128
    :sswitch_a
    const-string v18, "onClick: EndCall..."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5130
    sget-boolean v18, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_KIDZONE:Z

    if-eqz v18, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->needKidzonePwd()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 5132
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleKidzoneRingingConfirm(I)V

    goto/16 :goto_0

    .line 5135
    :cond_7
    const-string v18, "InCallScreen"

    const-string v19, "[ATS][com.android.phone][end_call][successful]"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 5142
    :sswitch_b
    const-string v18, "onclick: menuViewContacts..."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5143
    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5144
    .local v17, viewAll:Landroid/content/Intent;
    sget-object v18, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5145
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5149
    .end local v17           #viewAll:Landroid/content/Intent;
    :sswitch_c
    const-string v18, "onclick: MuteRinging..."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->muteRingingCall(Lcom/android/internal/telephony/Phone;)Z

    goto/16 :goto_0

    .line 5154
    :sswitch_d
    const-string v18, "onClick: MenuSendMessage..."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5155
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->onSendSMessageClick()V

    goto/16 :goto_0

    .line 5160
    :sswitch_e
    const-string v18, "onClick: alertingAnswerButton..."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isRinging()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 5162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    .line 5163
    .local v7, fgAlive:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    .line 5165
    .local v4, bgAlive:Z
    if-eqz v7, :cond_8

    if-eqz v4, :cond_8

    .line 5166
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->internalAnswerAndEnd()V

    goto/16 :goto_0

    .line 5168
    :cond_8
    sget-boolean v18, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_KIDZONE:Z

    if-eqz v18, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->needKidzonePwd()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 5170
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleKidzoneRingingConfirm(I)V

    goto/16 :goto_0

    .line 5172
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto/16 :goto_0

    .line 5179
    .end local v4           #bgAlive:Z
    .end local v7           #fgAlive:Z
    :sswitch_f
    const-string v18, "onClick: alertingRejectButton..."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5180
    sget-boolean v18, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_KIDZONE:Z

    if-eqz v18, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->needKidzonePwd()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 5182
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleKidzoneRingingConfirm(I)V

    goto/16 :goto_0

    .line 5184
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->onEndCallBtnClick()V

    goto/16 :goto_0

    .line 5191
    :sswitch_10
    const-string v18, "onClick: menuLaunchDialer..."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5192
    new-instance v10, Landroid/content/Intent;

    const-string v18, "android.intent.action.DIAL"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5193
    .local v10, intent:Landroid/content/Intent;
    const/high16 v18, 0x1000

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5194
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5199
    .end local v10           #intent:Landroid/content/Intent;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x327

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 5202
    .local v14, result:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v14}, Lcom/android/phone/PhoneUtils;->hangupAll(Lcom/android/internal/telephony/CallManager;Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 5208
    .end local v14           #result:Landroid/os/Message;
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 5213
    :sswitch_13
    const-string v18, "recorder"

    const-string v19, "perform recording"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5214
    invoke-static {}, Lcom/android/phone/util/VoiceRecorderHelper;->getInstance()Lcom/android/phone/util/VoiceRecorderHelper;

    move-result-object v8

    .line 5215
    .local v8, helper:Lcom/android/phone/util/VoiceRecorderHelper;
    if-eqz v8, :cond_2

    .line 5216
    invoke-virtual {v8}, Lcom/android/phone/util/VoiceRecorderHelper;->startOrStop()Z

    goto/16 :goto_0

    .line 5223
    .end local v8           #helper:Lcom/android/phone/util/VoiceRecorderHelper;
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 5224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/HtcIncallControlPanel;->getDialog(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v15

    .line 5225
    .local v15, srcDialog:Landroid/app/Dialog;
    if-eqz v15, :cond_2

    .line 5226
    invoke-virtual {v15}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 5234
    .end local v15           #srcDialog:Landroid/app/Dialog;
    :sswitch_15
    sget-boolean v18, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_KIDZONE:Z

    if-eqz v18, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->needKidzonePwd()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 5236
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleKidzoneRingingConfirm(I)V

    goto/16 :goto_0

    .line 5238
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->handleDeferBtn()V

    goto/16 :goto_0

    .line 5243
    :sswitch_16
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->onEndCallBtnClick()V

    goto/16 :goto_0

    .line 5247
    :sswitch_17
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->viewAllPeople()V

    goto/16 :goto_0

    .line 5251
    :sswitch_18
    new-instance v10, Landroid/content/Intent;

    const-string v18, "com.htc.laputa.navi.action.SHOW_NAVI"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5252
    .restart local v10       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5257
    .end local v10           #intent:Landroid/content/Intent;
    :sswitch_19
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->viewContact()V

    goto/16 :goto_0

    .line 5261
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/DTMFTwelveKeyDialer;->openOrCloseKeypad()V

    goto/16 :goto_0

    .line 5265
    :sswitch_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->viewContactSp()V

    goto/16 :goto_0

    .line 5269
    :sswitch_1c
    const-string v18, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 5270
    .local v3, am:Landroid/media/AudioManager;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneApp;->isBTAudioOn()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 5271
    const/16 v18, 0x6

    const/16 v19, 0x6

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v3, v0, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_0

    .line 5273
    :cond_c
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v3, v0, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_0

    .line 5284
    .end local v3           #am:Landroid/media/AudioManager;
    :cond_d
    const-string v18, ""

    goto/16 :goto_1

    .line 5044
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080010 -> :sswitch_b
        0x7f080011 -> :sswitch_c
        0x7f080012 -> :sswitch_d
        0x7f080013 -> :sswitch_14
        0x7f080014 -> :sswitch_10
        0x7f080015 -> :sswitch_12
        0x7f080016 -> :sswitch_11
        0x7f080025 -> :sswitch_13
        0x7f080028 -> :sswitch_1b
        0x7f08002a -> :sswitch_4
        0x7f08002b -> :sswitch_a
        0x7f08002c -> :sswitch_9
        0x7f08002d -> :sswitch_2
        0x7f08002e -> :sswitch_3
        0x7f08002f -> :sswitch_6
        0x7f080030 -> :sswitch_5
        0x7f080031 -> :sswitch_7
        0x7f080032 -> :sswitch_8
        0x7f080033 -> :sswitch_0
        0x7f080034 -> :sswitch_1
        0x7f080037 -> :sswitch_15
        0x7f08003a -> :sswitch_e
        0x7f08003b -> :sswitch_f
        0x7f08003c -> :sswitch_15
        0x7f08003d -> :sswitch_1a
        0x7f08003e -> :sswitch_1a
        0x7f08003f -> :sswitch_17
        0x7f080041 -> :sswitch_18
        0x7f080042 -> :sswitch_9
        0x7f080043 -> :sswitch_16
        0x7f080044 -> :sswitch_3
        0x7f080045 -> :sswitch_2
        0x7f080046 -> :sswitch_8
        0x7f080047 -> :sswitch_19
        0x7f080048 -> :sswitch_5
        0x7f080049 -> :sswitch_7
        0x7f0800bf -> :sswitch_14
        0x7f08014f -> :sswitch_1c
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 13
    .parameter "newConfig"

    .prologue
    .line 8580
    sget-boolean v11, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v11, :cond_0

    .line 8581
    const-string v11, "InCallScreen"

    const-string v12, "onConfigChange: "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8583
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 8586
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->applyBackgroundTheme()V

    .line 8589
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v11}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 8592
    .local v0, diff:I
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v11

    if-eqz v11, :cond_1

    if-nez v0, :cond_3

    .line 8593
    :cond_1
    sget-boolean v11, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v11, :cond_2

    .line 8594
    const-string v11, "Configuration is same as before, return"

    invoke-direct {p0, v11}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8672
    :cond_2
    :goto_0
    return-void

    .line 8607
    :cond_3
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 8610
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/phone/InCallScreen;->setLayoutByConfig(Lcom/android/phone/PhoneApp;)V

    .line 8611
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->findViewAndInitLayout()V

    .line 8612
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 8613
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateOperatorName()V

    .line 8615
    sget-boolean v11, Lcom/android/phone/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v11, :cond_4

    .line 8616
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isLandscape()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 8617
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->showDialPad()V

    .line 8618
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateKeypadIcon()V

    .line 8621
    :cond_4
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isDockMode()Z

    move-result v2

    .line 8622
    .local v2, isCurrentModeDock:Z
    sget-boolean v11, Lcom/android/phone/InCallScreen;->mIsLastModeDock:Z

    if-eq v11, v2, :cond_7

    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v11, v12, :cond_7

    .line 8625
    sput-boolean v2, Lcom/android/phone/InCallScreen;->mIsLastModeDock:Z

    .line 8626
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_9

    const/4 v4, 0x1

    .line 8627
    .local v4, isSpeakOff:Z
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v5

    .line 8629
    .local v5, isWiredHeadsetConnected:Z
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v11}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v1, 0x1

    .line 8631
    .local v1, isBTConnected:Z
    :goto_2
    if-nez v5, :cond_5

    if-eqz v1, :cond_b

    :cond_5
    const/4 v3, 0x1

    .line 8632
    .local v3, isHandsFreePlugged:Z
    :goto_3
    if-nez v3, :cond_7

    if-eqz v4, :cond_7

    .line 8633
    sget-boolean v11, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v11, :cond_6

    .line 8634
    const-string v11, "InCallScreen"

    const-string v12, "Incallscreen: Dock mode is true and HandsFreePlugged is false, turn on the speaker"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8638
    :cond_6
    const/4 v11, 0x0

    invoke-static {p0, v2, v11}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 8641
    .end local v1           #isBTConnected:Z
    .end local v3           #isHandsFreePlugged:Z
    .end local v4           #isSpeakOff:Z
    .end local v5           #isWiredHeadsetConnected:Z
    :cond_7
    const v11, 0x7f0800fe

    invoke-virtual {p0, v11}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 8642
    .local v8, titlebar:Landroid/view/View;
    const v11, 0x7f08014e

    invoke-virtual {p0, v11}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 8643
    .local v9, titlebarDivider:Landroid/view/View;
    const v11, 0x7f08014f

    invoke-virtual {p0, v11}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 8644
    .local v10, volumeControl:Landroid/view/View;
    if-eqz v8, :cond_8

    if-eqz v10, :cond_8

    if-eqz v9, :cond_8

    .line 8645
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 8646
    .local v6, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 8647
    .local v7, res:Landroid/content/res/Resources;
    if-eqz v6, :cond_8

    if-eqz v7, :cond_8

    .line 8648
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isLandscape()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 8649
    const v11, 0x20d0081

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iput v11, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8650
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 8651
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 8657
    :goto_4
    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8668
    .end local v6           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v7           #res:Landroid/content/res/Resources;
    :cond_8
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {v11, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 8669
    sget-boolean v11, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v11, :cond_2

    .line 8670
    const-string v11, "InCallScreen"

    const-string v12, "End of onConfigChange: "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8626
    .end local v8           #titlebar:Landroid/view/View;
    .end local v9           #titlebarDivider:Landroid/view/View;
    .end local v10           #volumeControl:Landroid/view/View;
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 8629
    .restart local v4       #isSpeakOff:Z
    .restart local v5       #isWiredHeadsetConnected:Z
    :cond_a
    const/4 v1, 0x0

    goto :goto_2

    .line 8631
    .restart local v1       #isBTConnected:Z
    :cond_b
    const/4 v3, 0x0

    goto :goto_3

    .line 8653
    .end local v1           #isBTConnected:Z
    .end local v4           #isSpeakOff:Z
    .end local v5           #isWiredHeadsetConnected:Z
    .restart local v6       #params:Landroid/view/ViewGroup$LayoutParams;
    .restart local v7       #res:Landroid/content/res/Resources;
    .restart local v8       #titlebar:Landroid/view/View;
    .restart local v9       #titlebarDivider:Landroid/view/View;
    .restart local v10       #volumeControl:Landroid/view/View;
    :cond_c
    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 8654
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 8655
    const v11, 0x20d0080

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iput v11, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1026
    const-string v5, "InCallScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate()...  this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1031
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1037
    const-string v5, "InCallScreen"

    const-string v6, "onCreate() reached on non-voice-capable device"

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 1184
    :cond_0
    :goto_0
    return-void

    .line 1042
    :cond_1
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1044
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenOnCreate()V

    .line 1046
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/util/ConfigUtils;->registConfig(Landroid/content/res/Configuration;)V

    .line 1051
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isDockMode()Z

    move-result v3

    .line 1053
    .local v3, isCurrentModeDock:Z
    sget-boolean v5, Lcom/android/phone/InCallScreen;->mIsLastModeDock:Z

    if-eq v5, v3, :cond_2

    .line 1054
    sput-boolean v3, Lcom/android/phone/InCallScreen;->mIsLastModeDock:Z

    .line 1055
    iput-boolean v8, p0, Lcom/android/phone/InCallScreen;->isReinflatedLayoutByOrientation:Z

    .line 1056
    iput-boolean v8, p0, Lcom/android/phone/InCallScreen;->isReinflatedLayoutByAssetChanged:Z

    .line 1057
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/phone/PhoneApp;->assetSwitcher(Landroid/content/res/Resources;Z)V

    .line 1061
    :cond_2
    sget-boolean v5, Lcom/android/phone/util/BuildUtils;->INCOMING_CALL_3D_LOCKSCREEN:Z

    if-nez v5, :cond_3

    .line 1062
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x48

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1079
    :cond_3

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1080
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneApp;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1082
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 1084
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 1086
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 1087
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- mBluetoothHandsfree: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1089
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v5, :cond_4

    .line 1093
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1094
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v5, v6, v7, v9}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 1098
    :cond_4
    invoke-virtual {p0, v9}, Lcom/android/phone/InCallScreen;->requestWindowFeature(I)Z

    .line 1100
    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setLayoutByConfig(Lcom/android/phone/PhoneApp;)V

    .line 1103
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->findViewAndInitLayout()V

    .line 1107
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->registerForPhoneStates()V

    .line 1121
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1123
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "fromDialer"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1125
    .local v1, fromDialer:Z
    const-string v5, "IncallScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate fromDailer = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    if-nez v1, :cond_6

    .line 1129
    if-nez p1, :cond_9

    .line 1130
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "onCreate(): this is our very first launch, checking intent..."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1135
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 1136
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v6, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v5, v6, :cond_6

    .line 1137
    const-string v5, "InCallScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate: status "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from internalResolveIntent()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenCreated()V

    .line 1150
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->requestForNotFullScreen()V

    .line 1153
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/phone/PhoneApp;->registerUiModeObserver(Landroid/app/Activity;)I

    .line 1156
    sget-boolean v5, Lcom/android/phone/util/VoiceRecorderHelper;->IS_INCALL_RECORDING_ENABLE:Z

    if-eqz v5, :cond_7

    .line 1157
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {p0, v5}, Lcom/android/phone/util/VoiceRecorderHelper;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)Lcom/android/phone/util/VoiceRecorderHelper;

    .line 1160
    :cond_7
    if-nez v1, :cond_8

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_8
    if-nez p1, :cond_a

    .line 1163
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mOnNewIntent:Landroid/content/Intent;

    .line 1164
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mOnNewIntent:Landroid/content/Intent;

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->setupPreloadContactInfo(Landroid/content/Intent;)V

    .line 1173
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->applyBackgroundTheme()V

    .line 1178
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 1179
    .local v4, pm:Landroid/os/PowerManager;
    if-eqz v4, :cond_0

    .line 1180
    const v5, 0x1000001a

    const-string v6, "InCallScreen"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mSendRejectMsgWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_0

    .line 1142
    .end local v4           #pm:Landroid/os/PowerManager;
    :cond_9
    sget-object v5, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_1

    .line 1166
    :cond_a
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mOnNewIntent:Landroid/content/Intent;

    .line 1167
    sget-object v5, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 10059
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 10060
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f10

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 10063
    sget-boolean v1, Lcom/android/phone/util/Constants;->SUPPORT_ADD_CALL:Z

    if-nez v1, :cond_0

    .line 10064
    const v1, 0x7f08002c

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 10066
    :cond_0
    sget-boolean v1, Lcom/android/phone/util/Constants;->SUPPORT_JOIN:Z

    if-nez v1, :cond_1

    .line 10067
    const v1, 0x7f08002e

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 10069
    :cond_1
    sget-boolean v1, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-eqz v1, :cond_4

    .line 10070
    const v1, 0x7f08002f

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 10074
    :goto_0
    sget-boolean v1, Lcom/android/phone/util/Constants;->SUPPORT_DEFER:Z

    if-nez v1, :cond_2

    .line 10075
    const v1, 0x7f080037

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 10078
    :cond_2
    const v1, 0x7f080014

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 10080
    sget-boolean v1, Lcom/android/phone/util/VoiceRecorderHelper;->IS_INCALL_RECORDING_ENABLE:Z

    if-nez v1, :cond_3

    .line 10081
    const v1, 0x7f080025

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 10084
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 10072
    :cond_4
    const v1, 0x7f080013

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 3
    .parameter "featureId"

    .prologue
    const/4 v2, 0x0

    .line 6318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreatePanelView(featureId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6322
    if-eqz p1, :cond_0

    .line 6327
    :cond_0
    return-object v2
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1953
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/phone/PhoneApp;->unregisterUiModeObserver(Landroid/app/Activity;)I

    .line 1955
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy()...  this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1960
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    .line 1962
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1963
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneApp;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1965
    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneApp;->setPausedInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1968
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissPromptDialogs()V

    .line 1973
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-eqz v1, :cond_0

    .line 1974
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    invoke-virtual {v1}, Lcom/android/phone/InCallMenu;->clearInCallScreenReference()V

    .line 1986
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v1, :cond_1

    .line 1988
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1989
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopDialerSession()V

    .line 1994
    :goto_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearInCallScreenReference()V

    .line 1995
    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 1998
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->unregisterForPhoneStates()V

    .line 2002
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy() Close: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2003
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_2

    .line 2004
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v5, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 2005
    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 2010
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 2011
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 2013
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    if-eqz v1, :cond_3

    .line 2014
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    invoke-virtual {v1}, Lcom/android/phone/HtcIncallControlPanel;->destroy()V

    .line 2017
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->clearPwdResultReceiver()V

    .line 2019
    sget-boolean v1, Lcom/android/phone/util/VoiceRecorderHelper;->IS_INCALL_RECORDING_ENABLE:Z

    if-eqz v1, :cond_4

    .line 2020
    invoke-static {p0}, Lcom/android/phone/util/VoiceRecorderHelper;->destroyInstance(Landroid/content/Context;)V

    .line 2024
    :cond_4
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->unregistConfig()V

    .line 2026
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    if-eqz v1, :cond_5

    .line 2027
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    invoke-virtual {v1}, Lcom/android/phone/HtcIncallControlPanel;->removeIncallScreen()V

    .line 2031
    :cond_5
    invoke-static {}, Lcom/android/phone/EcidClient;->endAllLookupQueries()V

    .line 2034
    return-void

    .line 1992
    :cond_6
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_0
.end method

.method onDialerClose()V
    .locals 1

    .prologue
    .line 6134
    const-string v0, "onDialerClose()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6136
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 6137
    return-void
.end method

.method onDialerOpen()V
    .locals 1

    .prologue
    .line 6124
    const-string v0, "onDialerOpen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6126
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 6127
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2914
    sparse-switch p1, :sswitch_data_0

    .line 3049
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3053
    :cond_1
    :goto_0
    return v2

    .line 2919
    :sswitch_0
    iget-boolean v4, p0, Lcom/android/phone/InCallScreen;->mAcceptCallKey:Z

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 2920
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->mCallKeyPressed:Z

    .line 2921
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->mCallKeyLongPressed:Z

    .line 2922
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallLongPress:Ljava/lang/Runnable;

    const-wide/16 v5, 0x2

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v7

    mul-long/2addr v5, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2945
    :sswitch_1
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v4, v5, :cond_1

    move v2, v3

    .line 2951
    goto :goto_0

    .line 2960
    :sswitch_2
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_0

    .line 2972
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2973
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->muteRingingCall(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_0

    .line 2994
    :sswitch_3
    const/16 v3, 0x52

    if-ne p1, v3, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 3009
    :sswitch_4
    const-string v3, "----------- InCallScreen View dump --------------"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3011
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 3012
    .local v1, w:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 3013
    .local v0, decorView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->debug()V

    goto :goto_0

    .line 3019
    .end local v0           #decorView:Landroid/view/View;
    .end local v1           #w:Landroid/view/Window;
    :sswitch_5
    const-string v3, "----------- InCallScreen call state dump --------------"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3020
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3021
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0

    .line 3029
    :sswitch_6
    const-string v3, "------------ Temp testing -----------------"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3038
    :sswitch_7
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v3, v4, :cond_1

    .line 3040
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->searchContact()V

    goto/16 :goto_0

    .line 3053
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 2914
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1b -> :sswitch_1
        0x44 -> :sswitch_6
        0x46 -> :sswitch_5
        0x4c -> :sswitch_4
        0x52 -> :sswitch_3
        0x54 -> :sswitch_7
        0x5b -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 2866
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp(keycode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2870
    const-string v1, "InCallScreen"

    const-string v2, "******* mDialer is active *******"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2895
    :goto_0
    return v0

    .line 2872
    :cond_0
    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 2873
    const-string v1, "InCallScreen"

    const-string v2, "******* press CALL KEY *******"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2875
    const-string v1, "InCallScreen"

    const-string v2, "answer call by device, route audio to device."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2880
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mCallKeyPressed:Z

    if-ne v1, v0, :cond_2

    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mCallKeyLongPressed:Z

    if-nez v1, :cond_2

    .line 2881
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->handleCallKey()Z

    .line 2884
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mAcceptCallKey:Z

    .line 2885
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x325

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2888
    :cond_2
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mCallKeyPressed:Z

    .line 2889
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mCallKeyLongPressed:Z

    goto :goto_0

    .line 2895
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 2192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2196
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2202
    const-string v1, "InCallScreen"

    const-string v2, "onNewIntent() reached on non-voice-capable device"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 2259
    :cond_0
    :goto_0
    return-void

    .line 2220
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 2232
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->resetAvatarBeforeCall(Ljava/lang/String;)V

    .line 2234
    const-string v1, "fromDialer"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2236
    .local v0, fromDialer:Z
    const-string v1, "IncallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewIntent fromDailer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mOnNewIntent:Landroid/content/Intent;

    .line 2240
    if-eqz v0, :cond_3

    .line 2241
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mOnNewIntent:Landroid/content/Intent;

    .line 2251
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->setupPreloadContactInfo(Landroid/content/Intent;)V

    .line 2255
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.phone.PERFORM_CDMA_PROVISIONING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2243
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 2245
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v1, v2, :cond_2

    .line 2246
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewIntent: status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from internalResolveIntent()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 10683
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 10684
    .local v0, id:I
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 10685
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    .line 10686
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->onClick(Landroid/view/View;)V

    .line 10687
    const/4 v2, 0x1

    return v2
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 6381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPanelClosed(featureId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6385
    if-nez p1, :cond_0

    .line 6390
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 6391
    return-void
.end method

.method protected onPause()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1701
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "onPause()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1703
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1706
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1873
    :cond_1
    :goto_0
    return-void

    .line 1714
    :cond_2
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->EnableCallGuard:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->isGSMCallGuardEnable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1718
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->showCallguardMessage(Z)V

    .line 1722
    :cond_5
    iput-boolean v6, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 1735
    iput-boolean v6, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    .line 1736
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    .line 1738
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1743
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v2, :cond_6

    .line 1745
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v2, v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 1781
    :cond_6
    const v2, 0x1129e

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1784
    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 1788
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1796
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    .line 1806
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1818
    :goto_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/phone/InCallScreen$4;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/InCallScreen$4;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/PhoneApp;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1829
    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneApp;->setPausedInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1832
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->reenableStatusBar()V

    .line 1836
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 1840
    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 1843
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_7

    .line 1844
    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreen;->updateKeyguardShowWhenLockPolicy(Z)V

    .line 1847
    :cond_7
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/phone/NotificationMgr;->handleInCallGlow(Z)V

    .line 1851
    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mShowingErrorDialog:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_9

    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mIsEmergencyCall:Z

    if-nez v2, :cond_9

    .line 1852
    :cond_8
    iput-boolean v6, p0, Lcom/android/phone/InCallScreen;->mShowingErrorDialog:Z

    .line 1853
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 1855
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1856
    invoke-virtual {v0, v7}, Lcom/android/phone/PhoneApp;->showKeyguard(Z)V

    .line 1862
    :cond_9
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x329

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1864
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v2}, Lcom/android/phone/CallCard;->stopSNStatusMarquee()V

    .line 1866
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->stopTimer()V

    .line 1869
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    if-eqz v2, :cond_1

    .line 1870
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcBlinkingTextView;->setTextBlinkingSleep(Z)V

    goto/16 :goto_0

    .line 1808
    :catch_0
    move-exception v1

    .line 1810
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "InCallScreen"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 49
    .parameter "menu"

    .prologue
    .line 10090
    sget-boolean v46, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v46, :cond_0

    .line 10091
    const-string v46, "InCallScreen"

    const-string v47, "onPrepareOptionsMenu"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10094
    :cond_0
    const v46, 0x7f08002b

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    .line 10095
    .local v22, mDecline:Landroid/view/MenuItem;
    const v46, 0x7f08002c

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    .line 10096
    .local v18, mAddCall:Landroid/view/MenuItem;
    const v46, 0x7f08002d

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v36

    .line 10097
    .local v36, mSwapCalls:Landroid/view/MenuItem;
    const v46, 0x7f08002e

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v33

    .line 10098
    .local v33, mMergeCalls:Landroid/view/MenuItem;
    const v46, 0x7f08002f

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v21

    .line 10099
    .local v21, mBluetooth:Landroid/view/MenuItem;
    const v46, 0x7f080030

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v35

    .line 10100
    .local v35, mSpeaker:Landroid/view/MenuItem;
    const v46, 0x7f080031

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    .line 10101
    .local v34, mMute:Landroid/view/MenuItem;
    const v46, 0x7f080032

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v32

    .line 10102
    .local v32, mHold:Landroid/view/MenuItem;
    const v46, 0x7f080033

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    .line 10103
    .local v20, mAnswerAndHold:Landroid/view/MenuItem;
    const v46, 0x7f080034

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    .line 10105
    .local v19, mAnswerAndEnd:Landroid/view/MenuItem;
    const v46, 0x7f080010

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v31

    .line 10106
    .local v31, mHTCViewContacts:Landroid/view/MenuItem;
    const v46, 0x7f080011

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v28

    .line 10107
    .local v28, mHTCMuteRinging:Landroid/view/MenuItem;
    const v46, 0x7f080012

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v30

    .line 10109
    .local v30, mHTCSendMessage:Landroid/view/MenuItem;
    const v46, 0x7f080014

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    .line 10110
    .local v27, mHTCLaunchDialer:Landroid/view/MenuItem;
    const v46, 0x7f080016

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v25

    .line 10111
    .local v25, mHTCEndAllCalls:Landroid/view/MenuItem;
    const v46, 0x7f080015

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v26

    .line 10112
    .local v26, mHTCEndHeldCall:Landroid/view/MenuItem;
    const v46, 0x7f080013

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v23

    .line 10114
    .local v23, mHTCAudioSrc:Landroid/view/MenuItem;
    const v46, 0x7f080025

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v29

    .line 10118
    .local v29, mHTCRecorder:Landroid/view/MenuItem;
    const v46, 0x7f080037

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v24

    .line 10124
    .local v24, mHTCDefer:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v46

    sget-object v47, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_2

    .line 10125
    sget-boolean v46, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v46, :cond_1

    .line 10126
    const-string v46, "- Phone is idle!  Don\'t show the menu..."

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 10127
    :cond_1
    const/16 v46, 0x0

    .line 10678
    :goto_0
    return v46

    .line 10134
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v40

    .line 10135
    .local v40, phoneType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    .line 10136
    .local v11, fgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 10137
    .local v4, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v46

    if-eqz v46, :cond_3

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v46

    if-nez v46, :cond_3

    .line 10138
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v40

    .line 10143
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v15

    .line 10144
    .local v15, hasRingingCall:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v13

    .line 10145
    .local v13, hasActiveCall:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    .line 10146
    .local v12, fgCallState:Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v14

    .line 10150
    .local v14, hasHoldingCall:Z
    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v46

    if-eqz v46, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v46

    if-eqz v46, :cond_6

    .line 10152
    const/16 v46, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10153
    const/16 v46, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10154
    const/16 v46, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10155
    const/16 v46, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10158
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_ADD_CALL:Z

    if-eqz v46, :cond_4

    .line 10159
    const/16 v46, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10161
    :cond_4
    const/16 v46, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10162
    const/16 v46, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10163
    const/16 v46, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10164
    const/16 v46, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10165
    const/16 v46, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v17

    .line 10170
    .local v17, inConferenceCall:Z
    if-nez v17, :cond_5

    const/16 v43, 0x1

    .line 10183
    .local v43, showShowDialpad:Z
    :goto_1
    const/16 v46, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10184
    const/16 v46, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10185
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v44

    .line 10189
    .local v44, speakerOn:Z
    const/16 v46, 0x1

    goto/16 :goto_0

    .line 10170
    .end local v43           #showShowDialpad:Z
    .end local v44           #speakerOn:Z
    :cond_5
    const/16 v43, 0x0

    goto :goto_1

    .line 10193
    .end local v17           #inConferenceCall:Z
    :cond_6
    if-eqz v15, :cond_19

    .line 10195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 10196
    .local v7, conn:Lcom/android/internal/telephony/Connection;
    const/16 v42, 0x1

    .line 10197
    .local v42, sendMsg:Z
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v46

    if-eqz v46, :cond_b

    .line 10198
    const/16 v42, 0x0

    .line 10214
    :goto_2
    if-eqz v13, :cond_10

    if-nez v14, :cond_10

    .line 10217
    const/16 v46, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10226
    const/16 v46, 0x2

    move/from16 v0, v40

    move/from16 v1, v46

    if-ne v0, v1, :cond_e

    .line 10227
    const/16 v46, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10235
    :goto_3
    const/16 v46, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10236
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_ADD_CALL:Z

    if-eqz v46, :cond_7

    .line 10237
    const/16 v46, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10239
    :cond_7
    const/16 v46, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10240
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_JOIN:Z

    if-eqz v46, :cond_8

    .line 10241
    const/16 v46, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10244
    :cond_8
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-eqz v46, :cond_f

    .line 10245
    const/16 v46, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10250
    :goto_4
    const/16 v46, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10251
    const/16 v46, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10252
    const/16 v46, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10254
    const/16 v46, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10256
    move-object/from16 v0, v30

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10264
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_DEFER:Z

    if-eqz v46, :cond_9

    .line 10265
    const/16 v46, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10355
    :cond_9
    :goto_5
    const/16 v46, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10361
    const/16 v46, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10362
    const/16 v46, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10363
    sget-boolean v46, Lcom/android/phone/util/VoiceRecorderHelper;->IS_INCALL_RECORDING_ENABLE:Z

    if-eqz v46, :cond_a

    .line 10364
    const/16 v46, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10372
    :cond_a
    const/16 v46, 0x1

    goto/16 :goto_0

    .line 10200
    :cond_b
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_DEFER:Z

    if-eqz v46, :cond_c

    .line 10201
    const/16 v42, 0x0

    goto/16 :goto_2

    .line 10203
    :cond_c
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    const/16 v48, 0x0

    invoke-static/range {v46 .. v48}, Lcom/htc/util/contacts/PhoneUtils;->getType(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v41

    .line 10205
    .local v41, ringType:I
    invoke-static/range {v41 .. v41}, Lcom/htc/util/contacts/PhoneUtils;->isSpecialType(I)Z

    move-result v46

    if-nez v46, :cond_d

    const/16 v42, 0x1

    :goto_6
    goto/16 :goto_2

    :cond_d
    const/16 v42, 0x0

    goto :goto_6

    .line 10229
    .end local v41           #ringType:I
    :cond_e
    const/16 v46, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 10248
    :cond_f
    const/16 v46, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 10268
    :cond_10
    if-eqz v13, :cond_14

    if-eqz v14, :cond_14

    .line 10269
    const/16 v46, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10271
    const/16 v46, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10275
    const/16 v46, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10277
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_ADD_CALL:Z

    if-eqz v46, :cond_11

    .line 10278
    const/16 v46, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10280
    :cond_11
    const/16 v46, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10281
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_JOIN:Z

    if-eqz v46, :cond_12

    .line 10282
    const/16 v46, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10285
    :cond_12
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-eqz v46, :cond_13

    .line 10286
    const/16 v46, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10291
    :goto_7
    const/16 v46, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10292
    const/16 v46, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10293
    const/16 v46, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10294
    const/16 v46, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10296
    const/16 v46, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10298
    move-object/from16 v0, v30

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10302
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_DEFER:Z

    if-eqz v46, :cond_9

    .line 10303
    const/16 v46, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 10289
    :cond_13
    const/16 v46, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7

    .line 10308
    :cond_14
    const/16 v46, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10310
    const/16 v46, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10316
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_ADD_CALL:Z

    if-eqz v46, :cond_15

    .line 10317
    const/16 v46, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10319
    :cond_15
    const/16 v46, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10320
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_JOIN:Z

    if-eqz v46, :cond_16

    .line 10321
    const/16 v46, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10324
    :cond_16
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-eqz v46, :cond_18

    .line 10325
    const/16 v46, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10330
    :goto_8
    const/16 v46, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10331
    const/16 v46, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10332
    const/16 v46, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10333
    const/16 v46, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10335
    const/16 v46, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10337
    move-object/from16 v0, v30

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10341
    const/16 v45, 0x0

    .line 10342
    .local v45, visible:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v46

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/phone/CallNotifier;->isNewRingingConnectionInKeyguardRestrictedInputMode()Z

    move-result v46

    if-eqz v46, :cond_17

    .line 10344
    const/16 v45, 0x1

    .line 10347
    :cond_17
    move-object/from16 v0, v22

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10349
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_DEFER:Z

    if-eqz v46, :cond_9

    .line 10350
    move-object/from16 v0, v24

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 10328
    .end local v45           #visible:Z
    :cond_18
    const/16 v46, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_8

    .line 10379
    .end local v7           #conn:Lcom/android/internal/telephony/Connection;
    .end local v42           #sendMsg:Z
    :cond_19
    const/16 v46, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10421
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getMode()Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-result-object v37

    .line 10422
    .local v37, mode:Lcom/android/phone/InCallScreen$InCallScreenMode;
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_ADD_CALL:Z

    if-eqz v46, :cond_1b

    .line 10423
    invoke-virtual/range {v37 .. v37}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isSingleAlive()Z

    move-result v46

    if-nez v46, :cond_1a

    invoke-virtual/range {v37 .. v37}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isConference()Z

    move-result v46

    if-eqz v46, :cond_27

    .line 10424
    :cond_1a
    const/16 v46, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10437
    :cond_1b
    :goto_9
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isCdmaCallsOnly()Z

    move-result v46

    if-eqz v46, :cond_2a

    .line 10438
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 10439
    .local v2, app:Lcom/android/phone/PhoneApp;
    iget-object v0, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v8

    .line 10441
    .local v8, currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v46, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SWITCH_PARTIES_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v46

    if-eq v8, v0, :cond_1c

    sget-object v46, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v46

    if-ne v8, v0, :cond_1d

    .line 10443
    :cond_1c
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_ADD_CALL:Z

    if-eqz v46, :cond_1d

    .line 10444
    const/16 v46, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10447
    :cond_1d
    sget-object v46, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v46

    if-ne v8, v0, :cond_28

    .line 10448
    const/16 v46, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10449
    const/16 v46, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10455
    :goto_a
    const/16 v46, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10456
    sget-object v46, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v46

    if-eq v8, v0, :cond_1e

    sget-object v46, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SWITCH_PARTIES_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v46

    if-ne v8, v0, :cond_29

    .line 10458
    :cond_1e
    const/16 v46, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10487
    .end local v2           #app:Lcom/android/phone/PhoneApp;
    .end local v8           #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :goto_b
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-nez v46, :cond_1f

    if-eqz v21, :cond_1f

    .line 10488
    const/16 v46, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10489
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v46

    if-eqz v46, :cond_30

    .line 10490
    const/16 v46, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10491
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v3

    .line 10492
    .local v3, audioConnectedOrPending:Z
    if-eqz v3, :cond_2f

    .line 10493
    const v46, 0x7f0e006d

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 10506
    .end local v3           #audioConnectedOrPending:Z
    :cond_1f
    :goto_c
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-eqz v46, :cond_31

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v46

    if-eqz v46, :cond_31

    .line 10507
    const/16 v46, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10508
    const/16 v46, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10550
    :goto_d
    const-string v46, "ril.cdma.inecmmode"

    const/16 v47, 0x0

    invoke-static/range {v46 .. v47}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    if-nez v46, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->isEmergency()Z

    move-result v46

    if-eqz v46, :cond_35

    :cond_20
    const/4 v10, 0x1

    .line 10555
    .local v10, emergencyMode:Z
    :goto_e
    sget-object v46, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v46

    if-ne v12, v0, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->isEmergency()Z

    move-result v46

    if-nez v46, :cond_36

    const/4 v6, 0x1

    .line 10557
    .local v6, canMute:Z
    :goto_f
    if-eqz v6, :cond_21

    if-eqz v10, :cond_37

    .line 10558
    :cond_21
    const/16 v46, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10573
    :goto_10
    const/16 v46, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10576
    if-eqz v10, :cond_22

    sget-short v46, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v47, 0x94

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_22

    .line 10577
    const/16 v46, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10582
    :cond_22
    const/16 v46, 0x2

    move/from16 v0, v40

    move/from16 v1, v46

    if-ne v0, v1, :cond_39

    .line 10583
    const/16 v46, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10609
    :goto_11
    const/16 v46, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10611
    const/16 v46, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10615
    const/16 v46, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10621
    if-eqz v10, :cond_3f

    sget-short v46, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v47, 0x94

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_3f

    .line 10622
    const/16 v46, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10633
    :goto_12
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_DEFER:Z

    if-eqz v46, :cond_23

    .line 10634
    const/16 v46, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10638
    :cond_23
    if-eqz v31, :cond_24

    .line 10640
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/htc/cscore/util/CSUtil;->getLockScreenStatus(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    if-eqz v46, :cond_40

    .line 10641
    const/16 v46, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10652
    :cond_24
    :goto_13
    sget-boolean v46, Lcom/android/phone/util/VoiceRecorderHelper;->IS_INCALL_RECORDING_ENABLE:Z

    if-eqz v46, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v46, v0

    if-eqz v46, :cond_25

    .line 10653
    invoke-static {}, Lcom/android/phone/util/VoiceRecorderHelper;->getInstance()Lcom/android/phone/util/VoiceRecorderHelper;

    move-result-object v16

    .line 10654
    .local v16, helper:Lcom/android/phone/util/VoiceRecorderHelper;
    if-eqz v29, :cond_25

    .line 10655
    if-eqz v16, :cond_42

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/util/VoiceRecorderHelper;->isEnabled()Z

    move-result v46

    if-eqz v46, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/phone/util/VTHelper;->hasVTCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v46

    if-nez v46, :cond_42

    .line 10656
    const/16 v46, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10657
    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/util/VoiceRecorderHelper;->isRecording()Z

    move-result v46

    if-eqz v46, :cond_41

    .line 10658
    const v46, 0x7f0e00ad

    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 10669
    .end local v16           #helper:Lcom/android/phone/util/VoiceRecorderHelper;
    :cond_25
    :goto_14
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-eqz v46, :cond_26

    if-eqz v23, :cond_26

    .line 10670
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallScreen;->mAudioSrcIconId:I

    move/from16 v46, v0

    move-object/from16 v0, v23

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 10678
    :cond_26
    const/16 v46, 0x1

    goto/16 :goto_0

    .line 10427
    .end local v6           #canMute:Z
    .end local v10           #emergencyMode:Z
    :cond_27
    const/16 v46, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_9

    .line 10451
    .restart local v2       #app:Lcom/android/phone/PhoneApp;
    .restart local v8       #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_28
    const v46, 0x7f0e013e

    move-object/from16 v0, v36

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 10452
    const/16 v46, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10453
    const/16 v46, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_a

    .line 10460
    :cond_29
    const/16 v46, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_b

    .line 10464
    .end local v2           #app:Lcom/android/phone/PhoneApp;
    .end local v8           #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_2a
    invoke-virtual/range {v37 .. v37}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isMultiple()Z

    move-result v46

    if-eqz v46, :cond_2d

    .line 10467
    const/16 v46, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10469
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_JOIN:Z

    if-eqz v46, :cond_2b

    .line 10471
    invoke-static {}, Lcom/android/phone/PhoneUtils;->canMergeCalls()I

    move-result v46

    if-nez v46, :cond_2c

    const/16 v46, 0x1

    :goto_15
    move-object/from16 v0, v33

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10475
    :cond_2b
    const/16 v46, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10476
    const/16 v46, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_b

    .line 10471
    :cond_2c
    const/16 v46, 0x0

    goto :goto_15

    .line 10478
    :cond_2d
    const/16 v46, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10479
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_JOIN:Z

    if-eqz v46, :cond_2e

    .line 10480
    const/16 v46, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10482
    :cond_2e
    const/16 v46, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10483
    const/16 v46, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_b

    .line 10495
    .restart local v3       #audioConnectedOrPending:Z
    :cond_2f
    const v46, 0x7f0e006c

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_c

    .line 10498
    .end local v3           #audioConnectedOrPending:Z
    :cond_30
    const/16 v46, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_c

    .line 10510
    :cond_31
    sget-boolean v46, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-eqz v46, :cond_32

    .line 10511
    const/16 v46, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10514
    :cond_32
    const/16 v46, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10532
    const/16 v46, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10533
    invoke-interface/range {v35 .. v35}, Landroid/view/MenuItem;->isVisible()Z

    move-result v46

    if-nez v46, :cond_33

    .line 10534
    const/16 v46, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10536
    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v44

    .line 10538
    .restart local v44       #speakerOn:Z
    if-eqz v44, :cond_34

    .line 10539
    const v46, 0x2080a82

    move-object/from16 v0, v35

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 10540
    const v46, 0x7f0e006b

    move-object/from16 v0, v35

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 10542
    :cond_34
    const v46, 0x2080a83

    move-object/from16 v0, v35

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 10543
    const v46, 0x7f0e006a

    move-object/from16 v0, v35

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 10550
    .end local v44           #speakerOn:Z
    :cond_35
    const/4 v10, 0x0

    goto/16 :goto_e

    .line 10555
    .restart local v10       #emergencyMode:Z
    :cond_36
    const/4 v6, 0x0

    goto/16 :goto_f

    .line 10560
    .restart local v6       #canMute:Z
    :cond_37
    const/16 v46, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10561
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v38

    .line 10563
    .local v38, muteOn:Z
    if-eqz v38, :cond_38

    .line 10564
    const v46, 0x7f0e006e

    move-object/from16 v0, v34

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 10565
    const v46, 0x2080a36

    move-object/from16 v0, v34

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_10

    .line 10567
    :cond_38
    const v46, 0x7f0e0250

    move-object/from16 v0, v34

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 10568
    const v46, 0x2080a36

    move-object/from16 v0, v34

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_10

    .line 10592
    .end local v38           #muteOn:Z
    :cond_39
    if-eqz v14, :cond_3c

    if-nez v13, :cond_3c

    const/16 v39, 0x1

    .line 10593
    .local v39, onHold:Z
    :goto_16
    if-eqz v13, :cond_3a

    if-nez v14, :cond_3d

    :cond_3a
    if-eqz v13, :cond_3b

    sget-object v46, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v46

    if-ne v12, v0, :cond_3d

    :cond_3b
    const/4 v5, 0x1

    .line 10595
    .local v5, canHold:Z
    :goto_17
    if-eqz v39, :cond_3e

    .line 10596
    const v46, 0x7f0e006f

    move-object/from16 v0, v32

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 10597
    const v46, 0x2080a19

    move-object/from16 v0, v32

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 10602
    :goto_18
    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_11

    .line 10592
    .end local v5           #canHold:Z
    .end local v39           #onHold:Z
    :cond_3c
    const/16 v39, 0x0

    goto :goto_16

    .line 10593
    .restart local v39       #onHold:Z
    :cond_3d
    const/4 v5, 0x0

    goto :goto_17

    .line 10599
    .restart local v5       #canHold:Z
    :cond_3e
    const v46, 0x2080a18

    move-object/from16 v0, v32

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 10600
    const v46, 0x7f0e0251

    move-object/from16 v0, v32

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_18

    .line 10626
    .end local v5           #canHold:Z
    .end local v39           #onHold:Z
    :cond_3f
    const/16 v46, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_12

    .line 10643
    :cond_40
    const/16 v46, 0x1

    :try_start_1
    move-object/from16 v0, v31

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_13

    .line 10645
    :catch_0
    move-exception v9

    .line 10646
    .local v9, e:Ljava/lang/Exception;
    const-string v46, "InCallScreen"

    const-string v47, "Can\'t get CS LockScreen status"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 10660
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v16       #helper:Lcom/android/phone/util/VoiceRecorderHelper;
    :cond_41
    const v46, 0x7f0e00ac

    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_14

    .line 10663
    :cond_42
    const/16 v46, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_14
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1336
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "onResume()..."

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1337
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1340
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1341
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 1346
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1499
    :cond_2
    :goto_0
    return-void

    .line 1353
    :cond_3
    const/4 v1, 0x1

    .line 1354
    .local v1, dismissedKeyGuard:Z
    sget-boolean v4, Lcom/android/phone/util/BuildUtils;->INCOMING_CALL_3D_LOCKSCREEN:Z

    if-eqz v4, :cond_4

    .line 1356
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->onlyRinging(Lcom/android/internal/telephony/CallManager;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1357
    const/4 v1, 0x0

    .line 1360
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 1364
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/phone/NotificationMgr;->handleInCallGlow(Z)V

    .line 1368
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->quickLaunch()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1370
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x329

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1376
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneApp;->setPausedInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1381
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/phone/PhoneApp;->setupScreenOrientaion(Landroid/app/Activity;)Z

    .line 1384
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1386
    const-string v4, "InCallScreen"

    const-string v5, "onResume Landscape setNewRingingConnectionInKeyguardRestrictedInputMode(false)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v4, v9}, Lcom/android/phone/CallNotifier;->setNewRingingConnectionInKeyguardRestrictedInputMode(Z)V

    .line 1391
    :cond_6
    iput-boolean v8, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 1393
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1400
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v8}, Lcom/android/phone/PhoneApp;->setIgnoreTouchUserActivity(Z)V

    .line 1407
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_a

    .line 1409
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    .line 1430
    :goto_1
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1431
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v4, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1432
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/android/phone/InCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1437
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    if-eqz v4, :cond_7

    .line 1438
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcBlinkingTextView;->setTextBlinkingSleep(Z)V

    .line 1442
    :cond_7
    const/4 v3, 0x0

    .line 1446
    .local v3, handledStartupError:Z
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->quickLaunch()Z

    move-result v4

    if-nez v4, :cond_c

    .line 1448
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- onResume: initial status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1449
    :cond_8
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v5, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v4, v5, :cond_c

    .line 1450
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- onResume: failure during startup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1453
    :cond_9
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v5, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_IGNORED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-ne v4, v5, :cond_b

    .line 1454
    sget-object v4, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 1413
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v3           #handledStartupError:Z
    :cond_a
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    goto :goto_1

    .line 1462
    .restart local v2       #filter:Landroid/content/IntentFilter;
    .restart local v3       #handledStartupError:Z
    :cond_b
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->handleStartupError(Lcom/android/phone/InCallScreen$InCallInitStatus;)V

    .line 1464
    const/4 v3, 0x1

    .line 1470
    sget-object v4, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 1475
    :cond_c
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardPendingIntent:Landroid/content/Intent;

    if-eqz v4, :cond_d

    .line 1476
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v4, :cond_2

    .line 1477
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->htcCdmaCallGuardCreate()V

    goto/16 :goto_0

    .line 1482
    :cond_d
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1484
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_e

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getSkypeCallState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_e

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMuteTxRx()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1489
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCSPScallManageDialog:Landroid/app/Dialog;

    if-nez v4, :cond_e

    .line 1491
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->callWaitingDialog()V

    .line 1492
    const-string v4, "onResume()...show Resume or hang up CS call..."

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1498
    :cond_e
    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->onResumeAfterCallActivation(Z)V

    goto/16 :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 1691
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onSaveInstanceState()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1692
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1697
    return-void
.end method

.method onSendSMessageClick()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 6780
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 6781
    .local v5, ringingCall:Lcom/android/internal/telephony/Call;
    if-nez v5, :cond_1

    .line 6822
    :cond_0
    :goto_0
    return-void

    .line 6785
    :cond_1
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 6786
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_0

    .line 6790
    const/4 v2, 0x0

    .line 6791
    .local v2, number:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v6

    .line 6792
    .local v6, userDataObject:Ljava/lang/Object;
    if-eqz v6, :cond_2

    .line 6793
    instance-of v7, v6, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v7, :cond_4

    .line 6794
    check-cast v6, Lcom/android/internal/telephony/CallerInfo;

    .end local v6           #userDataObject:Ljava/lang/Object;
    iget-object v2, v6, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 6806
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 6810
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 6811
    .local v4, preference:Landroid/content/SharedPreferences;
    const-string v7, "pref_key_edit_reject_msg"

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 6815
    .local v3, openEditor:Z
    if-eqz v3, :cond_6

    .line 6816
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_3

    const-string v7, "InCallScreen"

    const-string v8, "onSendSMessageClick compose SMS"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6817
    :cond_3
    const/4 v7, 0x0

    invoke-direct {p0, v7, v2}, Lcom/android/phone/InCallScreen;->sendMessageAndEnd(ILjava/lang/String;)V

    goto :goto_0

    .line 6795
    .end local v3           #openEditor:Z
    .end local v4           #preference:Landroid/content/SharedPreferences;
    .restart local v6       #userDataObject:Ljava/lang/Object;
    :cond_4
    instance-of v7, v6, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v7, :cond_5

    .line 6796
    check-cast v6, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v6           #userDataObject:Ljava/lang/Object;
    iget-object v0, v6, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 6797
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v0, :cond_2

    .line 6798
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_1

    .line 6800
    .end local v0           #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v6       #userDataObject:Ljava/lang/Object;
    :cond_5
    instance-of v7, v6, Landroid/net/Uri;

    if-nez v7, :cond_2

    .line 6802
    instance-of v7, v6, Landroid/provider/HtcUnionContact$SimpleContactInfo;

    if-eqz v7, :cond_2

    .line 6803
    check-cast v6, Landroid/provider/HtcUnionContact$SimpleContactInfo;

    .end local v6           #userDataObject:Ljava/lang/Object;
    iget-object v2, v6, Landroid/provider/HtcUnionContact$SimpleContactInfo;->number:Ljava/lang/String;

    goto :goto_1

    .line 6819
    .restart local v3       #openEditor:Z
    .restart local v4       #preference:Landroid/content/SharedPreferences;
    :cond_6
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_7

    const-string v7, "InCallScreen"

    const-string v8, "onSendSMessageClick direct send SMS"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6820
    :cond_7
    invoke-direct {p0, v9, v2}, Lcom/android/phone/InCallScreen;->sendMessageAndEnd(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 6

    .prologue
    .line 1877
    const-string v2, "onStop()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1879
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1882
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1948
    :goto_0
    return-void

    .line 1888
    :cond_0
    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mBgRemoved:Z

    if-nez v2, :cond_1

    .line 1889
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1896
    :cond_1
    sget-boolean v2, Lcom/android/phone/InCallScreen;->isOTAUnsuccess:Z

    if-eqz v2, :cond_2

    .line 1897
    sget-object v3, Lcom/android/phone/InCallScreen;->mOTAToneLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1898
    const/4 v2, 0x1

    :try_start_0
    sput-boolean v2, Lcom/android/phone/InCallScreen;->isOnStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1900
    :try_start_1
    sget-object v2, Lcom/android/phone/InCallScreen;->mOTAToneLock:Ljava/lang/Object;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1904
    :goto_1
    const/4 v2, 0x0

    :try_start_2
    sput-boolean v2, Lcom/android/phone/InCallScreen;->isOnStop:Z

    .line 1905
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1911
    :cond_2
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 1912
    .local v1, state:Lcom/android/internal/telephony/Phone$State;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1901
    .end local v1           #state:Lcom/android/internal/telephony/Phone$State;
    :catch_0
    move-exception v0

    .line 1902
    .local v0, ex:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1905
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method onSuppServiceFailed(Landroid/os/AsyncResult;)V
    .locals 8
    .parameter "r"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3071
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneApp;->setSuppServiceRequesting(Z)V

    .line 3073
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/Phone$SuppService;

    .line 3074
    .local v3, service:Lcom/android/internal/telephony/Phone$SuppService;
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSuppServiceFailed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3077
    :cond_0
    sget-object v4, Lcom/android/phone/InCallScreen$35;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 3137
    const v0, 0x7f0e03b0

    .line 3145
    .local v0, errorMessageResId:I
    :goto_0
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v4, :cond_2

    .line 3146
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3147
    :cond_1
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 3149
    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3153
    :cond_2
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0e0090

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e025b

    invoke-virtual {v4, v5, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3160
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 3162
    iget-boolean v4, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v4, :cond_3

    .line 3163
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3164
    .local v2, launchIntent:Landroid/content/Intent;
    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.InCallScreen"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3165
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 3167
    .end local v2           #launchIntent:Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 3168
    .end local v0           #errorMessageResId:I
    :goto_1
    return-void

    .line 3083
    :pswitch_0
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v1

    .line 3085
    .local v1, hasRingingCall:Z
    if-eqz v1, :cond_4

    .line 3087
    const-string v4, "IncallScreen"

    const-string v5, "onSuppServiceFailed: SWITCH failed, but try to answer call"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x323

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 3093
    :cond_4
    const v0, 0x7f0e03b1

    .line 3094
    .restart local v0       #errorMessageResId:I
    goto :goto_0

    .line 3099
    .end local v0           #errorMessageResId:I
    .end local v1           #hasRingingCall:Z
    :pswitch_1
    const v0, 0x7f0e03b2

    .line 3100
    .restart local v0       #errorMessageResId:I
    goto :goto_0

    .line 3106
    .end local v0           #errorMessageResId:I
    :pswitch_2
    const v0, 0x7f0e03b3

    .line 3107
    .restart local v0       #errorMessageResId:I
    goto :goto_0

    .line 3112
    .end local v0           #errorMessageResId:I
    :pswitch_3
    const v0, 0x7f0e03b4

    .line 3114
    .restart local v0       #errorMessageResId:I
    invoke-static {}, Lcom/android/phone/PhoneUtils;->canMergeCalls()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 3115
    const v0, 0x7f0e00de

    goto/16 :goto_0

    .line 3117
    :cond_5
    const v0, 0x7f0e03b4

    .line 3120
    goto/16 :goto_0

    .line 3125
    .end local v0           #errorMessageResId:I
    :pswitch_4
    const v0, 0x7f0e03b5

    .line 3126
    .restart local v0       #errorMessageResId:I
    goto/16 :goto_0

    .line 3130
    .end local v0           #errorMessageResId:I
    :pswitch_5
    const v0, 0x7f0e03b6

    .line 3131
    .restart local v0       #errorMessageResId:I
    goto/16 :goto_0

    .line 3077
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 9895
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mIncomingCommandBar:Lcom/android/phone/widget/ButtonGroup;

    if-ne v1, p1, :cond_1

    .line 9896
    const v1, 0x7f08003c

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 9897
    .local v0, deferButton:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 9898
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 9914
    .end local v0           #deferButton:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 9900
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    if-ne v1, p1, :cond_2

    .line 9902
    if-eqz p2, :cond_0

    .line 9905
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/phone/PhoneApp;->setupScreenOrientaion(Landroid/app/Activity;)Z

    goto :goto_0

    .line 9910
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-ne v1, p1, :cond_0

    .line 9911
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v1, p2}, Lcom/android/phone/CallCard;->setCalendarEventPanelVisibility(I)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 2686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2688
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mIsWindowFocus:Z

    .line 2689
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2690
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->processAllowScreenOn()V

    .line 2694
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_1

    .line 2695
    const-string v0, "- onWindowFocusChanged: faking onDialerKeyUp()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2696
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 2698
    :cond_1
    return-void
.end method

.method release()V
    .locals 2

    .prologue
    .line 9171
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "InCallScreen"

    const-string v1, "release..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9173
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v0, :cond_1

    .line 9174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    .line 9177
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    if-eqz v0, :cond_2

    .line 9178
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v0}, Lcom/android/phone/widget/HtcLockScreenControl;->removeAllViews()V

    .line 9179
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mAll:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 9182
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    if-eqz v0, :cond_3

    .line 9183
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    invoke-virtual {v0}, Lcom/android/phone/HtcIncallControlPanel;->destroy()V

    .line 9185
    :cond_3
    return-void
.end method

.method requestCloseOtaFailureNotice(J)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 8074
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCloseOtaFailureNotice() with timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8075
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 8083
    return-void
.end method

.method requestCloseSpcErrorNotice(J)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 8091
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCloseSpcErrorNotice() with timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8092
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 8093
    return-void
.end method

.method requestUpdateBluetoothIndication()V
    .locals 2

    .prologue
    const/16 v1, 0x72

    .line 6519
    const-string v0, "requestUpdateBluetoothIndication()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6523
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6524
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6525
    return-void
.end method

.method requestUpdateTouchUi()V
    .locals 2

    .prologue
    const/16 v1, 0x7a

    .line 6257
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "requestUpdateTouchUi()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6259
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6260
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6261
    return-void
.end method

.method public resetInCallScreenMode()V
    .locals 1

    .prologue
    .line 8289
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "resetInCallScreenMode - InCallScreenMode set to UNDEFINED"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 8290
    :cond_0
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 8291
    return-void
.end method

.method protected searchContact()V
    .locals 2

    .prologue
    .line 3058
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3059
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3060
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3062
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 3063
    return-void
.end method

.method sendMessageAndEnd(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "type"
    .parameter "number"
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7047
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    .line 7048
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7053
    :cond_0
    if-eq p1, v5, :cond_1

    .line 7054
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 7055
    .local v0, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isNewRingingConnectionInKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7056
    iput-boolean v4, v0, Lcom/android/phone/CallNotifier;->bInKeyguardRestrictedInputMode:Z

    .line 7064
    .end local v0           #notifier:Lcom/android/phone/CallNotifier;
    :cond_1
    if-ne p1, v5, :cond_5

    .line 7065
    invoke-direct {p0, p2, p3}, Lcom/android/phone/InCallScreen;->sendMessageDirectly(Ljava/lang/String;Ljava/lang/String;)V

    .line 7066
    const v2, 0x7f0e0073

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 7069
    .local v1, toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 7071
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 7083
    .end local v1           #toast:Landroid/widget/Toast;
    :goto_0
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_2

    .line 7084
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send text, type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7086
    :cond_2
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_3

    .line 7087
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send text, number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7089
    :cond_3
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_4

    .line 7090
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send text, msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7092
    :cond_4
    return-void

    .line 7075
    :cond_5
    invoke-virtual {p0, p2, p3}, Lcom/android/phone/InCallScreen;->startComposeRejectMsg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAudioSrcMenuItemIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 9594
    iput p1, p0, Lcom/android/phone/InCallScreen;->mAudioSrcIconId:I

    .line 9595
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-eqz v0, :cond_0

    .line 9596
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    iget v1, p0, Lcom/android/phone/InCallScreen;->mAudioSrcIconId:I

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenu;->setAudioSrcMenuItemIcon(I)V

    .line 9598
    :cond_0
    return-void
.end method

.method public setButtonChecked(IZ)V
    .locals 2
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 10001
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    invoke-virtual {v1, p1}, Lcom/android/phone/widget/ButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/widget/ControlButton;

    .line 10002
    .local v0, btn:Lcom/android/phone/widget/ControlButton;
    invoke-virtual {v0}, Lcom/android/phone/widget/ControlButton;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10003
    invoke-virtual {v0, p2}, Lcom/android/phone/widget/ControlButton;->setChecked(Z)V

    .line 10005
    :cond_0
    return-void
.end method

.method setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 1195
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1199
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateCallParties()V

    .line 1201
    return-void
.end method

.method public setPowerKeyFlag(Z)V
    .locals 0
    .parameter "press"

    .prologue
    .line 8462
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mPowerKeyToRejectCall:Z

    .line 8463
    return-void
.end method

.method setVisibilityLockScreenInCallNumber(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 7913
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v0, :cond_0

    .line 7914
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {v0, p1}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->setVisibilityLockScreenInCallNumber(I)V

    .line 7915
    :cond_0
    return-void
.end method

.method showDialPad()V
    .locals 1

    .prologue
    .line 9059
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9060
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->openOrCloseKeypad()V

    .line 9062
    :cond_0
    return-void
.end method

.method public showHoldCSCallDialog()V
    .locals 2

    .prologue
    .line 9732
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "showHoldCSCallDialog()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 9733
    :cond_0
    const v0, 0x7f0e00d0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 9734
    return-void
.end method

.method startComposeRejectMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "number"
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 7096
    sget-boolean v2, Lcom/android/phone/util/BuildUtils;->INCOMING_CALL_3D_LOCKSCREEN:Z

    if-eqz v2, :cond_2

    .line 7097
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.LAUNCH_MSG_COMPOSE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7098
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 7099
    const-string v2, "dest"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7100
    const-string v2, "msg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7101
    const/high16 v2, 0x1800

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7103
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    .line 7104
    .local v1, isRestrictedMode:Z
    if-eqz v1, :cond_0

    .line 7105
    const-string v2, "InCallScreen"

    const-string v3, "request composer to dismiss keyguard..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7106
    const-string v2, "dismiss_keyguard"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7107
    const-string v2, "dismiss_keyguard_timeout"

    const/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7109
    sget-boolean v2, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_KIDZONE:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->needKidzonePwd()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7110
    const-string v2, "show_when_lock"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7113
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 7114
    if-eqz v1, :cond_1

    .line 7118
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSendRejectMsgWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 7119
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 7120
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotification()V

    .line 7121
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x32b

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7136
    .end local v1           #isRestrictedMode:Z
    :goto_0
    return-void

    .line 7123
    .restart local v1       #isRestrictedMode:Z
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_0

    .line 7127
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #isRestrictedMode:Z
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 7129
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.LAUNCH_MSG_COMPOSE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7130
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 7131
    const-string v2, "dest"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7132
    const-string v2, "msg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7133
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 7134
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_0
.end method

.method public switchHoldUnhold()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5363
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    .line 5364
    .local v0, MuteState:Z
    if-ne v0, v1, :cond_0

    .line 5365
    if-nez v0, :cond_1

    :goto_0
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 5368
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onHoldClick()V

    .line 5369
    return-void

    .line 5365
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public switchSpeakerOnOff(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 5336
    const-string v6, "InCallScreen"

    const-string v7, "switchSpeakerOnOff"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5338
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v4

    .line 5339
    .local v2, newSpeakerState:Z
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5340
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 5342
    :cond_0
    invoke-static {p1, v2, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 5345
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 5346
    .local v3, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v6, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v6, :cond_2

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v1, v4

    .line 5348
    .local v1, isSpeakerInUse:Z
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 5350
    .local v0, app:Lcom/android/phone/PhoneApp;
    if-eqz v1, :cond_3

    .line 5352
    invoke-virtual {v0, v5}, Lcom/android/phone/PhoneApp;->setIgnoreTouchUserActivity(Z)V

    .line 5359
    :goto_2
    return-void

    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #isSpeakerInUse:Z
    .end local v2           #newSpeakerState:Z
    .end local v3           #state:Lcom/android/internal/telephony/Phone$State;
    :cond_1
    move v2, v5

    .line 5338
    goto :goto_0

    .restart local v2       #newSpeakerState:Z
    .restart local v3       #state:Lcom/android/internal/telephony/Phone$State;
    :cond_2
    move v1, v5

    .line 5346
    goto :goto_1

    .line 5356
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v1       #isSpeakerInUse:Z
    :cond_3
    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneApp;->setIgnoreTouchUserActivity(Z)V

    goto :goto_2
.end method

.method updateAfterRadioTechnologyChange()V
    .locals 2

    .prologue
    .line 2177
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "InCallScreen"

    const-string v1, "updateAfterRadioTechnologyChange()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->resetInCallScreenMode()V

    .line 2184
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->unregisterForPhoneStates()V

    .line 2187
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->registerForPhoneStates()V

    .line 2188
    return-void
.end method

.method updateCallParties()V
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 1212
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 1213
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    .line 1214
    return-void
.end method

.method updateFakeBottomTaskbarAfterAnswerCall()V
    .locals 4

    .prologue
    .line 7711
    const/4 v0, 0x0

    .line 7712
    .local v0, callerId:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    if-eqz v1, :cond_0

    .line 7713
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$CallerData;->getId()Ljava/lang/String;

    move-result-object v0

    .line 7715
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7729
    :goto_0
    return-void

    .line 7718
    :cond_1
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFakeBottomTaskbarAfterAnswerCall, callerId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7719
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7720
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/CallCard;->updateFakeForegroundCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    .line 7726
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    .line 7727
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/HtcIncallControlPanel;->updateFakeScreen(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call$State;)V

    .line 7728
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateFakeBottomTaskBar()V

    goto :goto_0

    .line 7723
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/CallCard;->updateFakeForegroundCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    goto :goto_1
.end method

.method updateKeyguardPolicy(Z)V
    .locals 2
    .parameter "dismissKeyguard"

    .prologue
    const/high16 v1, 0x40

    .line 2109
    if-eqz p1, :cond_0

    .line 2110
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2114
    :goto_0
    return-void

    .line 2112
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method updateKeyguardShowWhenLockPolicy(Z)V
    .locals 2
    .parameter "showWhenLock"

    .prologue
    const/high16 v1, 0x8

    .line 2118
    sget-boolean v0, Lcom/android/phone/util/BuildUtils;->INCOMING_CALL_3D_LOCKSCREEN:Z

    if-eqz v0, :cond_0

    .line 2119
    if-eqz p1, :cond_1

    .line 2120
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2125
    :cond_0
    :goto_0
    return-void

    .line 2122
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public updateKeypadIcon()V
    .locals 5

    .prologue
    .line 6587
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    if-eqz v3, :cond_0

    .line 6588
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_1

    const v2, 0x7f08003e

    .line 6589
    .local v2, id:I
    :goto_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_2

    const v1, 0x7f0e047a

    .line 6592
    .local v1, drawable:I
    :goto_1
    sget-boolean v3, Lcom/android/phone/InCallScreen;->SWAP_CMD_BAR_ICON:Z

    if-eqz v3, :cond_3

    const v0, 0x2020007

    .line 6595
    .local v0, btnId:I
    :goto_2
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mTaskBar:Lcom/android/phone/widget/ButtonGroup;

    const v4, 0x7f0e03e6

    invoke-virtual {v3, v0, v2, v1, v4}, Lcom/android/phone/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    .line 6598
    .end local v0           #btnId:I
    .end local v1           #drawable:I
    .end local v2           #id:I
    :cond_0
    return-void

    .line 6588
    :cond_1
    const v2, 0x7f08003d

    goto :goto_0

    .line 6589
    .restart local v2       #id:I
    :cond_2
    const v1, 0x7f0e0479

    goto :goto_1

    .line 6592
    .restart local v1       #drawable:I
    :cond_3
    const v0, 0x2020006

    goto :goto_2
.end method

.method updateLockScreenInCallName(Ljava/lang/String;)V
    .locals 1
    .parameter "sName"

    .prologue
    .line 7901
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v0, :cond_0

    .line 7902
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {v0, p1}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->updateLockScreenInCallName(Ljava/lang/String;)V

    .line 7903
    :cond_0
    return-void
.end method

.method updateLockScreenInCallNumber(Ljava/lang/String;)V
    .locals 1
    .parameter "sNumber"

    .prologue
    .line 7907
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v0, :cond_0

    .line 7908
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {v0, p1}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->updateLockScreenInCallNumber(Ljava/lang/String;)V

    .line 7909
    :cond_0
    return-void
.end method

.method updateMenu()Z
    .locals 2

    .prologue
    .line 7932
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-nez v0, :cond_0

    .line 7933
    const/4 v0, 0x0

    .line 7935
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenu;->updateItems(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateMenuItems()V
    .locals 3

    .prologue
    .line 8270
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-eqz v1, :cond_0

    .line 8271
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenu;->updateItems(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    .line 8272
    .local v0, okToShowMenu:Z
    if-nez v0, :cond_0

    .line 8273
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 8276
    .end local v0           #okToShowMenu:Z
    :cond_0
    return-void
.end method

.method public updateScreen()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 4006
    const-string v8, "updateScreen()..."

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4009
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isRinging()Z

    move-result v8

    if-nez v8, :cond_0

    .line 4011
    const-string v8, "IncallScreen"

    const-string v9, "setPowerKeyFlag(false)..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4013
    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->setPowerKeyFlag(Z)V

    .line 4018
    :cond_0
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mHtcCdmaCallGuardDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v8}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4215
    :cond_1
    :goto_0
    return-void

    .line 4031
    :cond_2
    iget-boolean v8, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-eqz v8, :cond_3

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->quickLaunch()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4033
    :cond_3
    const-string v6, "- updateScreen: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4036
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateCallStatus()Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 4037
    sget-boolean v8, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v8, :cond_5

    const-string v8, "PHONE/InCallScreen_Debug"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "current call status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4042
    :cond_5
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v9, Lcom/android/phone/InCallScreen$InCallScreenMode;->INCOMING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v8, v9, :cond_6

    invoke-static {}, Lcom/android/phone/HtcCdmaPhoneApp;->htcCdmaCallGuardSetting()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {}, Lcom/android/phone/HtcCdmaPhoneApp;->isEriCallGuardEnalbe()Z

    move-result v8

    if-eqz v8, :cond_6

    sget-boolean v8, Lcom/android/phone/HtcFeatureList;->EnableCallGuard:Z

    if-nez v8, :cond_7

    :cond_6
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v9, Lcom/android/phone/InCallScreen$InCallScreenMode;->INCOMING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v8, v9, :cond_8

    invoke-virtual {p0, v11}, Lcom/android/phone/InCallScreen;->isGSMCallGuardEnable(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 4046
    :cond_7
    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->showCallguardMessage(Z)V

    .line 4053
    :cond_8
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v4, v8, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 4056
    .local v4, notifier:Lcom/android/phone/CallNotifier;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v8}, Lcom/android/phone/CallNotifier;->isNewRingingConnectionInKeyguardRestrictedInputMode()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 4057
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_b

    move v3, v6

    .line 4058
    .local v3, isHardKeyboardHidden:Z
    :goto_1
    sget-object v8, Lcom/android/phone/InCallScreen$InCallScreenMode;->INCOMING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v8, v9, :cond_9

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isDockMode()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 4059
    :cond_9
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v8, v7}, Lcom/android/phone/CallNotifier;->setNewRingingConnectionInKeyguardRestrictedInputMode(Z)V

    .line 4060
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/android/phone/PhoneApp;->setupScreenOrientaion(Landroid/app/Activity;)Z

    .line 4073
    .end local v3           #isHardKeyboardHidden:Z
    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isFinishing()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 4074
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "- updateScreen: Activity finishing! Bailing out..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    move v3, v7

    .line 4057
    goto :goto_1

    .line 4078
    :cond_c
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isRinging()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 4079
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v8, :cond_d

    .line 4080
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x322

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 4081
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 4082
    iput-object v11, p0, Lcom/android/phone/InCallScreen;->mEndCallHandlingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 4086
    :cond_d
    sget-boolean v8, Lcom/android/phone/HtcFeatureList;->EnableNBPCDSetting:Z

    if-eqz v8, :cond_e

    .line 4087
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissHBPCDDialogIfNeeded()V

    .line 4093
    :cond_e
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 4094
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v8, v7}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 4105
    :cond_f
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-eqz v7, :cond_12

    .line 4107
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_10

    const-string v7, "- updateScreen: updating menu items..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4110
    :cond_10
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateMenu()Z

    move-result v5

    .line 4112
    .local v5, okToShowMenu:Z
    if-nez v5, :cond_12

    .line 4120
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_11

    const-string v7, "- updateScreen: Tried to update menu; now need to dismiss!"

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4122
    :cond_11
    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 4126
    .end local v5           #okToShowMenu:Z
    :cond_12
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 4128
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v7, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v6, v7, :cond_1

    .line 4139
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v7, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v6, v7, :cond_1

    .line 4163
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v7, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v6, v7, :cond_13

    .line 4164
    const-string v6, "- updateScreen: call ended state (NOT updating in-call UI)..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4168
    :cond_13
    const-string v6, "- updateScreen: updating the in-call UI..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4171
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen$CallerData;->getId()Ljava/lang/String;

    move-result-object v2

    .line 4172
    .local v2, callerId:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 4173
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v6, v7, v2, v8}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 4181
    :goto_2
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    .line 4182
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateMenuButtonHint()V

    .line 4184
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateBottomControlLayout()V

    .line 4185
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    if-eqz v6, :cond_14

    .line 4186
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/phone/HtcIncallControlPanel;->updateLayout(Lcom/android/internal/telephony/Phone;)V

    .line 4190
    :cond_14
    const/4 v1, 0x0

    .line 4192
    .local v1, bkResId:I
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isGlacierTMO()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier;->isNewRingingConnectionInKeyguardRestrictedInputMode()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 4196
    :cond_15
    sget-boolean v6, Lcom/android/phone/util/BuildUtils;->SENSE_LANDSCAPE:Z

    if-eqz v6, :cond_1

    .line 4197
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mAll:Landroid/view/ViewGroup;

    const v7, 0x106000b

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 4177
    .end local v1           #bkResId:I
    :cond_16
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v6, v7, v11, v8}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_2
.end method
