.class public Lcom/android/htcdialer/Dialer;
.super Lcom/android/htcdialer/BaseSmartSearchList;
.source "Dialer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htcdialer/Dialer$ContactCardAdapter;,
        Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;,
        Lcom/android/htcdialer/Dialer$QueryHandler;,
        Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;,
        Lcom/android/htcdialer/Dialer$ListItemCache;,
        Lcom/android/htcdialer/Dialer$DialogClickListener;
    }
.end annotation


# static fields
.field private static final AUTO_SWITCH_IME:Z = true

.field private static final CALENDAR_EVENT:Z = true

.field private static final CALL_SETTINGS_CLASS_NAME:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting"

.field static final CONTACT_TYPE_CUSTOM:I = 0x6

.field static final CONTACT_TYPE_EXCHANGE:I = 0x3

.field static final CONTACT_TYPE_GOOGLE:I = 0x2

.field static final CONTACT_TYPE_LOCAL:I = 0x4

.field static final CONTACT_TYPE_PC:I = 0x5

.field static final CONTACT_TYPE_SIM:I = 0x1

.field static final CONTACT_TYPE_UNKNOWN:I = 0x0

.field private static final DEBUG:Z = false

.field static DEFAULT_CONTACT_VIEW_SIZE:I = 0x0

.field private static final DIVIDER_VISUAL:Z = true

.field private static final DLG_HINT:I = 0x2

.field private static final DLG_IP_DIAL:I = 0x1

.field private static final DTMF_TONE_TYPE_LONG:I = 0x1

.field private static final DTMF_TONE_TYPE_SHORT:I = 0x0

.field private static ENABLE_VOICE_SEARCH:Z = false

.field private static ENBABLE_HYTHEN:Z = false

.field private static final EXPANDED:Z = true

.field private static FONT_SIZE_TEMP_VIEW:Landroid/widget/TextView; = null

.field private static final HTC_IME_SERVICE:Ljava/lang/String; = "com.htc.android.htcime/.HTCIMEService"

.field private static final IP_DIAL_QUERY_TOKEN:I = 0x2

.field private static final KEY_NUMBER:Ljava/lang/String; = "number"

.field private static final MENU_ADD_AS_BLACKLIST:I = 0xd

.field private static final MENU_ARRANGE_ICONS:I = 0x10000

.field static final MENU_GO_TO_BLACKLIST:I = 0x9

.field static final MENU_ITEM_ADD_TO_CONTACT:I = 0x5

.field static final MENU_ITEM_ADD_TO_FAVES:I = 0xa

.field static final MENU_ITEM_ADD_TO_FAVORITES:I = 0x7

.field static final MENU_ITEM_EDIT_BEFORE_CALL:I = 0x4

.field static final MENU_ITEM_IP_DIAL:I = 0xc

.field static final MENU_ITEM_REMOVE_FROM_CALL_LOG:I = 0x6

.field static final MENU_ITEM_REMOVE_FROM_FAVORITES:I = 0x8

.field static final MENU_ITEM_SEND_EMAIL:I = 0x3

.field static final MENU_ITEM_SEND_SMS:I = 0x2

.field static final MENU_ITEM_SHARE_PICTURE:I = 0xb

.field static final MENU_ITEM_VIEW_CONTACT:I = 0x1

.field static final MENU_ITEM_VIEW_PERSONAL_CALL_LOG:I = 0x9

.field private static final MODE_DEFAULT_HINT:I = 0x0

.field private static final MODE_USER_EDIT:I = 0x3

.field private static final MODE_USER_INPUT:I = 0x1

.field private static final MODE_USER_SELECT:I = 0x2

.field private static final MSG_ADD_VOICEMAIL_NUMBER:I = 0x2

.field protected static final MSG_CDMA_ENTER_EMERGENCY_MODE:I = 0xf

.field protected static final MSG_CDMA_HOOK_LISTENER:I = 0x8

.field protected static final MSG_CDMA_LEAVE_EMERGENCY_MODE:I = 0xe

.field protected static final MSG_CDMA_LEAVE_POWER_SAVE_MODE:I = 0xb

.field protected static final MSG_CDMA_RADIO_TYPE_CHANGE:I = 0xa

.field protected static final MSG_CDMA_SERVICE_STATE_CHANGE:I = 0x9

.field private static final MSG_CLEAR_MISSED_CALL_NOTIFICATION:I = 0x4

.field private static final MSG_DONT_ADD_VOICEMAIL_NUMBER:I = 0x3

.field private static final MSG_EVENT_EXIT:I = 0x6

.field private static final MSG_HOME_DIGIT:I = 0xd

.field private static final MSG_MOVE_TOP:I = 0x1

.field private static final MSG_REMOVE_BG:I = 0x7

.field private static final MSG_SWITCH_DEFAULT_HINT:I = 0x5

.field static final OPTION_MENU_ITEM_ADD_TO_CONTACT:I = 0x4

.field static final OPTION_MENU_ITEM_ASSISTED_DIALING:I = 0xb

.field static final OPTION_MENU_ITEM_CALL_HISTORY:I = 0x2

.field static final OPTION_MENU_ITEM_CDMA_EXIT_EMERGENCY:I = 0x8

.field static final OPTION_MENU_ITEM_CONTACTS:I = 0x1

.field static final OPTION_MENU_ITEM_IP_DIAL:I = 0xa

.field private static final OPTION_MENU_ITEM_LOOPBACK_MODE:I = 0x35

.field private static final OPTION_MENU_ITEM_PREFIX_DIAL:I = 0x36

.field static final OPTION_MENU_ITEM_SETTINGS:I = 0x6

.field static final OPTION_MENU_ITEM_SMART_SEARCH_HIT:I = 0x7

.field static final OPTION_MENU_ITEM_SPEED_DIAL:I = 0x5

.field static final OPTION_MENU_ITEM_SWITCH_KEYPAD:I = 0xc

.field private static final OPTION_MENU_ITEM_TESTING_VIDEO_CALL:I = 0x34

.field private static final OPTION_MENU_ITEM_VIDEO_CALL:I = 0x32

.field static final OPTION_MENU_ITEM_VIEW_CONTACT:I = 0x3

.field private static final OPTION_MENU_ITEM_VOICE_CALL:I = 0x33

.field static final PERFORMANCE:Z = true

.field private static final PHONE_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field private static final PLAY_TONE_ON_CLICK:Z = true

.field private static final PLAY_TONE_ON_TOUCH_DOWN:Z = false

.field private static final REQUEST_CODE_PICKER:I = 0x6f

.field private static final REQUEST_VOICE_INPUT:I = 0x70

.field public static final RETURN_CODE_EXISTED:I = 0x2

.field public static final RETURN_CODE_NEW:I = 0x3

.field private static final SHOW_KEYPAD_BUTTON:Z = true

.field private static final SHRINKED:Z = false

.field static final SIGNAL_GO:Ljava/lang/String; = "com.htc.content.Intent.ACTION_SOCIAL_GO"

.field static final SIGNAL_PAUSE:Ljava/lang/String; = "com.htc.content.Intent.ACTION_SOCIAL_PAUSE"

.field private static final STOP_TONE:I = 0x1

.field private static final SUITABLE_FONT_SIZE_LARGER:Z = true

.field private static final SUITABLE_FONT_SIZE_SMALLER:Z = false

.field private static final SUPOORT_PAUSE_AND_WAIT:Z = true

#the value of this static final field might be set in the static constructor
.field private static final SUPPORT_LONG_CLICK:Z = false

#the value of this static final field might be set in the static constructor
.field public static final SUPPORT_VT:Z = false

.field private static final SYSTEM_STREAM_VOLUME:I = 0x7

.field private static final TAG:Ljava/lang/String; = "HtcDialer"

.field private static TEMP_TEXT_PAINT:Landroid/text/TextPaint; = null

.field private static final TONE_DURATION:I = 0x96

.field private static final TONE_RELATIVE_VOLUME:I = 0x32

.field public static USE_CHINESE_HANDWRITE_IME:Z = false

.field private static final VIBRATE_NO_REPEAT:I = -0x1

.field private static final isEnableRoamingAssist:Z

.field private static mOptions:Landroid/graphics/BitmapFactory$Options;

.field private static myContactId:J


# instance fields
.field private bReturn_MESSAGE_MOVE_TOP:Z

.field private isHandWritePadShow:Z

.field private mAccumulatorBg:Landroid/view/ViewGroup;

.field mAudioManager:Landroid/media/AudioManager;

.field private mBackspace:Landroid/view/View;

.field private mBgRemoved:Z

.field private mCalendarEventUri:Ljava/lang/String;

.field private mCdmaE911ModeHint:Landroid/widget/TextView;

.field private mCdmaE911ModeHint1:Landroid/widget/TextView;

.field private mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

.field private mCdmaE911Receiver:Lcom/android/htcdialer/CdmaE911Receiver;

.field private mCdmaPowerSaveModeHint:Landroid/widget/TextView;

.field private mCdmaPowerSaveModeHint1:Landroid/widget/TextView;

.field private mCdmaPowerSaveModeHintArea:Landroid/widget/LinearLayout;

.field private mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

.field private mConfirmBlacklistDlg:Landroid/app/Dialog;

.field private mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

.field private mContentView:Landroid/view/View;

.field private mCurConfig:Landroid/content/res/Configuration;

.field private mDTMF_TONE_TYPE:I

.field private mDialerKeypad:Lcom/android/htcdialer/widget/DialerKeypad;

.field private mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mDialpad:Landroid/view/ViewGroup;

.field private mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

.field private mDigitsMode:I

.field private mDigitsTextCache:Ljava/lang/CharSequence;

.field private mDisplayPeriod:Z

.field private mEmergencyNumbers:[Ljava/lang/String;

.field private mExtraInfoForSelectedPhoneIntent:Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;

.field private mFirstCallKeyDown:Z

.field private mFooterView:Landroid/view/View;

.field private mFormatting:Z

.field private mGestureDetectorForList:Landroid/view/GestureDetector;

.field private mHTCIMEFilter:Landroid/content/IntentFilter;

.field private mHTCIMEReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mHeadText:Landroid/widget/TextView;

.field private mHintArea:Landroid/view/View;

.field private mHomeDigitSearch:Z

.field private mIpDialCursor:Landroid/database/Cursor;

.field private mIpDialDirty:Z

.field private mIpDialObserver:Landroid/database/ContentObserver;

.field mIsEditMode:Z

.field private mIsListExpanded:Z

.field private mIsNaviOn:Z

.field private mItemScrollThread:F

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeypadGestureDetector:Landroid/view/GestureDetector;

.field private mKeypadLocked:Z

.field private mKeypadShadow:Landroid/view/View;

.field private mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

.field private mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mNeedClearText:Z

.field private mOTAFilter:Landroid/content/IntentFilter;

.field private mOnVoiceDialingClickListener:Landroid/view/View$OnClickListener;

.field private mPhoneNumberFormatting:Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;

.field public mPhoneType:I

.field private mPosOfUserSelect:I

.field private mPreIme:Ljava/lang/String;

.field private mQueryHandler:Lcom/android/htcdialer/Dialer$QueryHandler;

.field private mRandom:Ljava/util/Random;

.field private mSaveContactView:Landroid/view/View;

.field private mSaveToCotnactDialog:Landroid/app/Dialog;

.field private mSearchBroughtNumber:Z

.field private mShowKeypad:Landroid/view/View;

.field private mSwitchNumberThreshold:F

.field private mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

.field private mTmpIpPostfix:Ljava/lang/String;

.field private mVTHelper:Lcom/android/htcdialer/util/VTUtils$VTHelper;

.field private misHandlingMultipleStartKey:Z

.field private otaDialog:Lcom/htc/widget/HtcAlertDialog;

.field private resetMultipleStarKeyFlag:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x32

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 197
    sget-boolean v0, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_VT:Z

    sput-boolean v0, Lcom/android/htcdialer/Dialer;->SUPPORT_VT:Z

    .line 201
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v4, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x9d

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v2, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/htcdialer/Dialer;->isEnableRoamingAssist:Z

    .line 406
    sput v4, Lcom/android/htcdialer/Dialer;->DEFAULT_CONTACT_VIEW_SIZE:I

    .line 481
    sput-boolean v1, Lcom/android/htcdialer/Dialer;->USE_CHINESE_HANDWRITE_IME:Z

    .line 484
    invoke-static {}, Lcom/htc/util/phone/ProjectUtils;->getSenseVersion()F

    move-result v0

    const/high16 v3, 0x4040

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5

    sget-boolean v0, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-nez v0, :cond_5

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa

    if-eq v0, v3, :cond_5

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/htcdialer/Dialer;->ENABLE_VOICE_SEARCH:Z

    .line 515
    const-wide/16 v3, 0x0

    sput-wide v3, Lcom/android/htcdialer/Dialer;->myContactId:J

    .line 551
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-eq v0, v3, :cond_1

    const-wide/high16 v3, 0x4008

    invoke-static {v3, v4}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    invoke-static {}, Lcom/android/htcdialer/util/BuildUtils$Customization;->isIpDialEnable()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/android/htcdialer/Dialer;->SUPPORT_LONG_CLICK:Z

    .line 7399
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xab

    if-ne v0, v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    sput-boolean v1, Lcom/android/htcdialer/Dialer;->ENBABLE_HYTHEN:Z

    return-void

    :cond_4
    move v0, v1

    .line 201
    goto :goto_0

    :cond_5
    move v0, v1

    .line 484
    goto :goto_1

    :cond_6
    move v0, v1

    .line 551
    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 190
    invoke-direct {p0}, Lcom/android/htcdialer/BaseSmartSearchList;-><init>()V

    .line 268
    iput-boolean v1, p0, Lcom/android/htcdialer/Dialer;->misHandlingMultipleStartKey:Z

    .line 379
    iput-object v2, p0, Lcom/android/htcdialer/Dialer;->mFooterView:Landroid/view/View;

    .line 402
    iput-object v2, p0, Lcom/android/htcdialer/Dialer;->mHeadText:Landroid/widget/TextView;

    .line 403
    iput-object v2, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    .line 408
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htcdialer/Dialer;->mPosOfUserSelect:I

    .line 411
    iput-boolean v3, p0, Lcom/android/htcdialer/Dialer;->mKeypadLocked:Z

    .line 414
    iput-boolean v1, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    .line 417
    iput-boolean v1, p0, Lcom/android/htcdialer/Dialer;->mNeedClearText:Z

    .line 424
    iput-boolean v1, p0, Lcom/android/htcdialer/Dialer;->mFirstCallKeyDown:Z

    .line 457
    iput-boolean v3, p0, Lcom/android/htcdialer/Dialer;->mIsListExpanded:Z

    .line 478
    iput-boolean v1, p0, Lcom/android/htcdialer/Dialer;->isHandWritePadShow:Z

    .line 496
    iput-boolean v1, p0, Lcom/android/htcdialer/Dialer;->mIpDialDirty:Z

    .line 502
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->mCurConfig:Landroid/content/res/Configuration;

    .line 523
    new-instance v0, Lcom/android/htcdialer/Dialer$1;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/Dialer$1;-><init>(Lcom/android/htcdialer/Dialer;)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 541
    iput-boolean v1, p0, Lcom/android/htcdialer/Dialer;->mHomeDigitSearch:Z

    .line 561
    iput-boolean v1, p0, Lcom/android/htcdialer/Dialer;->mIsNaviOn:Z

    .line 581
    iput-boolean v3, p0, Lcom/android/htcdialer/Dialer;->mSearchBroughtNumber:Z

    .line 631
    new-instance v0, Lcom/android/htcdialer/Dialer$2;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/Dialer$2;-><init>(Lcom/android/htcdialer/Dialer;)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    .line 702
    new-instance v0, Lcom/android/htcdialer/Dialer$3;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/Dialer$3;-><init>(Lcom/android/htcdialer/Dialer;)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->resetMultipleStarKeyFlag:Ljava/lang/Runnable;

    .line 708
    iput v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    .line 1204
    iput v1, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    .line 7401
    iput-boolean v1, p0, Lcom/android/htcdialer/Dialer;->mFormatting:Z

    .line 7402
    iput-object v2, p0, Lcom/android/htcdialer/Dialer;->mPhoneNumberFormatting:Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;

    .line 7462
    new-instance v0, Lcom/android/htcdialer/Dialer$24;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/Dialer$24;-><init>(Lcom/android/htcdialer/Dialer;)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->mHTCIMEReceiver:Landroid/content/BroadcastReceiver;

    .line 8230
    iput-object v2, p0, Lcom/android/htcdialer/Dialer;->mConfirmBlacklistDlg:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/htcdialer/Dialer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget v0, p0, Lcom/android/htcdialer/Dialer;->mPosOfUserSelect:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->addVoiceMailNumberPanel()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/htcdialer/Dialer;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget v0, p0, Lcom/android/htcdialer/Dialer;->mItemScrollThread:F

    return v0
.end method

.method static synthetic access$1100(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->initItemRowHeightData()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/htcdialer/Dialer;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDialpad:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/htcdialer/Dialer;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget v0, p0, Lcom/android/htcdialer/Dialer;->mSwitchNumberThreshold:F

    return v0
.end method

.method static synthetic access$1400(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->initSwitchNumberThreshold()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/Dialer$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mQueryHandler:Lcom/android/htcdialer/Dialer$QueryHandler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/htcdialer/Dialer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/widget/AccumulatorText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/htcdialer/Dialer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget v0, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->startVoiceRecognitionActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->dontAddVoiceMailNumber()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/htcdialer/Dialer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/htcdialer/Dialer;->mKeypadLocked:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/htcdialer/Dialer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer;->updateUserSelection(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/htcdialer/Dialer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer;->updateUserSelectionByPosition(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/htcdialer/Dialer;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer;->fireCallDirectly(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/htcdialer/Dialer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/htcdialer/Dialer;JZLjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 190
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/htcdialer/Dialer;->generateViewContactIntent(JZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/htcdialer/Dialer;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mSaveToCotnactDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/htcdialer/Dialer;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/htcdialer/Dialer;->mSaveToCotnactDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/htcdialer/Dialer;Ljava/lang/Object;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 190
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htcdialer/Dialer;->handleHomeDigit(Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/Dialer$ContactCardAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/htcdialer/Dialer;Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/htcdialer/Dialer;->enlargeTouchArea(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/htcdialer/Dialer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/htcdialer/Dialer;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mEmergencyNumbers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/htcdialer/Dialer;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer;->viewUnknownContactCard(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/htcdialer/Dialer;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 190
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htcdialer/Dialer;->viewContactCard(JZ)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/htcdialer/Dialer;Landroid/widget/ImageView;Lcom/android/htcdialer/Dialer$ListItemCache;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 190
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/htcdialer/Dialer;->updateImageView(Landroid/widget/ImageView;Lcom/android/htcdialer/Dialer$ListItemCache;J)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/htcdialer/Dialer;Lcom/android/htcdialer/Dialer$ListItemCache;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 190
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htcdialer/Dialer;->updateImage(Lcom/android/htcdialer/Dialer$ListItemCache;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/htcdialer/Dialer;ILcom/android/htcdialer/Dialer$ListItemCache;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/htcdialer/Dialer;->updatePhotoType(ILcom/android/htcdialer/Dialer$ListItemCache;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/htcdialer/Dialer;Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/htcdialer/Dialer;->setVisibility(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->closeIpDialCursor()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/htcdialer/Dialer;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->otaDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/htcdialer/Dialer;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/android/htcdialer/Dialer;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/htcdialer/Dialer;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/htcdialer/Dialer;->otaDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$5102(Lcom/android/htcdialer/Dialer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/android/htcdialer/Dialer;->mIpDialDirty:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/htcdialer/Dialer;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mIpDialObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/android/htcdialer/Dialer;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/htcdialer/Dialer;->mIpDialObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->requeryIpDial()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/util/PhotoUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/util/PhotoUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/util/PhotoUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/util/PhotoUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/util/PhotoUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/htcdialer/Dialer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/android/htcdialer/Dialer;->mBgRemoved:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/widget/DialerKeypad;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDialerKeypad:Lcom/android/htcdialer/widget/DialerKeypad;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/htcdialer/Dialer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTmpIpPostfix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/htcdialer/Dialer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer;->addContactToBlacklist(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/htcdialer/Dialer;Landroid/os/Message;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer;->handleCdmaMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcom/android/htcdialer/Dialer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/android/htcdialer/Dialer;->misHandlingMultipleStartKey:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->hideDialpad()V

    return-void
.end method

.method private addContactToBlacklist(I)V
    .locals 9
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    .line 8248
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 8249
    .local v0, adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    if-nez v0, :cond_1

    .line 8262
    :cond_0
    :goto_0
    return-void

    .line 8252
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htcdialer/search/SearchableObject;

    .line 8253
    .local v2, data:Lcom/android/htcdialer/search/SearchableObject;
    if-eqz v2, :cond_0

    .line 8254
    invoke-virtual {v0, v2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v1

    .line 8255
    .local v1, contact:Lcom/android/htcdialer/search/SearchableContact;
    invoke-virtual {v0, v2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v6

    .line 8256
    .local v6, phoneNumber:Ljava/lang/String;
    if-nez v1, :cond_2

    const-wide/16 v4, 0x0

    .line 8257
    .local v4, person_id:J
    :goto_1
    if-nez v1, :cond_3

    move v3, v7

    .line 8258
    .local v3, isSim:Z
    :goto_2
    invoke-static {p0, v4, v5, v3, v6}, Lcom/htc/util/contacts/BlacklistUtils;->addContactToBlacklist(Landroid/content/Context;JZLjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 8259
    const v8, 0x7f090086

    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 8256
    .end local v3           #isSim:Z
    .end local v4           #person_id:J
    :cond_2
    iget-wide v4, v1, Lcom/android/htcdialer/search/SearchableContact;->id:J

    goto :goto_1

    .line 8257
    .restart local v4       #person_id:J
    :cond_3
    iget-boolean v3, v1, Lcom/android/htcdialer/search/SearchableContact;->isSimContact:Z

    goto :goto_2
.end method

.method private addVoiceMailNumberPanel()V
    .locals 3

    .prologue
    .line 6296
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    .line 6297
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 6298
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/htcdialer/Dialer;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 6307
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6308
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6309
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    .line 6310
    return-void
.end method

.method private applyThemeBackgroundResource(ILjava/lang/String;)V
    .locals 4
    .parameter "viewId"
    .parameter "resName"

    .prologue
    .line 7933
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 7934
    .local v1, view:Landroid/view/View;
    const-string v2, "drawable"

    const/4 v3, 0x0

    invoke-static {p2, v2, v3}, Lcom/android/htcdialer/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 7938
    .local v0, resId:I
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 7939
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7943
    :cond_0
    return-void
.end method

.method private applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "resName"

    .prologue
    .line 7949
    const-string v1, "drawable"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Lcom/android/htcdialer/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 7953
    .local v0, resId:I
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 7954
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7958
    :cond_0
    return-void
.end method

.method private applyThemeOnActivityCreated()V
    .locals 2

    .prologue
    .line 7922
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "phone_accumulator_btn_bg"

    invoke-static {v0, v1}, Lcom/android/htcdialer/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 7923
    const v0, 0x202016a

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "htc_btn_dial_delete"

    invoke-static {v0, v1}, Lcom/android/htcdialer/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 7924
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v1, 0x2020006

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/widget/ButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "htc_btn_dial_delete"

    invoke-static {v0, v1}, Lcom/android/htcdialer/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 7925
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v1, 0x2020007

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/widget/ButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "htc_btn_dial_delete"

    invoke-static {v0, v1}, Lcom/android/htcdialer/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 7926
    return-void
.end method

.method private callDirectly(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 3702
    sget-boolean v7, Lcom/android/htcdialer/Dialer;->isEnableRoamingAssist:Z

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/android/htcdialer/Dialer;->isNationalRoaming()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3704
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v5

    .line 3705
    .local v5, simOperator:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v8, :cond_0

    invoke-virtual {v5, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3707
    .local v2, mcc:Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Lcom/android/htcdialer/assist/RoamingAssistMapping;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3708
    .local v1, countryCode:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 3709
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer;->parseOriginalNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 3710
    .local v3, originalNumber:Ljava/lang/String;
    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    if-ne v7, v8, :cond_2

    .line 3711
    sget-boolean v7, Lcom/android/htcdialer/Dialer;->isEnableRoamingAssist:Z

    if-eqz v7, :cond_1

    .line 3712
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3713
    .local v0, assistNumber:Ljava/lang/String;
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f090081

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090082

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f090037

    new-instance v8, Lcom/android/htcdialer/Dialer$17;

    invoke-direct {v8, p0, p1, v0}, Lcom/android/htcdialer/Dialer$17;-><init>(Lcom/android/htcdialer/Dialer;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f090038

    new-instance v8, Lcom/android/htcdialer/Dialer$16;

    invoke-direct {v8, p0, p1}, Lcom/android/htcdialer/Dialer$16;-><init>(Lcom/android/htcdialer/Dialer;Landroid/content/Intent;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    .line 3759
    .end local v0           #assistNumber:Ljava/lang/String;
    .end local v1           #countryCode:Ljava/lang/String;
    .end local v2           #mcc:Ljava/lang/String;
    .end local v3           #originalNumber:Ljava/lang/String;
    .end local v5           #simOperator:Ljava/lang/String;
    :goto_1
    return-void

    .restart local v5       #simOperator:Ljava/lang/String;
    :cond_0
    move-object v2, v6

    .line 3705
    goto :goto_0

    .line 3731
    .restart local v1       #countryCode:Ljava/lang/String;
    .restart local v2       #mcc:Ljava/lang/String;
    .restart local v3       #originalNumber:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2b

    if-ne v7, v8, :cond_2

    .line 3732
    const-string v7, "tel"

    invoke-static {v7, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3754
    .end local v1           #countryCode:Ljava/lang/String;
    .end local v2           #mcc:Ljava/lang/String;
    .end local v3           #originalNumber:Ljava/lang/String;
    .end local v5           #simOperator:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer;->fireCallDirectly(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private callOut()V
    .locals 1

    .prologue
    .line 6129
    iget v0, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    packed-switch v0, :pswitch_data_0

    .line 6136
    :goto_0
    return-void

    .line 6133
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->placeCall()V

    goto :goto_0

    .line 6129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private cancelMissedCallNotification()V
    .locals 2

    .prologue
    .line 1155
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/htcdialer/Dialer$6;

    invoke-direct {v1, p0}, Lcom/android/htcdialer/Dialer$6;-><init>(Lcom/android/htcdialer/Dialer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1197
    return-void
.end method

.method private changeSearchMode()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 7493
    const/4 v1, 0x3

    new-array v0, v1, [I

    .line 7494
    .local v0, result:[I
    sget-boolean v1, Lcom/android/htcdialer/Dialer;->ENABLE_VOICE_SEARCH:Z

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/htcdialer/Dialer;->getTaskBarRightState([IZI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7495
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v2, 0x2020007

    aget v3, v0, v5

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/htcdialer/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    .line 7496
    const/4 v1, 0x2

    aget v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->setSearchMode(I)V

    .line 7497
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/htcdialer/widget/AccumulatorText;->setText(Ljava/lang/CharSequence;)V

    .line 7499
    :cond_0
    return-void
.end method

.method private checkMMIcode(Ljava/lang/String;)Z
    .locals 7
    .parameter "phoneNumber"

    .prologue
    const/4 v2, 0x1

    .line 3668
    const-string v3, "##21#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "##67#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "##61#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "##62#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "##002#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "##004#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "*71"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "*72"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "*73"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3673
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3674
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x7f090080

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3675
    const v3, 0x7f09008b

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3676
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3677
    const v3, 0x7f090039

    invoke-virtual {p0, v3}, Lcom/android/htcdialer/Dialer;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/htcdialer/Dialer$15;

    invoke-direct {v4, p0}, Lcom/android/htcdialer/Dialer$15;-><init>(Lcom/android/htcdialer/Dialer;)V

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3683
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 3684
    .local v1, dlg:Landroid/app/Dialog;
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 3685
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3688
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #dlg:Landroid/app/Dialog;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private clickToMO()Z
    .locals 2

    .prologue
    .line 7854
    iget-boolean v0, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/htcdialer/Dialer;->USE_CHINESE_HANDWRITE_IME:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v1

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeIpDialCursor()V
    .locals 2

    .prologue
    .line 8180
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8181
    new-instance v0, Lcom/android/htcdialer/Dialer$29;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/Dialer$29;-><init>(Lcom/android/htcdialer/Dialer;)V

    .line 8191
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 8193
    .end local v0           #thread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method private contactCardPlaceCall()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 4294
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v3, v0}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htcdialer/search/SearchableObject;

    .line 4297
    .local v2, data:Lcom/android/htcdialer/search/SearchableObject;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    if-eqz v3, :cond_1

    .line 4298
    new-instance v1, Landroid/provider/HtcUnionContact$SimpleContactInfo;

    invoke-direct {v1}, Landroid/provider/HtcUnionContact$SimpleContactInfo;-><init>()V

    .line 4299
    .local v1, contactInfo:Landroid/provider/HtcUnionContact$SimpleContactInfo;
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v3, v2}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getName(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/provider/HtcUnionContact$SimpleContactInfo;->name:Ljava/lang/String;

    .line 4300
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v3, v2}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/provider/HtcUnionContact$SimpleContactInfo;->number:Ljava/lang/String;

    .line 4301
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v3, v2}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getContactId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v3

    iput-wide v3, v1, Landroid/provider/HtcUnionContact$SimpleContactInfo;->personId:J

    .line 4302
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v3, v2}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getPhoneType(Lcom/android/htcdialer/search/SearchableObject;)I

    move-result v3

    iput v3, v1, Landroid/provider/HtcUnionContact$SimpleContactInfo;->numberType:I

    .line 4303
    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v5, v2}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getPhotoId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    const/4 v0, 0x1

    .line 4305
    .local v0, bHasPhoto:Z
    :cond_0
    iput-boolean v0, v1, Landroid/provider/HtcUnionContact$SimpleContactInfo;->bHasPhoto:Z

    .line 4308
    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->placeCall(Landroid/provider/HtcUnionContact$SimpleContactInfo;)V

    .line 4311
    .end local v0           #bHasPhoto:Z
    .end local v1           #contactInfo:Landroid/provider/HtcUnionContact$SimpleContactInfo;
    :cond_1
    return-void
.end method

.method private createMissingVoicemailDialog(Landroid/os/Message;Landroid/os/Message;)Lcom/htc/widget/HtcAlertDialog;
    .locals 4
    .parameter "msg"
    .parameter "msg2"

    .prologue
    .line 6260
    const/4 v0, 0x0

    .line 6261
    .local v0, resId:I
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6262
    const v0, 0x7f090023

    .line 6267
    :goto_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090026

    new-instance v3, Lcom/android/htcdialer/Dialer$23;

    invoke-direct {v3, p0, p1}, Lcom/android/htcdialer/Dialer$23;-><init>(Lcom/android/htcdialer/Dialer;Landroid/os/Message;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090025

    new-instance v3, Lcom/android/htcdialer/Dialer$22;

    invoke-direct {v3, p0, p2}, Lcom/android/htcdialer/Dialer$22;-><init>(Lcom/android/htcdialer/Dialer;Landroid/os/Message;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/htcdialer/Dialer$21;

    invoke-direct {v2, p0, p1}, Lcom/android/htcdialer/Dialer$21;-><init>(Lcom/android/htcdialer/Dialer;Landroid/os/Message;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1

    .line 6263
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6264
    const v0, 0x7f0900af

    goto :goto_0

    .line 6266
    :cond_1
    const v0, 0x7f090024

    goto :goto_0
.end method

.method private doSpeedDial(I)Z
    .locals 10
    .parameter "location"

    .prologue
    const/4 v3, 0x0

    .line 6322
    const/4 v9, 0x0

    .line 6324
    .local v9, result:Z
    const/4 v0, 0x2

    if-gt v0, p1, :cond_2

    const/16 v0, 0x9

    if-gt p1, v0, :cond_2

    .line 6326
    invoke-static {}, Lcom/android/htcdialer/SpeedDialListActivity;->getServiceMap()Ljava/util/HashMap;

    move-result-object v7

    .line 6328
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    if-eqz v7, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6329
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->placeCall(Ljava/lang/String;)V

    .line 6331
    :cond_0
    sget-object v0, Lcom/android/htcdialer/util/SpeedDialUtils;->CONTENT_URI_LOCATION:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 6334
    .local v1, numberLoactionUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/htcdialer/util/SpeedDialUtils;->PROJECTION_MAP:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 6337
    .local v8, numberCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6339
    invoke-static {v8}, Lcom/android/htcdialer/util/SpeedDialUtils;->createContactInfo(Landroid/database/Cursor;)Landroid/provider/HtcUnionContact$SimpleContactInfo;

    move-result-object v6

    .line 6341
    .local v6, info:Landroid/provider/HtcUnionContact$SimpleContactInfo;
    if-eqz v6, :cond_1

    .line 6342
    iget-wide v2, v6, Landroid/provider/HtcUnionContact$SimpleContactInfo;->personId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 6343
    iget-object v0, v6, Landroid/provider/HtcUnionContact$SimpleContactInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->placeCall(Ljava/lang/String;)V

    .line 6349
    :goto_0
    const/4 v9, 0x1

    .line 6353
    .end local v6           #info:Landroid/provider/HtcUnionContact$SimpleContactInfo;
    :cond_1
    if-eqz v8, :cond_2

    .line 6354
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 6358
    .end local v1           #numberLoactionUri:Landroid/net/Uri;
    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v8           #numberCursor:Landroid/database/Cursor;
    :cond_2
    return v9

    .line 6345
    .restart local v1       #numberLoactionUri:Landroid/net/Uri;
    .restart local v6       #info:Landroid/provider/HtcUnionContact$SimpleContactInfo;
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    .restart local v8       #numberCursor:Landroid/database/Cursor;
    :cond_3
    iget-wide v2, v6, Landroid/provider/HtcUnionContact$SimpleContactInfo;->personId:J

    invoke-virtual {p0, v2, v3}, Lcom/android/htcdialer/Dialer;->hasPhoto(J)Z

    move-result v0

    iput-boolean v0, v6, Landroid/provider/HtcUnionContact$SimpleContactInfo;->bHasPhoto:Z

    .line 6346
    invoke-virtual {p0, v6}, Lcom/android/htcdialer/Dialer;->placeCall(Landroid/provider/HtcUnionContact$SimpleContactInfo;)V

    goto :goto_0
.end method

.method private dontAddVoiceMailNumber()V
    .locals 1

    .prologue
    .line 6313
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 6314
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 6315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 6317
    :cond_0
    return-void
.end method

.method private editNumberBeforeCall(Ljava/lang/String;I)V
    .locals 4
    .parameter "number"
    .parameter "select"

    .prologue
    .line 4020
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4036
    :goto_0
    return-void

    .line 4022
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4027
    .local v0, dialerEditor:Landroid/content/Intent;
    const-string v1, "edit_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4028
    const-string v1, "SelectionStart"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4033
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->onEditNumberIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private editNumberWithIpDialPrefix()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 7624
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    .line 7628
    .local v1, text:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7629
    .local v0, number:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    if-ne v2, v4, :cond_0

    .line 7631
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 7634
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/htcdialer/Dialer;->editNumberWithIpDialPrefix(Ljava/lang/String;)V

    .line 7635
    return-void
.end method

.method private editNumberWithIpDialPrefix(Ljava/lang/String;)V
    .locals 4
    .parameter "number"

    .prologue
    const/4 v3, 0x1

    .line 7639
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 7655
    :goto_0
    return-void

    .line 7640
    :cond_0
    iput-object p1, p0, Lcom/android/htcdialer/Dialer;->mTmpIpPostfix:Ljava/lang/String;

    .line 7645
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 7646
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7647
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7648
    .local v1, prefix:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mTmpIpPostfix:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7649
    .local v0, ipDialNumber:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->editNumberBeforeCall(Ljava/lang/String;)V

    goto :goto_0

    .line 7648
    .end local v0           #ipDialNumber:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mTmpIpPostfix:Ljava/lang/String;

    goto :goto_1

    .line 7652
    .end local v1           #prefix:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/htcdialer/Dialer;->showDialog(I)V

    goto :goto_0
.end method

.method private enlargeTouchArea(Landroid/view/View;I)V
    .locals 2
    .parameter "delegate"
    .parameter "gap"

    .prologue
    .line 7875
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 7876
    .local v0, parent:Landroid/view/View;
    new-instance v1, Lcom/android/htcdialer/Dialer$28;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/htcdialer/Dialer$28;-><init>(Lcom/android/htcdialer/Dialer;Landroid/view/View;ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 7889
    return-void
.end method

.method private ensureLayoutPreparedBeofreOnResume()V
    .locals 3

    .prologue
    .line 1138
    const v1, 0x7f0b003c

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1140
    .local v0, topView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 1141
    const-string v1, "HtcDialer"

    const-string v2, "top view is missed. Re-assign it"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->setupContentView()V

    .line 1143
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->initInputEditor()V

    .line 1145
    :cond_0
    return-void
.end method

.method private expandListView()V
    .locals 1

    .prologue
    .line 6052
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/htcdialer/Dialer;->expandListView(Z)V

    .line 6053
    return-void
.end method

.method private expandListView(Z)V
    .locals 9
    .parameter "expand"

    .prologue
    const v8, 0x7f0a000d

    const/4 v7, 0x0

    .line 6061
    if-eqz p1, :cond_1

    const-string v4, "expanded"

    .line 6068
    .local v4, state:Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->moveSelectionToTop()V

    .line 6070
    :cond_0
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mDialerKeypad:Lcom/android/htcdialer/widget/DialerKeypad;

    invoke-virtual {v5}, Lcom/android/htcdialer/widget/DialerKeypad;->getDialKeypad()Landroid/view/View;

    move-result-object v0

    .line 6072
    .local v0, keypad:Landroid/view/View;
    iput-boolean p1, p0, Lcom/android/htcdialer/Dialer;->mIsListExpanded:Z

    .line 6074
    iget-object v5, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6075
    .local v2, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mSaveContactView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 6076
    .local v3, scParams:Landroid/view/ViewGroup$LayoutParams;
    if-eqz p1, :cond_2

    .line 6077
    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 6078
    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 6079
    const/4 v5, -0x1

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6096
    :goto_1
    iget-object v5, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6097
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mSaveContactView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6102
    return-void

    .line 6061
    .end local v0           #keypad:Landroid/view/View;
    .end local v2           #params:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3           #scParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #state:Ljava/lang/String;
    :cond_1
    const-string v4, "shrinked"

    goto :goto_0

    .line 6081
    .restart local v0       #keypad:Landroid/view/View;
    .restart local v2       #params:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v3       #scParams:Landroid/view/ViewGroup$LayoutParams;
    .restart local v4       #state:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isLandscape()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6085
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 6086
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 6087
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 6089
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6090
    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    .line 6092
    .end local v1           #metrics:Landroid/util/DisplayMetrics;
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1
.end method

.method private findViewAndSetupListener2(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 2226
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2227
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2228
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2229
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2231
    :cond_0
    return-void
.end method

.method private findViewAndSetupListener3(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 2208
    if-eqz p1, :cond_0

    .line 2209
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2210
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2211
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2214
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 2217
    :cond_0
    return-void
.end method

.method private findViewAndSetupListener3(Landroid/view/View;ILjava/lang/Integer;)V
    .locals 1
    .parameter "parent"
    .parameter "id"
    .parameter "tone"

    .prologue
    .line 2194
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2195
    .local v0, view:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/htcdialer/Dialer;->findViewAndSetupListener3(Landroid/view/View;)V

    .line 2197
    invoke-direct {p0, v0, p3}, Lcom/android/htcdialer/Dialer;->setTone(Landroid/view/View;Ljava/lang/Integer;)V

    .line 2199
    return-void
.end method

.method private fireCallDirectly(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 3786
    sget-boolean v1, Lcom/android/htcdialer/Dialer;->SUPPORT_VT:Z

    if-eqz v1, :cond_0

    .line 3787
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mVTHelper:Lcom/android/htcdialer/util/VTUtils$VTHelper;

    invoke-virtual {v1, p1}, Lcom/android/htcdialer/util/VTUtils$VTHelper;->attachCallType(Landroid/content/Intent;)V

    .line 3789
    :cond_0
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCalendarEventUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3790
    const-string v1, "com.htc.calendar.event_uri"

    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mCalendarEventUri:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3791
    const-string v1, "com.android.phone.ShowDialpad"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3792
    const-string v1, "HtcDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fireCallDirectly(): CALENDAR_EVENT mCalendarEventUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mCalendarEventUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3794
    :cond_1
    invoke-static {p1}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z

    move-result v0

    .line 3798
    .local v0, success:Z
    return-void
.end method

.method private generateSearchString(Landroid/text/Editable;)Ljava/lang/String;
    .locals 9
    .parameter "input"

    .prologue
    .line 2331
    const-string v6, ""

    .line 2332
    .local v6, searchString:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2334
    .local v2, inputString:Ljava/lang/String;
    const/16 v7, 0x2b

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_0

    .line 2335
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "12:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2336
    const/4 v7, 0x1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 2341
    .local v5, numbers:[C
    :goto_0
    move-object v0, v5

    .local v0, arr$:[C
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_1

    aget-char v4, v0, v1

    .line 2342
    .local v4, number:C
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2341
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2338
    .end local v0           #arr$:[C
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #number:C
    .end local v5           #numbers:[C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .restart local v5       #numbers:[C
    goto :goto_0

    .line 2344
    .restart local v0       #arr$:[C
    .restart local v1       #i$:I
    .restart local v3       #len$:I
    :cond_1
    return-object v6
.end method

.method private generateViewContactIntent(JZLjava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "personId"
    .parameter "isSIM"
    .parameter "tab"

    .prologue
    .line 8208
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 8211
    .local v1, uriLookup:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 8212
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8213
    if-eqz p3, :cond_0

    .line 8214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.anddroid.contacts.sim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 8218
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 8223
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8224
    const-string v2, "DefaultTab"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8226
    :cond_1
    return-object v0
.end method

.method private static getBitmapOptions(Landroid/graphics/Bitmap;)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    .line 604
    sget-object v0, Lcom/android/htcdialer/Dialer;->mOptions:Landroid/graphics/BitmapFactory$Options;

    if-nez v0, :cond_0

    .line 605
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/htcdialer/Dialer;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 606
    sget-object v0, Lcom/android/htcdialer/Dialer;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const v1, 0x8000

    new-array v1, v1, [B

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 607
    sget-object v0, Lcom/android/htcdialer/Dialer;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 608
    sget-object v0, Lcom/android/htcdialer/Dialer;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 609
    sget-object v0, Lcom/android/htcdialer/Dialer;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 610
    sget-object v0, Lcom/android/htcdialer/Dialer;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 611
    if-eqz p0, :cond_0

    .line 612
    sget-object v0, Lcom/android/htcdialer/Dialer;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-object p0, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 615
    :cond_0
    sget-object v0, Lcom/android/htcdialer/Dialer;->mOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method private final getDialerPhone(I)[Lcom/android/htcdialer/search/SearchablePhone;
    .locals 3
    .parameter "position"

    .prologue
    .line 7569
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 7570
    .local v0, adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/search/SearchableObject;

    .line 7571
    .local v1, data:Lcom/android/htcdialer/search/SearchableObject;
    invoke-virtual {v0, v1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContactPhones(Lcom/android/htcdialer/search/SearchableObject;)[Lcom/android/htcdialer/search/SearchablePhone;

    move-result-object v2

    return-object v2
.end method

.method private getIpDialItemCount()I
    .locals 1

    .prologue
    .line 7748
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 7749
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 7751
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNumberByPosition(I)Ljava/lang/String;
    .locals 3
    .parameter "itemPos"

    .prologue
    .line 3990
    const-string v2, ""

    .line 3991
    .local v2, number:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 3992
    .local v0, adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/search/SearchableObject;

    .line 3993
    .local v1, data:Lcom/android/htcdialer/search/SearchableObject;
    if-eqz v1, :cond_0

    .line 3994
    invoke-virtual {v0, v1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v2

    .line 3996
    :cond_0
    return-object v2
.end method

.method private getTone(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 8383
    if-eqz p1, :cond_0

    .line 8384
    const v1, 0x7f0b0021

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 8385
    .local v0, td:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 8386
    check-cast v0, Ljava/lang/Integer;

    .end local v0           #td:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 8389
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private handleCdmaMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 8064
    const/4 v0, 0x1

    .line 8065
    .local v0, comsumed:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 8120
    :pswitch_0
    const/4 v0, 0x0

    .line 8123
    :cond_0
    :goto_0
    return v0

    .line 8069
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/htcdialer/Dialer;->mDisplayPeriod:Z

    if-eqz v1, :cond_0

    .line 8070
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    if-nez v1, :cond_1

    .line 8071
    new-instance v1, Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    iget-object v2, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Lcom/android/htcdialer/CdmaPhoneStateReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    .line 8073
    :cond_1
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->onListenChanging(Z)V

    goto :goto_0

    .line 8078
    :pswitch_2
    iget v1, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    if-nez v1, :cond_0

    .line 8079
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->switchDigitsMode_CDMA_DEFAULT_HINT()V

    goto :goto_0

    .line 8084
    :pswitch_3
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    if-eqz v1, :cond_0

    .line 8085
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->radioChange(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8086
    iget v1, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    invoke-direct {p0, v1}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    goto :goto_0

    .line 8092
    :pswitch_4
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    if-eqz v1, :cond_0

    .line 8093
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    invoke-virtual {v1}, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->leavePowerSaveModeSend()V

    goto :goto_0

    .line 8099
    :pswitch_5
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 8101
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8102
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 8103
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHint:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 8105
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHint:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0

    .line 8111
    :pswitch_6
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 8113
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8114
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 8065
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private handleHomeDigit(Ljava/lang/Object;II)V
    .locals 9
    .parameter "obj"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 8127
    instance-of v6, p1, Ljava/lang/String;

    if-eqz v6, :cond_3

    move-object v2, p1

    .line 8128
    check-cast v2, Ljava/lang/String;

    .line 8129
    .local v2, digit:Ljava/lang/String;
    move v1, p3

    .line 8131
    .local v1, code:I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 8132
    const/4 v5, 0x0

    .line 8133
    .local v5, speedDial:Z
    if-ne v7, p2, :cond_0

    .line 8136
    const/16 v6, 0xa

    :try_start_0
    invoke-static {v2, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 8137
    .local v4, position:I
    if-ne v7, v4, :cond_2

    .line 8138
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->callVoicemail()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8147
    .end local v4           #position:I
    :cond_0
    :goto_0
    if-nez v5, :cond_1

    .line 8151
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v6}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 8153
    if-eqz v1, :cond_1

    .line 8154
    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v8, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 8155
    .local v3, event:Landroid/view/KeyEvent;
    invoke-static {v3}, Lcom/android/htcdialer/util/KeyEventUtils;->checkKeyCodeSwitch(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v3

    .line 8157
    invoke-direct {p0, v8}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    .line 8159
    invoke-static {v3}, Lcom/android/htcdialer/util/KeyEventUtils;->getAppendingString(Landroid/view/KeyEvent;)Ljava/lang/String;

    move-result-object v0

    .line 8160
    .local v0, append:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v6}, Lcom/android/htcdialer/search/SearchModule;->clearClicked()V

    .line 8161
    iget-object v6, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v6, v0}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 8163
    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    .line 8165
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getInputEditor()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v1, v3}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 8172
    .end local v0           #append:Ljava/lang/String;
    .end local v1           #code:I
    .end local v2           #digit:Ljava/lang/String;
    .end local v3           #event:Landroid/view/KeyEvent;
    .end local v5           #speedDial:Z
    :cond_1
    :goto_1
    return-void

    .line 8140
    .restart local v1       #code:I
    .restart local v2       #digit:Ljava/lang/String;
    .restart local v4       #position:I
    .restart local v5       #speedDial:Z
    :cond_2
    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/htcdialer/Dialer;->doSpeedDial(I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    goto :goto_0

    .line 8170
    .end local v1           #code:I
    .end local v2           #digit:Ljava/lang/String;
    .end local v4           #position:I
    .end local v5           #speedDial:Z
    :cond_3
    const-string v6, "HtcDialer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown home digit type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8142
    .restart local v1       #code:I
    .restart local v2       #digit:Ljava/lang/String;
    .restart local v5       #speedDial:Z
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private handleHythenAfterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "input"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 7404
    iget-boolean v2, p0, Lcom/android/htcdialer/Dialer;->mFormatting:Z

    if-nez v2, :cond_3

    .line 7405
    iput-boolean v3, p0, Lcom/android/htcdialer/Dialer;->mFormatting:Z

    .line 7406
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mPhoneNumberFormatting:Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;

    if-eqz v2, :cond_0

    .line 7407
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mPhoneNumberFormatting:Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;

    invoke-virtual {v2, p1}, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;->afterTextChanged(Landroid/text/Editable;)V

    .line 7412
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/htcdialer/Dialer;->mNeedClearText:Z

    if-nez v2, :cond_4

    .line 7413
    invoke-direct {p0, v4}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    .line 7416
    iget-boolean v2, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mDisableSmartSearch:Z

    if-ne v2, v3, :cond_1

    .line 7417
    iput-boolean v4, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mDisableSmartSearch:Z

    .line 7419
    iput-boolean v4, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    .line 7422
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 7424
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v2, v4}, Lcom/android/htcdialer/widget/AccumulatorText;->setCursorVisible(Z)V

    .line 7430
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-static {p0, v2, v3}, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7432
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v2}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 7452
    :cond_2
    :goto_1
    iput-boolean v4, p0, Lcom/android/htcdialer/Dialer;->mFormatting:Z

    .line 7454
    :cond_3
    return-void

    .line 7427
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    goto :goto_0

    .line 7435
    :cond_5
    iget-boolean v2, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mDisableSmartSearch:Z

    if-nez v2, :cond_2

    .line 7436
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 7439
    .local v1, length:I
    if-lez v1, :cond_7

    iget-object v2, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    if-eqz v2, :cond_7

    .line 7440
    iget-object v2, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v2}, Lcom/android/htcdialer/search/SearchModule;->getClicked()Ljava/lang/String;

    move-result-object v0

    .line 7441
    .local v0, keyClicked:Ljava/lang/String;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ltz v2, :cond_6

    .line 7442
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/android/htcdialer/Dialer;->search(ILjava/lang/String;)V

    .line 7448
    .end local v0           #keyClicked:Ljava/lang/String;
    :cond_6
    :goto_2
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/htcdialer/Dialer;->mPosOfUserSelect:I

    goto :goto_1

    .line 7445
    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/htcdialer/Dialer;->search(ILjava/lang/String;)V

    goto :goto_2
.end method

.method private handleMissingVoiceMailNumber()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 6226
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 6227
    .local v0, msg:Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v0, Landroid/os/Message;->what:I

    .line 6229
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 6230
    .local v1, msg2:Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    .line 6232
    invoke-direct {p0, v0, v1}, Lcom/android/htcdialer/Dialer;->createMissingVoicemailDialog(Landroid/os/Message;Landroid/os/Message;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htcdialer/Dialer;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 6236
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 6239
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 6241
    invoke-static {}, Lcom/android/htcdialer/util/BuildUtils$Customization;->isTmoProject()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6242
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const-string v4, "smile_button"

    invoke-static {v3, v4}, Lcom/android/htcdialer/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 6243
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const-string v4, "smile_button"

    invoke-static {v3, v4}, Lcom/android/htcdialer/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 6248
    :cond_0
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mMissingVoicemailDialog:Lcom/htc/widget/HtcAlertDialog;

    const v4, 0x102023a

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6251
    .local v2, title:Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 6252
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 6256
    :cond_1
    return-void
.end method

.method private hideDialpad()V
    .locals 6

    .prologue
    const v5, 0x7f0b0015

    const v4, 0x7f09009a

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 5170
    sget-boolean v0, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-eqz v0, :cond_1

    .line 5209
    :cond_0
    :goto_0
    return-void

    .line 5174
    :cond_1
    sget-boolean v0, Lcom/android/htcdialer/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5178
    :cond_2
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 5179
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->hideHandWritePanel()V

    .line 5183
    :cond_3
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDialpad:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 5184
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->expandListView()V

    .line 5186
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 5188
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDialpad:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5189
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v1, 0x2020006

    invoke-virtual {v0, v1, v5, v4, v2}, Lcom/android/htcdialer/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    .line 5194
    :cond_4
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-eqz v0, :cond_5

    .line 5195
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v1, 0x2020007

    invoke-virtual {v0, v1, v5, v4, v2}, Lcom/android/htcdialer/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    .line 5201
    :cond_5
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mShowKeypad:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 5202
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mShowKeypad:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5203
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    invoke-virtual {v0, v3}, Lcom/android/htcdialer/widget/ButtonGroup;->setVisibility(I)V

    .line 5208
    :cond_6
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mKeypadShadow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideHandWritePanel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7505
    iget-boolean v1, p0, Lcom/android/htcdialer/Dialer;->isHandWritePadShow:Z

    if-eqz v1, :cond_0

    .line 7507
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 7509
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v1}, Lcom/android/htcdialer/widget/AccumulatorText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 7510
    iput-boolean v3, p0, Lcom/android/htcdialer/Dialer;->isHandWritePadShow:Z

    .line 7511
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v1}, Lcom/android/htcdialer/widget/AccumulatorText;->clearFocus()V

    .line 7512
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-direct {p0, v1}, Lcom/android/htcdialer/Dialer;->setRequestedInputType(Landroid/widget/EditText;)V

    .line 7513
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v2, 0x2020001

    invoke-virtual {v1, v2}, Lcom/android/htcdialer/widget/ButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 7515
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private initCDMAFeature()V
    .locals 4

    .prologue
    .line 7758
    sget-boolean v1, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 7759
    :cond_0
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mAccumulatorBg:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 7760
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030002

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 7761
    .local v0, cdma_acumlator:Landroid/view/View;
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mAccumulatorBg:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7763
    const v1, 0x7f0b002f

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHintArea:Landroid/widget/LinearLayout;

    .line 7764
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHintArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 7765
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHintArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7766
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHintArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7768
    const v1, 0x7f0b0030

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHint:Landroid/widget/TextView;

    .line 7769
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHint:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 7770
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHint:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/htcdialer/Dialer;->initDigitsArea(Landroid/widget/TextView;)V

    .line 7773
    :cond_1
    const v1, 0x7f0b0031

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHint1:Landroid/widget/TextView;

    .line 7774
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHint1:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 7775
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHint1:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/htcdialer/Dialer;->initDigitsArea(Landroid/widget/TextView;)V

    .line 7778
    :cond_2
    const v1, 0x7f0b0032

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    .line 7779
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    .line 7780
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7781
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7783
    const v1, 0x7f0b0033

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHint:Landroid/widget/TextView;

    .line 7784
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHint:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 7785
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHint:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/htcdialer/Dialer;->initDigitsArea(Landroid/widget/TextView;)V

    .line 7788
    :cond_3
    const v1, 0x7f0b0034

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHint1:Landroid/widget/TextView;

    .line 7789
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHint1:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 7790
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHint1:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/htcdialer/Dialer;->initDigitsArea(Landroid/widget/TextView;)V

    .line 7796
    .end local v0           #cdma_acumlator:Landroid/view/View;
    :cond_4
    return-void
.end method

.method private initDigitsArea(Landroid/widget/TextView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 5741
    if-nez p1, :cond_0

    .line 5749
    :goto_0
    return-void

    .line 5746
    :cond_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5747
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5748
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method

.method private initForFirstCreate()V
    .locals 2

    .prologue
    .line 1272
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->initListView()V

    .line 1274
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/util/KeypadUtils;->update(Landroid/content/ContentResolver;)V

    .line 1275
    return-void
.end method

.method private final initItemRowHeightData()V
    .locals 2

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x4040

    mul-float/2addr v0, v1

    const/high16 v1, 0x40a0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/htcdialer/Dialer;->mItemScrollThread:F

    .line 972
    return-void
.end method

.method private initKeypadGestureDetector()V
    .locals 2

    .prologue
    .line 849
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/htcdialer/Dialer$4;

    invoke-direct {v1, p0}, Lcom/android/htcdialer/Dialer$4;-><init>(Lcom/android/htcdialer/Dialer;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->mKeypadGestureDetector:Landroid/view/GestureDetector;

    .line 872
    return-void
.end method

.method private initListGestureDetector()V
    .locals 2

    .prologue
    .line 875
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/htcdialer/Dialer$5;

    invoke-direct {v1, p0}, Lcom/android/htcdialer/Dialer$5;-><init>(Lcom/android/htcdialer/Dialer;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->mGestureDetectorForList:Landroid/view/GestureDetector;

    .line 968
    return-void
.end method

.method private initListView()V
    .locals 2

    .prologue
    .line 1278
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    .line 1279
    .local v0, listView:Lcom/htc/widget/HtcListView;
    if-eqz v0, :cond_0

    .line 1281
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->registerForContextMenu(Landroid/view/View;)V

    .line 1282
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 1284
    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1286
    :cond_0
    return-void
.end method

.method private final initSwitchNumberThreshold()V
    .locals 3

    .prologue
    .line 8375
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    .line 8376
    .local v0, lv:Lcom/htc/widget/HtcListView;
    if-eqz v0, :cond_0

    .line 8377
    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getWidth()I

    move-result v1

    .line 8378
    .local v1, width:I
    div-int/lit8 v2, v1, 0x4

    int-to-float v2, v2

    iput v2, p0, Lcom/android/htcdialer/Dialer;->mSwitchNumberThreshold:F

    .line 8380
    .end local v1           #width:I
    :cond_0
    return-void
.end method

.method private initTabletTitle()V
    .locals 11

    .prologue
    const v10, 0x7f0900ac

    const v9, 0x7f09001e

    .line 8016
    const v5, 0x20201ba

    invoke-virtual {p0, v5}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 8019
    .local v3, title:Landroid/view/View;
    const v5, 0x2020050

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 8020
    .local v0, imgView:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "common_icon_app_phone"

    const-string v7, "drawable"

    const-string v8, "com.android.htcdialer"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 8021
    .local v1, res:I
    if-eqz v0, :cond_0

    .line 8022
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8025
    :cond_0
    const v5, 0x2020053

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 8026
    .local v4, view:Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 8027
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(I)V

    .line 8028
    :cond_1
    const v5, 0x2020054

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #view:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 8029
    .restart local v4       #view:Landroid/widget/TextView;
    if-eqz v4, :cond_2

    .line 8030
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(I)V

    .line 8033
    :cond_2
    const-string v2, "All contacts"

    .line 8034
    .local v2, str:Ljava/lang/String;
    const v5, 0x2020055

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #view:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 8035
    .restart local v4       #view:Landroid/widget/TextView;
    if-eqz v4, :cond_3

    .line 8036
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    .line 8037
    :cond_3
    const v5, 0x2020056

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #view:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 8038
    .restart local v4       #view:Landroid/widget/TextView;
    if-eqz v4, :cond_4

    .line 8039
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    .line 8040
    :cond_4
    return-void
.end method

.method private initTaskBar()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 6183
    const v6, 0x7f0b003d

    invoke-virtual {p0, v6}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/htcdialer/widget/ButtonGroup;

    iput-object v6, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    .line 6186
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "cmd_bar_7"

    const-string v8, "layout"

    const-string v9, "com.android.htcdialer"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 6188
    .local v3, layout:I
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    invoke-virtual {v6, v3}, Lcom/android/htcdialer/widget/ButtonGroup;->setLayoutResources(I)V

    .line 6189
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v7, 0x2020001

    invoke-virtual {v6, v7}, Lcom/android/htcdialer/widget/ButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 6192
    .local v5, tv:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a007f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 6193
    .local v4, size:F
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x20a0026

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 6194
    .local v1, color:I
    invoke-virtual {v5, v10, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6195
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6197
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v7, 0x7f0b0035

    const v8, 0x7f0b0016

    const v9, 0x7f09009b

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/htcdialer/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    move-result-object v0

    .line 6200
    .local v0, btn1:Landroid/view/View;
    sget-boolean v6, Lcom/android/htcdialer/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v6, :cond_0

    .line 6201
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f07

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 6202
    .local v2, enabled:Z
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 6205
    .end local v2           #enabled:Z
    :cond_0
    invoke-direct {p0, v10}, Lcom/android/htcdialer/Dialer;->updateBarText(Z)V

    .line 6206
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->updateTaskBarRightIcon()V

    .line 6208
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    invoke-virtual {v6, p0}, Lcom/android/htcdialer/widget/ButtonGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6212
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    new-instance v7, Lcom/android/htcdialer/Dialer$20;

    invoke-direct {v7, p0}, Lcom/android/htcdialer/Dialer$20;-><init>(Lcom/android/htcdialer/Dialer;)V

    invoke-virtual {v6, v7}, Lcom/android/htcdialer/widget/ButtonGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6217
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->showTaskBar()V

    .line 6218
    return-void
.end method

.method private initVTHelper()V
    .locals 5

    .prologue
    const/16 v4, 0x33

    const/16 v3, 0x32

    .line 7800
    sget-boolean v0, Lcom/android/htcdialer/Dialer;->SUPPORT_VT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mVTHelper:Lcom/android/htcdialer/util/VTUtils$VTHelper;

    if-nez v0, :cond_0

    .line 7802
    sget-boolean v0, Lcom/android/htcdialer/util/VTUtils;->VT_TEST:Z

    if-eqz v0, :cond_1

    .line 7803
    new-instance v0, Lcom/android/htcdialer/util/VTUtils$VTHelper;

    const/16 v1, 0x34

    const/16 v2, 0x35

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/htcdialer/util/VTUtils$VTHelper;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->mVTHelper:Lcom/android/htcdialer/util/VTUtils$VTHelper;

    .line 7812
    :cond_0
    :goto_0
    return-void

    .line 7808
    :cond_1
    new-instance v0, Lcom/android/htcdialer/util/VTUtils$VTHelper;

    invoke-direct {v0, v3, v4}, Lcom/android/htcdialer/util/VTUtils$VTHelper;-><init>(II)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->mVTHelper:Lcom/android/htcdialer/util/VTUtils$VTHelper;

    goto :goto_0
.end method

.method private input(I)V
    .locals 2
    .parameter "key"

    .prologue
    .line 4813
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    if-nez v0, :cond_0

    .line 4828
    :goto_0
    return-void

    .line 4817
    :cond_0
    iget v0, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDigitsTextCache:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 4822
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigitsTextCache:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/widget/AccumulatorText;->setText(Ljava/lang/CharSequence;)V

    .line 4823
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->mDigitsTextCache:Ljava/lang/CharSequence;

    .line 4825
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    .line 4826
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    sget-object v1, Lcom/android/htcdialer/util/KeypadUtils;->SEARCH_PATTERN:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 4827
    sget-object v0, Lcom/android/htcdialer/util/KeypadUtils;->KEY_MAP:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lcom/android/htcdialer/Dialer;->keyPressed(I)V

    goto :goto_0
.end method

.method public static isNationalRoaming()Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    .line 8276
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8288
    .local v0, networkOperator:Ljava/lang/String;
    .local v1, simOperator:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 8282
    .end local v0           #networkOperator:Ljava/lang/String;
    .end local v1           #simOperator:Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 8283
    .restart local v1       #simOperator:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 8285
    .restart local v0       #networkOperator:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_0

    .line 8286
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isToHideTaskbar()Z
    .locals 2

    .prologue
    .line 1517
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1518
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1521
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isLandscape()Z

    move-result v1

    return v1
.end method

.method private keyPressed(I)V
    .locals 6
    .parameter "keyCode"

    .prologue
    const/4 v5, 0x2

    .line 4335
    iget-boolean v2, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    if-eqz v2, :cond_1

    .line 4336
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v2}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 4337
    .local v1, text:Landroid/text/Editable;
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 4339
    .local v0, pos:I
    if-nez v0, :cond_1

    .line 4341
    sget-boolean v2, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    if-ne v2, v5, :cond_1

    .line 4342
    :cond_0
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    if-eqz v2, :cond_1

    .line 4343
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    invoke-virtual {v2}, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->leavePowerSaveModeRequest()V

    .line 4355
    .end local v0           #pos:I
    .end local v1           #text:Landroid/text/Editable;
    :cond_1
    iget-boolean v2, p0, Lcom/android/htcdialer/Dialer;->mNeedClearText:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 4356
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v2}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 4358
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/htcdialer/Dialer;->mNeedClearText:Z

    .line 4363
    :cond_2
    const-string v2, "HtcDialer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User pressed key with keyCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4366
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v2, v3, p1}, Lcom/android/htcdialer/util/KeypadUtils;->keyPress(Landroid/widget/TextView;I)V

    .line 4368
    sget-boolean v2, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    if-ne v2, v5, :cond_4

    .line 4369
    :cond_3
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    if-eqz v2, :cond_4

    .line 4370
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    invoke-virtual {v2}, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->leavePowerSaveModeRequest()V

    .line 4374
    :cond_4
    return-void
.end method

.method private launchHomeDigit(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8043
    if-eqz p1, :cond_1

    .line 8044
    const-string v6, "key"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8046
    .local v1, digit:Ljava/lang/String;
    const-string v6, "key_code"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 8049
    .local v0, code:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 8050
    const-string v6, "long_press"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 8053
    .local v2, isLongClick:Z
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 8054
    .local v3, msg:Landroid/os/Message;
    if-eqz v2, :cond_0

    move v4, v5

    :cond_0
    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 8055
    iput v0, v3, Landroid/os/Message;->arg2:I

    .line 8056
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8057
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 8058
    iput-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mHomeDigitSearch:Z

    .line 8061
    .end local v0           #code:I
    .end local v1           #digit:Ljava/lang/String;
    .end local v2           #isLongClick:Z
    .end local v3           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "logString"

    .prologue
    .line 7962
    const-string v0, "HtcDialer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7963
    return-void
.end method

.method private mapFNCharToDigit(I)I
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 6142
    const/4 v0, 0x0

    .line 6143
    .local v0, nDigit:I
    sparse-switch p1, :sswitch_data_0

    .line 6175
    :goto_0
    return v0

    .line 6145
    :sswitch_0
    const/4 v0, 0x0

    .line 6146
    goto :goto_0

    .line 6148
    :sswitch_1
    const/4 v0, 0x1

    .line 6149
    goto :goto_0

    .line 6151
    :sswitch_2
    const/4 v0, 0x2

    .line 6152
    goto :goto_0

    .line 6154
    :sswitch_3
    const/4 v0, 0x3

    .line 6155
    goto :goto_0

    .line 6157
    :sswitch_4
    const/4 v0, 0x4

    .line 6158
    goto :goto_0

    .line 6160
    :sswitch_5
    const/4 v0, 0x5

    .line 6161
    goto :goto_0

    .line 6163
    :sswitch_6
    const/4 v0, 0x6

    .line 6164
    goto :goto_0

    .line 6166
    :sswitch_7
    const/4 v0, 0x7

    .line 6167
    goto :goto_0

    .line 6169
    :sswitch_8
    const/16 v0, 0x8

    .line 6170
    goto :goto_0

    .line 6172
    :sswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 6143
    nop

    :sswitch_data_0
    .sparse-switch
        0x1f -> :sswitch_9
        0x20 -> :sswitch_5
        0x21 -> :sswitch_2
        0x22 -> :sswitch_6
        0x2e -> :sswitch_3
        0x2f -> :sswitch_4
        0x33 -> :sswitch_1
        0x34 -> :sswitch_8
        0x36 -> :sswitch_7
        0x37 -> :sswitch_0
    .end sparse-switch
.end method

.method private mappedTo12KeyNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "sNumber"

    .prologue
    .line 7065
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7066
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 7067
    .local v0, c:C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 7068
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 7069
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7071
    packed-switch v0, :pswitch_data_0

    .line 7081
    :goto_1
    :pswitch_0
    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 7067
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7072
    :pswitch_1
    const/16 v0, 0x32

    goto :goto_1

    .line 7073
    :pswitch_2
    const/16 v0, 0x33

    goto :goto_1

    .line 7074
    :pswitch_3
    const/16 v0, 0x34

    goto :goto_1

    .line 7075
    :pswitch_4
    const/16 v0, 0x35

    goto :goto_1

    .line 7076
    :pswitch_5
    const/16 v0, 0x36

    goto :goto_1

    .line 7077
    :pswitch_6
    const/16 v0, 0x37

    goto :goto_1

    .line 7078
    :pswitch_7
    const/16 v0, 0x38

    goto :goto_1

    .line 7079
    :pswitch_8
    const/16 v0, 0x39

    goto :goto_1

    .line 7085
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 7071
    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method private moveSelectionToTop()V
    .locals 4

    .prologue
    .line 6108
    iget v0, p0, Lcom/android/htcdialer/Dialer;->mPosOfUserSelect:I

    if-lez v0, :cond_0

    .line 6109
    iget-boolean v0, p0, Lcom/android/htcdialer/Dialer;->bReturn_MESSAGE_MOVE_TOP:Z

    if-nez v0, :cond_0

    .line 6110
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6112
    :cond_0
    return-void
.end method

.method private needInputType()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 7861
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 7863
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->navigation:I

    if-eq v1, v2, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private okToSwitchNumber(II)Z
    .locals 4
    .parameter "pos1"
    .parameter "pos2"

    .prologue
    .line 7911
    const/4 v0, 0x0

    .line 7912
    .local v0, toSwitch:Z
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 7913
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    .line 7915
    :cond_0
    :goto_0
    const-string v1, "HtcDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "need switch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7917
    return v0

    .line 7913
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onClick(I)Z
    .locals 7
    .parameter "id"

    .prologue
    const v6, 0x2020007

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5039
    packed-switch p1, :pswitch_data_0

    .line 5085
    :goto_0
    :pswitch_0
    return v1

    .line 5042
    :pswitch_1
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->hideDialpad()V

    :goto_1
    move v1, v2

    .line 5085
    goto :goto_0

    .line 5045
    :pswitch_2
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    goto :goto_1

    .line 5048
    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/android/htcdialer/Dialer;->setSearchMode(I)V

    .line 5049
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v4, 0x7f0b001b

    const v5, 0x7f0900a0

    invoke-virtual {v3, v6, v4, v5, v1}, Lcom/android/htcdialer/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    .line 5051
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    goto :goto_1

    .line 5054
    :pswitch_4
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/htcdialer/Dialer;->setSearchMode(I)V

    .line 5055
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v4, 0x7f0b001a

    const v5, 0x7f09009f

    invoke-virtual {v3, v6, v4, v5, v1}, Lcom/android/htcdialer/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    .line 5057
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    goto :goto_1

    .line 5061
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.laputa.navi.action.SHOW_NAVI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5062
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    .line 5063
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->finish()V

    goto :goto_1

    .line 5067
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->viewContactList()V

    goto :goto_1

    .line 5070
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->viewCallHistoy()V

    goto :goto_1

    .line 5073
    :pswitch_8
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->callOut()V

    .line 5074
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->vibrate()V

    goto :goto_1

    .line 5078
    :pswitch_9
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->startVoiceRecognitionActivity()V

    goto :goto_1

    .line 5039
    :pswitch_data_0
    .packed-switch 0x7f0b0015
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method private parseOriginalNumber(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter "intent"

    .prologue
    .line 3773
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3774
    .local v0, originalNumber:Ljava/lang/String;
    const-string v2, "tel"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 3775
    .local v1, schemeLength:I
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "tel"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3777
    const-string v2, "tel"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3782
    :goto_0
    return-object v0

    .line 3780
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "number"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private placeCall(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 4259
    if-ltz p1, :cond_0

    .line 4260
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/htcdialer/Dialer;->placeCall(ILandroid/view/View;)V

    .line 4274
    :goto_0
    return-void

    .line 4262
    :cond_0
    const/4 v0, 0x0

    .line 4264
    .local v0, number:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    if-eqz v1, :cond_1

    .line 4265
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v1}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4272
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->placeCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private placeCall(ILandroid/view/View;)V
    .locals 3
    .parameter "position"
    .parameter "selectedView"

    .prologue
    .line 4277
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htcdialer/Dialer$ListItemCache;

    move-object v0, v2

    .line 4279
    .local v0, cache:Lcom/android/htcdialer/Dialer$ListItemCache;
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 4280
    .local v1, hasPhoto:Z
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/android/htcdialer/Dialer;->placeCall(IZ)V

    .line 4281
    return-void

    .line 4277
    .end local v0           #cache:Lcom/android/htcdialer/Dialer$ListItemCache;
    .end local v1           #hasPhoto:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4279
    .restart local v0       #cache:Lcom/android/htcdialer/Dialer$ListItemCache;
    :cond_1
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->mbHasPhoto:Z
    invoke-static {v0}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$2600(Lcom/android/htcdialer/Dialer$ListItemCache;)Z

    move-result v1

    goto :goto_1
.end method

.method private placeCall(IZ)V
    .locals 3
    .parameter "position"
    .parameter "hasPhoto"

    .prologue
    .line 4284
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 4285
    .local v0, adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    if-ltz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htcdialer/search/SearchableObject;

    move-object v1, v2

    .line 4286
    .local v1, data:Lcom/android/htcdialer/search/SearchableObject;
    :goto_0
    invoke-direct {p0, v1, v0, p2}, Lcom/android/htcdialer/Dialer;->placeCall(Lcom/android/htcdialer/search/SearchableObject;Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;Z)V

    .line 4288
    return-void

    .line 4285
    .end local v1           #data:Lcom/android/htcdialer/search/SearchableObject;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private placeCall(Lcom/android/htcdialer/search/SearchableObject;Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;Z)V
    .locals 3
    .parameter "data"
    .parameter "adapter"
    .parameter "hasPhoto"

    .prologue
    .line 4318
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 4319
    new-instance v0, Landroid/provider/HtcUnionContact$SimpleContactInfo;

    invoke-direct {v0}, Landroid/provider/HtcUnionContact$SimpleContactInfo;-><init>()V

    .line 4320
    .local v0, contactInfo:Landroid/provider/HtcUnionContact$SimpleContactInfo;
    invoke-virtual {p2, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getName(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->name:Ljava/lang/String;

    .line 4321
    invoke-virtual {p2, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->number:Ljava/lang/String;

    .line 4322
    invoke-virtual {p2, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContactId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->personId:J

    .line 4323
    invoke-virtual {p2, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getPhoneType(Lcom/android/htcdialer/search/SearchableObject;)I

    move-result v1

    iput v1, v0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->numberType:I

    .line 4326
    iput-boolean p3, v0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->bHasPhoto:Z

    .line 4329
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->placeCall(Landroid/provider/HtcUnionContact$SimpleContactInfo;)V

    .line 4331
    .end local v0           #contactInfo:Landroid/provider/HtcUnionContact$SimpleContactInfo;
    :cond_0
    return-void
.end method

.method private placeLastDial()V
    .locals 5

    .prologue
    .line 3596
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 3598
    .local v0, listAdapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    if-nez v0, :cond_1

    .line 3599
    const-string v3, "HtcDialer"

    const-string v4, "Invalid State - mDigitsMode=MODE_DEFAULT_HINT"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3620
    :cond_0
    :goto_0
    return-void

    .line 3602
    :cond_1
    invoke-virtual {v0}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getLastDialIntent()Landroid/content/Intent;

    move-result-object v2

    .line 3603
    .local v2, phoneIntent:Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 3606
    const-string v3, "fromDialer"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3610
    const-string v3, "home_dialing"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3613
    invoke-direct {p0, v2}, Lcom/android/htcdialer/Dialer;->callDirectly(Landroid/content/Intent;)V

    goto :goto_0

    .line 3615
    :cond_2
    invoke-virtual {v0}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getLastDialNumber()Ljava/lang/String;

    move-result-object v1

    .line 3616
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3617
    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->placeCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private playTone(I)V
    .locals 0
    .parameter "tone"

    .prologue
    .line 5261
    return-void
.end method

.method private playTone(II)V
    .locals 1
    .parameter "tone"
    .parameter "duration"

    .prologue
    .line 5249
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/htcdialer/util/KeypadUtils;->playTone(II)V

    .line 5250
    return-void
.end method

.method private processMultipleStarKey(Landroid/text/Editable;)V
    .locals 13
    .parameter "digits"

    .prologue
    const/16 v12, 0x77

    const/16 v11, 0x70

    const/4 v10, 0x1

    const/16 v9, 0x2a

    const/4 v8, 0x0

    .line 5270
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 5271
    .local v2, len:I
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 5277
    .local v3, pos:I
    iget-boolean v4, p0, Lcom/android/htcdialer/Dialer;->misHandlingMultipleStartKey:Z

    if-ne v10, v4, :cond_7

    if-lez v3, :cond_7

    .line 5280
    add-int/lit8 v0, v3, -0x1

    .line 5282
    .local v0, anchor:I
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    if-ne v9, v4, :cond_2

    .line 5283
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v4}, Lcom/android/htcdialer/search/SearchModule;->getClicked()Ljava/lang/String;

    move-result-object v1

    .line 5284
    .local v1, clicked:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5285
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "13:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/htcdialer/search/SearchModule;->setClicked(Ljava/lang/String;)V

    .line 5290
    :cond_0
    add-int/lit8 v4, v0, 0x1

    invoke-static {v11}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0, v4, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 5323
    .end local v0           #anchor:I
    .end local v1           #clicked:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_1

    .line 5324
    iget-object v4, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->resetMultipleStarKeyFlag:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5325
    iget-object v4, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->resetMultipleStarKeyFlag:Ljava/lang/Runnable;

    const-wide/16 v6, 0x4b0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5326
    iput-boolean v10, p0, Lcom/android/htcdialer/Dialer;->misHandlingMultipleStartKey:Z

    .line 5329
    :cond_1
    return-void

    .line 5293
    .restart local v0       #anchor:I
    :cond_2
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    if-ne v11, v4, :cond_4

    .line 5294
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v4}, Lcom/android/htcdialer/search/SearchModule;->getClicked()Ljava/lang/String;

    move-result-object v1

    .line 5295
    .restart local v1       #clicked:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 5296
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "14:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/htcdialer/search/SearchModule;->setClicked(Ljava/lang/String;)V

    .line 5301
    :cond_3
    add-int/lit8 v4, v0, 0x1

    invoke-static {v12}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0, v4, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 5304
    .end local v1           #clicked:Ljava/lang/String;
    :cond_4
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    if-ne v12, v4, :cond_6

    .line 5305
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v4}, Lcom/android/htcdialer/search/SearchModule;->getClicked()Ljava/lang/String;

    move-result-object v1

    .line 5306
    .restart local v1       #clicked:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 5307
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "10:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/htcdialer/search/SearchModule;->setClicked(Ljava/lang/String;)V

    .line 5312
    :cond_5
    add-int/lit8 v4, v0, 0x1

    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0, v4, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 5315
    .end local v1           #clicked:Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v5, "10:"

    invoke-virtual {v4, v5}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5316
    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 5319
    .end local v0           #anchor:I
    :cond_7
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v5, "10:"

    invoke-virtual {v4, v5}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5320
    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0
.end method

.method private profilingEditB4Call()V
    .locals 4

    .prologue
    .line 8175
    const-string v0, "edit_number_before_calling"

    const-string v1, "on"

    const-string v2, "com.android.phone"

    const-string v3, "edit_b4_call"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/util/phone/ProfilingUtils;->userProfiling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 8177
    return-void
.end method

.method private queryIpDialCursor()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 7601
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7602
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mQueryHandler:Lcom/android/htcdialer/Dialer$QueryHandler;

    const/4 v1, 0x2

    const-string v3, "content://com.android.contacts/ip_dial"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htcdialer/Dialer$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 7608
    :cond_1
    :goto_0
    return-void

    .line 7604
    :cond_2
    iget-boolean v0, p0, Lcom/android/htcdialer/Dialer;->mIpDialDirty:Z

    if-eqz v0, :cond_1

    .line 7605
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->requeryIpDial()V

    .line 7606
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htcdialer/Dialer;->mIpDialDirty:Z

    goto :goto_0
.end method

.method public static removeChar(Ljava/lang/String;C)Ljava/lang/String;
    .locals 8
    .parameter "inputString"
    .parameter "targetChar"

    .prologue
    .line 3586
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3587
    .local v6, resultString:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 3588
    const/4 v1, 0x0

    .line 3589
    .local v1, current:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v2, v1

    .end local v1           #current:I
    .local v2, current:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-char v3, v0, v4

    .line 3590
    .local v3, currentChar:C
    if-eq v3, p1, :cond_1

    add-int/lit8 v1, v2, 0x1

    .end local v2           #current:I
    .restart local v1       #current:I
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 3589
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1           #current:I
    .restart local v2       #current:I
    goto :goto_0

    .line 3592
    .end local v3           #currentChar:C
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .restart local v3       #currentChar:C
    :cond_1
    move v1, v2

    .end local v2           #current:I
    .restart local v1       #current:I
    goto :goto_1
.end method

.method private removeFavorite(J)V
    .locals 4
    .parameter "personId"

    .prologue
    .line 3399
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Lcom/htc/util/contacts/ContactsUtility;->setContactsAsFavorite(Landroid/content/ContentResolver;JZ)I

    .line 3400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3401
    .local v0, deleteContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    long-to-int v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3403
    new-instance v1, Landroid/content/Intent;

    const-string v2, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3404
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "title"

    const-string v3, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3405
    const-string v2, "contact_id_list"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3406
    const-string v2, "delete"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3407
    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->sendBroadcast(Landroid/content/Intent;)V

    .line 3408
    return-void
.end method

.method private removeViewFromParent(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "view"

    .prologue
    .line 1529
    const/4 v0, 0x0

    .line 1530
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz p1, :cond_0

    .line 1531
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0           #parent:Landroid/view/ViewGroup;
    check-cast v0, Landroid/view/ViewGroup;

    .line 1532
    .restart local v0       #parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1533
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1536
    :cond_0
    return-object v0
.end method

.method private requeryIpDial()V
    .locals 1

    .prologue
    .line 7611
    new-instance v0, Lcom/android/htcdialer/Dialer$26;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/Dialer$26;-><init>(Lcom/android/htcdialer/Dialer;)V

    .line 7618
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7619
    return-void
.end method

.method private requestOrientation()I
    .locals 2

    .prologue
    .line 1569
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isDockMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1570
    const/4 v0, 0x4

    .line 1579
    .local v0, orientation:I
    :goto_0
    return v0

    .line 1572
    .end local v0           #orientation:I
    :cond_0
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->hasKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1573
    const/4 v0, 0x5

    .restart local v0       #orientation:I
    goto :goto_0

    .line 1576
    .end local v0           #orientation:I
    :cond_1
    const/4 v0, 0x1

    .restart local v0       #orientation:I
    goto :goto_0
.end method

.method private resumeVoiceCall()V
    .locals 2

    .prologue
    .line 8270
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mVTHelper:Lcom/android/htcdialer/util/VTUtils$VTHelper;

    if-eqz v0, :cond_0

    .line 8271
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mVTHelper:Lcom/android/htcdialer/util/VTUtils$VTHelper;

    sget-object v1, Lcom/android/htcdialer/util/VTUtils$CallType;->VOICE_CALL:Lcom/android/htcdialer/util/VTUtils$CallType;

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/util/VTUtils$VTHelper;->setType(Lcom/android/htcdialer/util/VTUtils$CallType;)V

    .line 8273
    :cond_0
    return-void
.end method

.method private safeSetVisibility(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "visibility"

    .prologue
    .line 5734
    if-eqz p1, :cond_0

    .line 5735
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 5737
    :cond_0
    return-void
.end method

.method private setIMEByLocale()Z
    .locals 3

    .prologue
    .line 7535
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 7536
    .local v0, currentLocale:Ljava/util/Locale;
    if-eqz v0, :cond_1

    .line 7537
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh_HK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7540
    :cond_0
    const/4 v1, 0x1

    .line 7542
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setLayoutParams(Landroid/view/View;II)V
    .locals 3
    .parameter "view"
    .parameter "widthId"
    .parameter "heightId"

    .prologue
    .line 7986
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 7987
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 7988
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7989
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7990
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7991
    return-void
.end method

.method private setListenersForKeypadControl()V
    .locals 2

    .prologue
    .line 2136
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    new-instance v1, Lcom/android/htcdialer/Dialer$11;

    invoke-direct {v1, p0}, Lcom/android/htcdialer/Dialer$11;-><init>(Lcom/android/htcdialer/Dialer;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 2164
    return-void
.end method

.method private setPaddings(Landroid/view/View;IIII)V
    .locals 6
    .parameter "view"
    .parameter "leftId"
    .parameter "topId"
    .parameter "rightId"
    .parameter "bottomId"

    .prologue
    .line 8005
    sget-boolean v5, Lcom/android/htcdialer/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v5, :cond_0

    .line 8006
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 8007
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 8008
    .local v1, left:I
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    .line 8009
    .local v4, top:I
    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    .line 8010
    .local v3, right:I
    invoke-virtual {v2, p5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    .line 8011
    .local v0, bottom:I
    invoke-virtual {p1, v1, v4, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 8013
    .end local v0           #bottom:I
    .end local v1           #left:I
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #right:I
    .end local v4           #top:I
    :cond_0
    return-void
.end method

.method private setPanelLayoutParams()V
    .locals 4

    .prologue
    .line 7977
    sget-boolean v2, Lcom/android/htcdialer/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v2, :cond_0

    .line 7978
    const v2, 0x7f0b001d

    invoke-virtual {p0, v2}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 7979
    .local v0, panel0:Landroid/view/View;
    const v2, 0x7f0b001e

    invoke-virtual {p0, v2}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 7980
    .local v1, panel1:Landroid/view/View;
    const v2, 0x7f0a0060

    const v3, 0x7f0a0061

    invoke-direct {p0, v0, v2, v3}, Lcom/android/htcdialer/Dialer;->setLayoutParams(Landroid/view/View;II)V

    .line 7981
    const v2, 0x7f0a0062

    const v3, 0x7f0a0063

    invoke-direct {p0, v1, v2, v3}, Lcom/android/htcdialer/Dialer;->setLayoutParams(Landroid/view/View;II)V

    .line 7983
    .end local v0           #panel0:Landroid/view/View;
    .end local v1           #panel1:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setPanelPadding()V
    .locals 9

    .prologue
    .line 7994
    sget-boolean v0, Lcom/android/htcdialer/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v0, :cond_0

    .line 7995
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 7996
    .local v1, panel0:Landroid/view/View;
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 7997
    .local v8, panel1:Landroid/view/View;
    const v2, 0x7f0a0064

    const v3, 0x7f0a0065

    const v4, 0x7f0a0066

    const v5, 0x7f0a0067

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/htcdialer/Dialer;->setPaddings(Landroid/view/View;IIII)V

    .line 7999
    const v4, 0x7f0a0068

    const v5, 0x7f0a0069

    const v6, 0x7f0a006a

    const v7, 0x7f0a006b

    move-object v2, p0

    move-object v3, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/htcdialer/Dialer;->setPaddings(Landroid/view/View;IIII)V

    .line 8002
    .end local v1           #panel0:Landroid/view/View;
    .end local v8           #panel1:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setRequestedInputType(Landroid/widget/EditText;)V
    .locals 3
    .parameter "et"

    .prologue
    .line 7868
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 7869
    .local v0, type:I
    invoke-virtual {p1}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 7870
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 7872
    :cond_0
    return-void
.end method

.method private final setRoundCornerBitmapToPhoto(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "imageView"
    .parameter "bmSrc"

    .prologue
    .line 7383
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020003

    invoke-static {v1, p2, v2}, Lcom/android/htcdialer/util/ContactsUtils;->getApplyMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7384
    .local v0, bmCenterCropThumbnailWithMask:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 7385
    const/4 v0, 0x0

    .line 7396
    return-void
.end method

.method private setTone(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 1
    .parameter "v"
    .parameter "tone"

    .prologue
    .line 8393
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 8394
    const v0, 0x7f0b0021

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 8396
    :cond_0
    return-void
.end method

.method private setVisibility(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "visibility"

    .prologue
    .line 7965
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 7967
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 7969
    :cond_0
    return-void
.end method

.method private setupOnItemScrollListener()V
    .locals 1

    .prologue
    .line 2421
    new-instance v0, Lcom/android/htcdialer/Dialer$12;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/Dialer$12;-><init>(Lcom/android/htcdialer/Dialer;)V

    .line 2433
    .local v0, listener:Lcom/android/htcdialer/widget/OnItemScrollListener;
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->setOnItemScrollListener(Lcom/android/htcdialer/widget/OnItemScrollListener;)V

    .line 2434
    return-void
.end method

.method private setupScreenOreitation()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1546
    sget-boolean v2, Lcom/android/htcdialer/util/ConfigUtils;->FIXED_ORIENTATION:Z

    if-eqz v2, :cond_1

    .line 1561
    :cond_0
    :goto_0
    return v1

    .line 1549
    :cond_1
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->requestOrientation()I

    move-result v0

    .line 1551
    .local v0, orientation:I
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getRequestedOrientation()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 1555
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->isChild()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1556
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getParent()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1558
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->setRequestedOrientation(I)V

    .line 1559
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setupVoiceDialing()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2051
    sget-boolean v4, Lcom/android/htcdialer/Dialer;->ENABLE_VOICE_SEARCH:Z

    if-eqz v4, :cond_0

    .line 2052
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2053
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2055
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 2056
    new-instance v4, Lcom/android/htcdialer/Dialer$10;

    invoke-direct {v4, p0}, Lcom/android/htcdialer/Dialer$10;-><init>(Lcom/android/htcdialer/Dialer;)V

    iput-object v4, p0, Lcom/android/htcdialer/Dialer;->mOnVoiceDialingClickListener:Landroid/view/View$OnClickListener;

    .line 2072
    .end local v0           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    sget-boolean v4, Lcom/android/htcdialer/Dialer;->ENABLE_VOICE_SEARCH:Z

    if-nez v4, :cond_1

    .line 2073
    const v4, 0x7f0b0044

    invoke-virtual {p0, v4}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2074
    .local v1, hint2:Landroid/widget/TextView;
    const v4, 0x7f09004b

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2075
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2077
    .end local v1           #hint2:Landroid/widget/TextView;
    :cond_1
    return-void

    .line 2064
    .restart local v0       #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    :cond_2
    const v4, 0x7f0900ab

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 2065
    const v4, 0x7f0b0024

    invoke-virtual {p0, v4}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2066
    .local v3, speakButton:Landroid/widget/ImageView;
    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->isToHideTaskbar()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2067
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2069
    :cond_3
    sput-boolean v7, Lcom/android/htcdialer/Dialer;->ENABLE_VOICE_SEARCH:Z

    goto :goto_0
.end method

.method private shouldEnableHandWriting()Z
    .locals 1

    .prologue
    .line 8347
    sget-boolean v0, Lcom/android/htcdialer/Dialer;->USE_CHINESE_HANDWRITE_IME:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showConfirmBlockCallerDialog(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 8233
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8234
    .local v0, b:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8235
    const v1, 0x7f090083

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8236
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8237
    const v1, 0x104000a

    new-instance v2, Lcom/android/htcdialer/Dialer$30;

    invoke-direct {v2, p0, p1}, Lcom/android/htcdialer/Dialer$30;-><init>(Lcom/android/htcdialer/Dialer;I)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8242
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8243
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8244
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htcdialer/Dialer;->mConfirmBlacklistDlg:Landroid/app/Dialog;

    .line 8245
    return-void
.end method

.method private showKeypadShadow(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 6121
    const v2, 0x7f0b003e

    invoke-virtual {p0, v2}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6122
    .local v0, shadow:Landroid/view/View;
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 6123
    .local v1, visible:I
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6125
    :cond_0
    return-void

    .line 6122
    .end local v1           #visible:I
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private showNumberSelectedDialog([Lcom/android/htcdialer/search/SearchablePhone;)V
    .locals 6
    .parameter "phones"

    .prologue
    .line 7582
    array-length v4, p1

    new-array v3, v4, [Ljava/lang/String;

    .line 7583
    .local v3, numbers:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_0

    .line 7584
    aget-object v4, p1, v0

    iget-object v4, v4, Lcom/android/htcdialer/search/SearchablePhone;->number:Ljava/lang/String;

    aput-object v4, v3, v0

    .line 7583
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7586
    :cond_0
    move-object v1, v3

    .line 7588
    .local v1, items:[Ljava/lang/String;
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090034

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/htcdialer/Dialer$25;

    invoke-direct {v5, p0, v1}, Lcom/android/htcdialer/Dialer$25;-><init>(Lcom/android/htcdialer/Dialer;[Ljava/lang/String;)V

    invoke-virtual {v4, v1, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 7596
    .local v2, numberSelectedDialog:Lcom/htc/widget/HtcAlertDialog;
    return-void
.end method

.method private showTaskBar()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 8292
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    if-eqz v0, :cond_0

    .line 8293
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->isToHideTaskbar()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8294
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/widget/ButtonGroup;->setVisibility(I)V

    .line 8301
    :cond_0
    :goto_0
    return-void

    .line 8296
    :cond_1
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    invoke-virtual {v0}, Lcom/android/htcdialer/widget/ButtonGroup;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 8297
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/widget/ButtonGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private shrinkListView()V
    .locals 1

    .prologue
    .line 6056
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/htcdialer/Dialer;->expandListView(Z)V

    .line 6057
    return-void
.end method

.method private startHomeDialingActivityForResult(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 3766
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3767
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3768
    const-string v1, "com.android.htcdialer"

    const-string v2, "com.android.htcdialer.HomeDialingActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3769
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/htcdialer/Dialer;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3770
    return-void
.end method

.method private startIpDialActivity()V
    .locals 2

    .prologue
    .line 8196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8197
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "content://com.android.contacts/ip_dial"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 8198
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    .line 8199
    return-void
.end method

.method private startVoiceRecognitionActivity()V
    .locals 3

    .prologue
    .line 2080
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2081
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2083
    const/16 v1, 0x70

    invoke-virtual {p0, v0, v1}, Lcom/android/htcdialer/Dialer;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2084
    return-void
.end method

.method private stopTone()V
    .locals 0

    .prologue
    .line 5267
    return-void
.end method

.method private switchDigitsMode(I)V
    .locals 7
    .parameter "mode"

    .prologue
    const/4 v6, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/16 v2, 0x8

    .line 5829
    iget v1, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    if-ne v1, p1, :cond_6

    .line 5831
    if-nez p1, :cond_5

    .line 5839
    sget-boolean v1, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    if-ne v1, v4, :cond_1

    .line 5841
    :cond_0
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->switchDigitsMode_CDMA_DEFAULT_HINT()V

    .line 5846
    :cond_1
    iget-boolean v1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mCreated:Z

    if-eqz v1, :cond_2

    .line 5847
    iput v3, p0, Lcom/android/htcdialer/Dialer;->mPosOfUserSelect:I

    .line 5848
    iget-boolean v1, p0, Lcom/android/htcdialer/Dialer;->bReturn_MESSAGE_MOVE_TOP:Z

    if-nez v1, :cond_2

    .line 5849
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5852
    :cond_2
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5853
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    .line 5998
    :cond_3
    :goto_0
    iget v1, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    if-nez v1, :cond_4

    .line 6000
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v1

    if-eq v1, v4, :cond_4

    .line 6001
    invoke-virtual {p0, v5}, Lcom/android/htcdialer/Dialer;->setSearchMode(I)V

    .line 6002
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v1, v6}, Lcom/android/htcdialer/widget/AccumulatorText;->setCursorVisible(Z)V

    .line 6003
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    if-eqz v1, :cond_4

    .line 6004
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v2, 0x2020001

    invoke-virtual {v1, v2}, Lcom/android/htcdialer/widget/ButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 6008
    :cond_4
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->switchVoiceDialingMode()V

    .line 6010
    return-void

    .line 5857
    :cond_5
    iget-boolean v1, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    if-eqz v1, :cond_3

    .line 5858
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v1}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v2}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 5864
    :cond_6
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mAccumulatorBg:Landroid/view/ViewGroup;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mBackspace:Landroid/view/View;

    if-eqz v1, :cond_11

    .line 5867
    iput p1, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    .line 5869
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 5873
    :pswitch_0
    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    if-eqz v1, :cond_7

    .line 5874
    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v1}, Lcom/android/htcdialer/search/SearchModule;->clearClicked()V

    .line 5878
    :cond_7
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v1}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 5887
    sget-boolean v1, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v1, :cond_8

    iget v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    if-ne v1, v4, :cond_c

    .line 5889
    :cond_8
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->switchDigitsMode_CDMA_DEFAULT_HINT()V

    .line 5913
    :goto_1
    iget-boolean v1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mCreated:Z

    if-eqz v1, :cond_9

    .line 5914
    iput v3, p0, Lcom/android/htcdialer/Dialer;->mPosOfUserSelect:I

    .line 5915
    iget-boolean v1, p0, Lcom/android/htcdialer/Dialer;->bReturn_MESSAGE_MOVE_TOP:Z

    if-nez v1, :cond_9

    .line 5916
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5919
    :cond_9
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v1}, Lcom/android/htcdialer/widget/AccumulatorText;->requestFocus()Z

    .line 5922
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5923
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    .line 5927
    :cond_a
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCalendarEventUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 5928
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/htcdialer/Dialer;->mCalendarEventUri:Ljava/lang/String;

    .line 5934
    :cond_b
    iput-boolean v6, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    goto/16 :goto_0

    .line 5891
    :cond_c
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 5892
    .local v0, visible:I
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 5938
    .end local v0           #visible:I
    :pswitch_1
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5945
    sget-boolean v1, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v1, :cond_d

    iget v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    if-ne v1, v4, :cond_3

    .line 5947
    :cond_d
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHintArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_e

    .line 5948
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHintArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5950
    :cond_e
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 5951
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 5966
    :pswitch_2
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5973
    sget-boolean v1, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v1, :cond_f

    iget v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    if-ne v1, v4, :cond_3

    .line 5975
    :cond_f
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHintArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_10

    .line 5976
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHintArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5978
    :cond_10
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 5979
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 5993
    :cond_11
    const-string v1, "HtcDialer"

    const-string v2, "siwtchDigitMode: Some thing wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5869
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private switchDigitsMode_CDMA_DEFAULT_HINT()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 6014
    sget-boolean v1, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 6015
    :cond_0
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHintArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    iget-boolean v1, v1, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->isPowerSaveMode:Z

    if-eqz v1, :cond_2

    .line 6017
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHintArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6018
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6019
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHint:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 6020
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHint:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 6047
    :cond_1
    :goto_0
    return-void

    .line 6022
    :cond_2
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911Receiver:Lcom/android/htcdialer/CdmaE911Receiver;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911Receiver:Lcom/android/htcdialer/CdmaE911Receiver;

    invoke-virtual {v1}, Lcom/android/htcdialer/CdmaE911Receiver;->isEmergencyMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6024
    const-string v1, "HtcDialer"

    const-string v2, "switchDigitsMode_CDMA_DEFAULT_HINT, mCdmaE911ModeHintArea.setVisibility"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6025
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6026
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6027
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHint:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 6028
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHint:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0

    .line 6031
    :cond_3
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 6033
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 6034
    .local v0, visible:I
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6035
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHintArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    .line 6036
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHintArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6038
    :cond_4
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 6039
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHintArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private switchImeForHandwriting(Z)V
    .locals 4
    .parameter "enterHandWriting"

    .prologue
    .line 8351
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 8352
    .local v0, content:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 8353
    .local v2, nextIME:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 8354
    const-string v3, "default_input_method"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8355
    .local v1, currentIME:Ljava/lang/String;
    const-string v3, "com.htc.android.htcime/.HTCIMEService"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8356
    iput-object v1, p0, Lcom/android/htcdialer/Dialer;->mPreIme:Ljava/lang/String;

    .line 8357
    const-string v2, "com.htc.android.htcime/.HTCIMEService"

    .line 8364
    .end local v1           #currentIME:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8365
    const-string v3, "default_input_method"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 8372
    :cond_1
    return-void

    .line 8359
    :cond_2
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mPreIme:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8360
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mPreIme:Ljava/lang/String;

    .line 8361
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/htcdialer/Dialer;->mPreIme:Ljava/lang/String;

    goto :goto_0
.end method

.method private switchToDialpad()V
    .locals 1

    .prologue
    .line 2973
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->setSearchMode(I)V

    .line 2974
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    .line 2975
    return-void
.end method

.method private switchVoiceDialingMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 2087
    const v1, 0x7f0b0024

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2088
    .local v0, speakButton:Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 2089
    sget-boolean v1, Lcom/android/htcdialer/Dialer;->ENABLE_VOICE_SEARCH:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 2092
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->isToHideTaskbar()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2093
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2113
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 2114
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->setSearchMode(I)V

    .line 2125
    :cond_1
    :goto_1
    return-void

    .line 2095
    :cond_2
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mOnVoiceDialingClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->isToHideTaskbar()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2096
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mOnVoiceDialingClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2098
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2099
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2105
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->shouldEnableHandWriting()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2106
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2108
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2120
    :cond_4
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->isToHideTaskbar()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->shouldEnableHandWriting()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2121
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private toggleDialpad()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5218
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDialpad:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 5219
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDialpad:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 5220
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDialpad:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5221
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    if-eqz v0, :cond_0

    .line 5222
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v1, 0x2020006

    const v2, 0x7f0b0016

    const v3, 0x7f09009b

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/htcdialer/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    .line 5226
    :cond_0
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 5229
    :cond_1
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 5230
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleHandWritePanel()V

    .line 5231
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->expandListView()V

    .line 5240
    :goto_0
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mShowKeypad:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 5241
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mShowKeypad:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5242
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->showTaskBar()V

    .line 5246
    :cond_2
    return-void

    .line 5234
    :cond_3
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->hideHandWritePanel()V

    .line 5235
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDialerKeypad:Lcom/android/htcdialer/widget/DialerKeypad;

    invoke-virtual {v0}, Lcom/android/htcdialer/widget/DialerKeypad;->toggleKeypad()V

    .line 5236
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->shrinkListView()V

    goto :goto_0
.end method

.method private toggleHandWritePanel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7520
    iget-boolean v1, p0, Lcom/android/htcdialer/Dialer;->isHandWritePadShow:Z

    if-nez v1, :cond_0

    .line 7521
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v1}, Lcom/android/htcdialer/widget/AccumulatorText;->requestFocus()Z

    .line 7522
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    const/16 v2, 0x9a1

    invoke-virtual {v1, v2}, Lcom/android/htcdialer/widget/AccumulatorText;->setInputType(I)V

    .line 7524
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 7527
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v1}, Lcom/android/htcdialer/widget/AccumulatorText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    .line 7528
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/htcdialer/Dialer;->isHandWritePadShow:Z

    .line 7529
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v2, 0x2020001

    invoke-virtual {v1, v2}, Lcom/android/htcdialer/widget/ButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 7530
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDialerKeypad:Lcom/android/htcdialer/widget/DialerKeypad;

    sget-object v2, Lcom/android/htcdialer/widget/DialerKeypad$Type;->HANDWRITING:Lcom/android/htcdialer/widget/DialerKeypad$Type;

    invoke-virtual {v1, v2}, Lcom/android/htcdialer/widget/DialerKeypad;->toggleHandwriting(Lcom/android/htcdialer/widget/DialerKeypad$Type;)V

    .line 7532
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private updateAndRequestContactCardFocusable(Landroid/view/View;)V
    .locals 1
    .parameter "contactCard"

    .prologue
    .line 4232
    if-eqz p1, :cond_0

    .line 4233
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 4235
    :cond_0
    return-void
.end method

.method private updateAndRequestListFocusable(Lcom/htc/widget/HtcListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    .line 4217
    if-eqz p1, :cond_1

    .line 4218
    invoke-virtual {p1}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/htc/widget/HtcListView;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4219
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->setFocusable(Z)V

    .line 4221
    :cond_0
    invoke-virtual {p1}, Lcom/htc/widget/HtcListView;->requestFocus()Z

    .line 4223
    :cond_1
    return-void
.end method

.method private updateBarText(Z)V
    .locals 5
    .parameter "force"

    .prologue
    .line 7819
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/htcdialer/util/BuildUtils;->SENSE_LANDSCAPE:Z

    if-nez v0, :cond_1

    .line 7820
    sget-boolean v0, Lcom/android/htcdialer/Dialer;->SUPPORT_VT:Z

    if-eqz v0, :cond_2

    .line 7821
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mVTHelper:Lcom/android/htcdialer/util/VTUtils$VTHelper;

    if-nez v0, :cond_0

    .line 7822
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->initVTHelper()V

    .line 7824
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mVTHelper:Lcom/android/htcdialer/util/VTUtils$VTHelper;

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    invoke-virtual {v0, v1, p1}, Lcom/android/htcdialer/util/VTUtils$VTHelper;->updateBarByType(Lcom/android/htcdialer/widget/ButtonGroup;Z)V

    .line 7829
    :cond_1
    :goto_0
    return-void

    .line 7826
    :cond_2
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v1, 0x2020001

    const v2, 0x7f0b001c

    const/4 v3, 0x0

    const v4, 0x7f090030

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/htcdialer/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    goto :goto_0
.end method

.method private updateImage(Lcom/android/htcdialer/Dialer$ListItemCache;Landroid/graphics/Bitmap;I)V
    .locals 3
    .parameter "cache"
    .parameter "bitmap"
    .parameter "type"

    .prologue
    .line 5714
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->photoType:I
    invoke-static {p1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3000(Lcom/android/htcdialer/Dialer$ListItemCache;)I

    move-result v1

    if-ne v1, p3, :cond_0

    const/4 v1, 0x2

    if-ne v1, p3, :cond_1

    .line 5716
    :cond_0
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3100(Lcom/android/htcdialer/Dialer$ListItemCache;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5717
    .local v0, oldBitmap:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_2

    .line 5718
    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {p1, p2}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3102(Lcom/android/htcdialer/Dialer$ListItemCache;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 5719
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->photo:Lcom/htc/widget/HtcListItemQuickContactBadge;
    invoke-static {p1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$2900(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/htc/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5720
    const/4 v1, 0x1

    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->mbHasPhoto:Z
    invoke-static {p1, v1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$2602(Lcom/android/htcdialer/Dialer$ListItemCache;Z)Z

    .line 5727
    :goto_0
    if-eqz v0, :cond_1

    .line 5728
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 5731
    .end local v0           #oldBitmap:Landroid/graphics/Bitmap;
    :cond_1
    return-void

    .line 5722
    .restart local v0       #oldBitmap:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v1, 0x0

    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->mbHasPhoto:Z
    invoke-static {p1, v1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$2602(Lcom/android/htcdialer/Dialer$ListItemCache;Z)Z

    .line 5723
    const/4 v1, 0x0

    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {p1, v1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3102(Lcom/android/htcdialer/Dialer$ListItemCache;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 5724
    iget-object v1, p0, Lcom/android/htcdialer/app/BaseListActivity;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;

    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->photo:Lcom/htc/widget/HtcListItemQuickContactBadge;
    invoke-static {p1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$2900(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lcom/android/htcdialer/util/PhotoUtils;->setPhotoDrawableByType(Landroid/widget/ImageView;I)V

    goto :goto_0
.end method

.method private updateImageView(Landroid/widget/ImageView;Lcom/android/htcdialer/Dialer$ListItemCache;J)V
    .locals 5
    .parameter "displayView"
    .parameter "cache"
    .parameter "photoId"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 5700
    if-nez p1, :cond_0

    .line 5711
    :goto_0
    return-void

    .line 5704
    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-gtz v1, :cond_1

    .line 5705
    invoke-direct {p0, p2, v4, v3}, Lcom/android/htcdialer/Dialer;->updateImage(Lcom/android/htcdialer/Dialer$ListItemCache;Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 5707
    :cond_1
    invoke-static {v4}, Lcom/android/htcdialer/Dialer;->getBitmapOptions(Landroid/graphics/Bitmap;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    invoke-static {p3, p4, v1}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5709
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, p2, v0, v3}, Lcom/android/htcdialer/Dialer;->updateImage(Lcom/android/htcdialer/Dialer$ListItemCache;Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method private updatePanelLayout()V
    .locals 0

    .prologue
    .line 7972
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->setPanelLayoutParams()V

    .line 7973
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->setPanelPadding()V

    .line 7974
    return-void
.end method

.method private updatePhotoType(ILcom/android/htcdialer/Dialer$ListItemCache;)V
    .locals 3
    .parameter "iconType"
    .parameter "cache"

    .prologue
    .line 5680
    monitor-enter p2

    .line 5681
    :try_start_0
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->iconType:I
    invoke-static {p2}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$2800(Lcom/android/htcdialer/Dialer$ListItemCache;)I

    move-result v1

    if-eq p1, v1, :cond_1

    .line 5682
    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->iconType:I
    invoke-static {p2, p1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$2802(Lcom/android/htcdialer/Dialer$ListItemCache;I)I

    .line 5683
    sget-boolean v1, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-eqz v1, :cond_0

    .line 5684
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->photo:Lcom/htc/widget/HtcListItemQuickContactBadge;
    invoke-static {p2}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$2900(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5685
    monitor-exit p2

    .line 5697
    :goto_0
    return-void

    .line 5688
    :cond_0
    iget-object v1, p0, Lcom/android/htcdialer/app/BaseListActivity;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;

    invoke-virtual {v1, p1}, Lcom/android/htcdialer/util/PhotoUtils;->getIconDrawableByType(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5689
    .local v0, callTypeDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 5690
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 5691
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->photo:Lcom/htc/widget/HtcListItemQuickContactBadge;
    invoke-static {p2}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$2900(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5696
    .end local v0           #callTypeDrawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_1
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5693
    .restart local v0       #callTypeDrawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    :try_start_1
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->photo:Lcom/htc/widget/HtcListItemQuickContactBadge;
    invoke-static {p2}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$2900(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private updateTaskBarRightIcon()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 7485
    const/4 v1, 0x3

    new-array v0, v1, [I

    .line 7486
    .local v0, result:[I
    sget-boolean v1, Lcom/android/htcdialer/Dialer;->ENABLE_VOICE_SEARCH:Z

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/htcdialer/Dialer;->getTaskBarRightState([IZI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7487
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v2, 0x2020007

    aget v3, v0, v5

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/htcdialer/widget/ButtonGroup;->setChildTag(IIII)Landroid/view/View;

    .line 7489
    :cond_0
    return-void
.end method

.method private updateUserSelection(Z)V
    .locals 2
    .parameter "forced"

    .prologue
    .line 5759
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSelectedItemPosition()I

    move-result v0

    .line 5761
    .local v0, currentPos:I
    if-nez p1, :cond_0

    .line 5762
    iget v1, p0, Lcom/android/htcdialer/Dialer;->mPosOfUserSelect:I

    if-ne v0, v1, :cond_0

    .line 5767
    :goto_0
    return-void

    .line 5766
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/htcdialer/Dialer;->updateUserSelectionByPosition(I)V

    goto :goto_0
.end method

.method private updateUserSelectionByPosition(I)V
    .locals 9
    .parameter "position"

    .prologue
    const/4 v7, 0x1

    .line 5771
    iput p1, p0, Lcom/android/htcdialer/Dialer;->mPosOfUserSelect:I

    .line 5773
    const/4 v4, 0x0

    .line 5775
    .local v4, number:Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 5776
    .local v0, adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htcdialer/search/SearchableObject;

    .line 5778
    .local v2, data:Lcom/android/htcdialer/search/SearchableObject;
    invoke-virtual {v0, v2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v4

    .line 5779
    iget v6, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    if-ne v6, v7, :cond_0

    .line 5780
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v6}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/htcdialer/Dialer;->mDigitsTextCache:Ljava/lang/CharSequence;

    .line 5783
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mDisableSmartSearch:Z

    .line 5784
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v6, v4}, Lcom/android/htcdialer/widget/AccumulatorText;->setText(Ljava/lang/CharSequence;)V

    .line 5787
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mExtraInfoForSelectedPhoneIntent:Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;

    invoke-virtual {v6}, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;->clean()V

    .line 5788
    iget v6, p0, Lcom/android/htcdialer/Dialer;->mPosOfUserSelect:I

    if-ltz v6, :cond_2

    .line 5789
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 5790
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_1

    .line 5791
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/Dialer$ListItemCache;

    .line 5792
    .local v1, cache:Lcom/android/htcdialer/Dialer$ListItemCache;
    if-eqz v1, :cond_1

    .line 5793
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mExtraInfoForSelectedPhoneIntent:Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;

    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->mbHasPhoto:Z
    invoke-static {v1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$2600(Lcom/android/htcdialer/Dialer$ListItemCache;)Z

    move-result v7

    iput-boolean v7, v6, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;->bHasPhoto:Z

    .line 5796
    .end local v1           #cache:Lcom/android/htcdialer/Dialer$ListItemCache;
    :cond_1
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mExtraInfoForSelectedPhoneIntent:Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;

    invoke-virtual {v0, v2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getName(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;->sName:Ljava/lang/String;

    .line 5797
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mExtraInfoForSelectedPhoneIntent:Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;

    invoke-virtual {v0, v2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContactId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;->sId:Ljava/lang/String;

    .line 5798
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mExtraInfoForSelectedPhoneIntent:Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;

    invoke-virtual {v0, v2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;->sNumber:Ljava/lang/String;

    .line 5799
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mExtraInfoForSelectedPhoneIntent:Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;

    invoke-virtual {v0, v2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getPhoneType(Lcom/android/htcdialer/search/SearchableObject;)I

    move-result v7

    iput v7, v6, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;->sNumberType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5814
    .end local v0           #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    .end local v2           #data:Lcom/android/htcdialer/search/SearchableObject;
    .end local v5           #v:Landroid/view/View;
    :cond_2
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 5815
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    .line 5819
    :goto_1
    return-void

    .line 5809
    :catch_0
    move-exception v3

    .line 5810
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "HtcDialer"

    const-string v7, "updateUserSelectionByPosition"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5817
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    goto :goto_1
.end method

.method private declared-synchronized vibrate()V
    .locals 1

    .prologue
    .line 4380
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

    invoke-virtual {v0}, Lcom/android/htcdialer/util/KeypadUtils;->vibrate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4381
    monitor-exit p0

    return-void

    .line 4380
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private viewContactCard(JZ)V
    .locals 1
    .parameter "personId"
    .parameter "isSIM"

    .prologue
    .line 3895
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/htcdialer/Dialer;->viewContactCard(JZLjava/lang/String;)V

    .line 3896
    return-void
.end method

.method private viewContactCard(JZLjava/lang/String;)V
    .locals 6
    .parameter "personId"
    .parameter "isSIM"
    .parameter "tab"

    .prologue
    .line 3899
    new-instance v0, Lcom/android/htcdialer/Dialer$18;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/htcdialer/Dialer$18;-><init>(Lcom/android/htcdialer/Dialer;JZLjava/lang/String;)V

    .line 3928
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3930
    return-void
.end method

.method private viewTutorial()V
    .locals 1

    .prologue
    .line 3802
    sget-boolean v0, Lcom/android/htcdialer/util/BuildUtils;->SENSE_LANDSCAPE:Z

    if-eqz v0, :cond_0

    .line 3810
    :goto_0
    return-void

    .line 3806
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->showDialog(I)V

    .line 3809
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->cancelEditMode()V

    goto :goto_0
.end method

.method private viewUnknownContactCard(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 3933
    invoke-static {p1}, Lcom/htc/util/contacts/PhoneUtils;->getViewUnknownCardIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3934
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    .line 3935
    return-void
.end method


# virtual methods
.method addToContact(Ljava/lang/String;)V
    .locals 11
    .parameter "number"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 5090
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03001d

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 5092
    .local v1, handlerView:Landroid/view/View;
    new-instance v2, Lcom/android/htcdialer/Dialer$DialogClickListener;

    invoke-direct {v2, p0, p1}, Lcom/android/htcdialer/Dialer$DialogClickListener;-><init>(Lcom/android/htcdialer/Dialer;Ljava/lang/String;)V

    .line 5094
    .local v2, listener:Landroid/view/View$OnClickListener;
    const v6, 0x2020014

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 5095
    .local v3, numbertext:Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5097
    const v6, 0x1020019

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 5098
    .local v5, savenewbutton:Landroid/widget/Button;
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5099
    const v6, 0x102001a

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 5100
    .local v4, saveexistbutton:Landroid/widget/Button;
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5102
    const-string v6, "common_button_small"

    invoke-static {v5, v6}, Lcom/android/htcdialer/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 5103
    const-string v6, "common_button_small"

    invoke-static {v4, v6}, Lcom/android/htcdialer/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 5106
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5107
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v6, 0x7f09001f

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 5108
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 5109
    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 5110
    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 5111
    new-instance v6, Lcom/android/htcdialer/Dialer$19;

    invoke-direct {v6, p0}, Lcom/android/htcdialer/Dialer$19;-><init>(Lcom/android/htcdialer/Dialer;)V

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 5117
    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 5119
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/htcdialer/Dialer;->mSaveToCotnactDialog:Landroid/app/Dialog;

    .line 5120
    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mSaveToCotnactDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 5122
    invoke-direct {p0, v9}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    .line 5123
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .parameter "input"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2250
    sget-boolean v3, Lcom/android/htcdialer/Dialer;->ENBABLE_HYTHEN:Z

    if-eqz v3, :cond_1

    .line 2251
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer;->handleHythenAfterTextChanged(Landroid/text/Editable;)V

    .line 2325
    :cond_0
    :goto_0
    return-void

    .line 2257
    :cond_1
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v3}, Lcom/android/htcdialer/widget/AccumulatorText;->isPasteText()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2258
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v3, v5}, Lcom/android/htcdialer/widget/AccumulatorText;->setCursorVisible(Z)V

    .line 2259
    iput-boolean v5, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mDisableSmartSearch:Z

    .line 2260
    iput-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    .line 2261
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 2262
    invoke-virtual {p0, v7}, Lcom/android/htcdialer/Dialer;->setSearchMode(I)V

    .line 2269
    :cond_2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/htcdialer/Dialer;->mNeedClearText:Z

    if-nez v3, :cond_5

    .line 2270
    invoke-direct {p0, v5}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    .line 2273
    iget-boolean v3, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mDisableSmartSearch:Z

    if-ne v3, v4, :cond_4

    .line 2274
    iput-boolean v5, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mDisableSmartSearch:Z

    .line 2276
    iput-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    .line 2278
    sget-boolean v3, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 2280
    :cond_3
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v3, v5}, Lcom/android/htcdialer/widget/AccumulatorText;->setCursorVisible(Z)V

    .line 2286
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-static {p0, v3, v4}, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2288
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v3}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 2283
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    goto :goto_1

    .line 2292
    :cond_6
    iget-boolean v3, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mDisableSmartSearch:Z

    if-nez v3, :cond_0

    .line 2293
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 2296
    .local v1, length:I
    if-lez v1, :cond_b

    iget-object v3, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    if-eqz v3, :cond_b

    .line 2298
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v3

    if-eq v3, v6, :cond_7

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v3

    if-ne v3, v7, :cond_a

    .line 2302
    :cond_7
    iget-object v3, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/htcdialer/search/SearchModule;->setClicked(Ljava/lang/String;)V

    .line 2314
    :cond_8
    :goto_2
    iget-object v3, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v3}, Lcom/android/htcdialer/search/SearchModule;->getClicked()Ljava/lang/String;

    move-result-object v0

    .line 2315
    .local v0, keyClicked:Ljava/lang/String;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ltz v3, :cond_9

    .line 2316
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3, v0}, Lcom/android/htcdialer/Dialer;->search(ILjava/lang/String;)V

    .line 2322
    .end local v0           #keyClicked:Ljava/lang/String;
    :cond_9
    :goto_3
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/htcdialer/Dialer;->mPosOfUserSelect:I

    goto/16 :goto_0

    .line 2307
    :cond_a
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    .line 2308
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer;->generateSearchString(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v2

    .line 2309
    .local v2, searchString:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v3, v2}, Lcom/android/htcdialer/search/SearchModule;->setClicked(Ljava/lang/String;)V

    goto :goto_2

    .line 2319
    .end local v2           #searchString:Ljava/lang/String;
    :cond_b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/htcdialer/Dialer;->search(ILjava/lang/String;)V

    goto :goto_3
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 2236
    sget-boolean v0, Lcom/android/htcdialer/Dialer;->ENBABLE_HYTHEN:Z

    if-eqz v0, :cond_0

    .line 2237
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mPhoneNumberFormatting:Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/htcdialer/Dialer;->mFormatting:Z

    if-nez v0, :cond_0

    .line 2238
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mPhoneNumberFormatting:Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 2242
    :cond_0
    return-void
.end method

.method callVoicemail()V
    .locals 5

    .prologue
    .line 5608
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mVoiceMailNumber:Ljava/lang/String;

    .line 5611
    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5612
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "voicemail"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5616
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5617
    sget-boolean v1, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_DIAL_WITH_DIALPAD:Z

    if-eqz v1, :cond_0

    .line 5618
    const-string v1, "com.android.phone.ShowDialpad"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5620
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/htcdialer/Dialer;->callDirectly(Landroid/content/Intent;)V

    .line 5623
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    .line 5627
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 5625
    :cond_1
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->handleMissingVoiceMailNumber()V

    goto :goto_0
.end method

.method public cancelEditMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6362
    iget-boolean v0, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6363
    iput-boolean v2, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    .line 6366
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 6368
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v0, v2}, Lcom/android/htcdialer/widget/AccumulatorText;->setCursorVisible(Z)V

    .line 6372
    :cond_0
    iput-boolean v2, p0, Lcom/android/htcdialer/Dialer;->mNeedClearText:Z

    .line 6374
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/16 v10, 0x10

    const/16 v12, 0x13

    const/4 v11, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4386
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 4387
    .local v2, keyCode:I
    const-string v7, "HtcDialer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dispatchKeyEvent keyCode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4389
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_2

    move v1, v5

    .line 4391
    .local v1, isDownAction:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_0

    .line 4392
    const/16 v7, 0x14

    if-ne v7, v2, :cond_3

    .line 4393
    iput-boolean v6, p0, Lcom/android/htcdialer/Dialer;->mKeypadLocked:Z

    .line 4415
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-ne v7, v5, :cond_7

    if-ne v12, v2, :cond_7

    .line 4416
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->hasFocus()Z

    move-result v7

    if-nez v7, :cond_6

    .line 4557
    :cond_1
    :goto_2
    return v5

    .end local v1           #isDownAction:Z
    :cond_2
    move v1, v6

    .line 4389
    goto :goto_0

    .line 4394
    .restart local v1       #isDownAction:Z
    :cond_3
    const/16 v7, 0x16

    if-ne v7, v2, :cond_4

    sget-boolean v7, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-eqz v7, :cond_4

    .line 4395
    iput-boolean v6, p0, Lcom/android/htcdialer/Dialer;->mKeypadLocked:Z

    goto :goto_1

    .line 4396
    :cond_4
    const/16 v7, 0x15

    if-ne v7, v2, :cond_5

    sget-boolean v7, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-eqz v7, :cond_5

    .line 4397
    iput-boolean v6, p0, Lcom/android/htcdialer/Dialer;->mKeypadLocked:Z

    goto :goto_1

    .line 4399
    :cond_5
    iput-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mKeypadLocked:Z

    .line 4400
    if-ne v12, v2, :cond_0

    .line 4401
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4404
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v4

    .line 4405
    .local v4, pos:I
    if-eq v4, v11, :cond_1

    .line 4408
    iput-boolean v6, p0, Lcom/android/htcdialer/Dialer;->mKeypadLocked:Z

    goto :goto_1

    .line 4419
    .end local v4           #pos:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v4

    .line 4420
    .restart local v4       #pos:I
    if-eq v4, v11, :cond_1

    .line 4426
    .end local v4           #pos:I
    :cond_7
    const/4 v7, 0x7

    if-gt v7, v2, :cond_8

    if-gt v2, v10, :cond_8

    if-eqz v1, :cond_8

    .line 4427
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v7, v10, :cond_8

    .line 4428
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v2, -0x7

    sget-object v10, Lcom/android/htcdialer/search/SmartKeyIndex;->HW_KEY_0:Lcom/android/htcdialer/search/SmartKeyIndex;

    invoke-virtual {v10}, Lcom/android/htcdialer/search/SmartKeyIndex;->ordinal()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 4434
    :cond_8
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isHardKeyboardHidden()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 4435
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getInputEditor()Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->requestFocus()Z

    .line 4441
    :cond_9
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isHardKeyboardHidden()Z

    move-result v7

    if-nez v7, :cond_e

    if-eqz v1, :cond_e

    .line 4444
    invoke-static {p1}, Lcom/android/htcdialer/util/KeyEventUtils;->isSearchable(Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 4446
    iget-object v7, p0, Lcom/android/htcdialer/Dialer;->mDialpad:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_a

    .line 4447
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    .line 4451
    :cond_a
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getInputEditor()Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->requestFocus()Z

    .line 4455
    invoke-static {p1}, Lcom/android/htcdialer/util/KeyEventUtils;->checkKeyCodeSwitch(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p1

    .line 4458
    invoke-static {p1}, Lcom/android/htcdialer/util/KeyEventUtils;->getNumericValue(Landroid/view/KeyEvent;)I

    move-result v3

    .line 4460
    .local v3, location:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 4461
    if-eq v3, v11, :cond_d

    .line 4462
    if-ne v3, v5, :cond_b

    .line 4463
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->callVoicemail()V

    goto/16 :goto_2

    .line 4474
    :cond_b
    invoke-direct {p0, v3}, Lcom/android/htcdialer/Dialer;->doSpeedDial(I)Z

    goto/16 :goto_2

    .line 4478
    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_d

    .line 4479
    if-eq v3, v11, :cond_10

    .line 4481
    invoke-direct {p0, v3}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    .line 4495
    :cond_d
    :goto_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_1

    .line 4496
    iget-boolean v7, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    if-nez v7, :cond_e

    .line 4497
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-static {p1}, Lcom/android/htcdialer/util/KeyEventUtils;->getAppendingString(Landroid/view/KeyEvent;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 4512
    .end local v3           #location:I
    :cond_e
    const/16 v7, 0x4d

    if-ne v7, v2, :cond_13

    if-eqz v1, :cond_13

    .line 4513
    iget-object v6, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/htcdialer/search/SmartKeyIndex;->HW_KEY_AT:Lcom/android/htcdialer/search/SmartKeyIndex;

    invoke-virtual {v8}, Lcom/android/htcdialer/search/SmartKeyIndex;->ordinal()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 4543
    :cond_f
    :goto_4
    const/16 v6, 0x42

    if-ne v2, v6, :cond_16

    if-nez v1, :cond_16

    .line 4544
    iget v6, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    if-ne v6, v5, :cond_16

    .line 4545
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->placeCall()V

    goto/16 :goto_2

    .line 4482
    .restart local v3       #location:I
    :cond_10
    invoke-static {p1}, Lcom/android/htcdialer/util/KeyEventUtils;->getLableInLayer2(Landroid/view/KeyEvent;)I

    move-result v7

    const/16 v8, 0x2a

    if-ne v7, v8, :cond_11

    .line 4484
    const/16 v7, 0xa

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    goto :goto_3

    .line 4485
    :cond_11
    invoke-static {p1}, Lcom/android/htcdialer/util/KeyEventUtils;->getLableInLayer2(Landroid/view/KeyEvent;)I

    move-result v7

    const/16 v8, 0x23

    if-ne v7, v8, :cond_12

    .line 4487
    const/16 v7, 0xb

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    goto :goto_3

    .line 4490
    :cond_12
    const/16 v7, 0xc

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    goto :goto_3

    .line 4516
    .end local v3           #location:I
    :cond_13
    const/16 v7, 0x43

    if-ne v7, v2, :cond_f

    if-eqz v1, :cond_f

    .line 4517
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v7}, Lcom/android/htcdialer/search/SearchModule;->getClicked()Ljava/lang/String;

    move-result-object v0

    .line 4518
    .local v0, clicked:Ljava/lang/String;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_f

    .line 4519
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_14

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_14

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_15

    .line 4522
    :cond_14
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/htcdialer/search/SearchModule;->setClicked(Ljava/lang/String;)V

    goto :goto_4

    .line 4524
    :cond_15
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/htcdialer/search/SearchModule;->setClicked(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4550
    .end local v0           #clicked:Ljava/lang/String;
    :cond_16
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_17

    sget-boolean v6, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-eqz v6, :cond_17

    .line 4551
    const/16 v6, 0x14

    if-eq v2, v6, :cond_1

    if-eq v2, v12, :cond_1

    .line 4557
    :cond_17
    invoke-super {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 4562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htcdialer/Dialer;->mKeypadLocked:Z

    .line 4563
    invoke-super {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 4568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htcdialer/Dialer;->mKeypadLocked:Z

    .line 4569
    invoke-super {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method editNumberBeforeCall(Ljava/lang/String;)V
    .locals 4
    .parameter "number"

    .prologue
    .line 4001
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4016
    :goto_0
    return-void

    .line 4003
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4008
    .local v0, dialerEditor:Landroid/content/Intent;
    const-string v1, "edit_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4013
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->onEditNumberIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected ensureList()V
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 1135
    :goto_0
    return-void

    .line 1133
    :cond_0
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->setupContentView()V

    .line 1134
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->initInputEditor()V

    goto :goto_0
.end method

.method public finish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1369
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->isChild()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 1370
    .local v0, activity:Landroid/app/Activity;
    :goto_0
    if-eqz v0, :cond_3

    .line 1371
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 1378
    :goto_1
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->cancelEditMode()V

    .line 1380
    sget-boolean v1, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1381
    :cond_0
    iput-boolean v3, p0, Lcom/android/htcdialer/Dialer;->mDisplayPeriod:Z

    .line 1382
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    if-eqz v1, :cond_1

    .line 1383
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    invoke-virtual {v1, v3}, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->onListenChanging(Z)V

    .line 1388
    :cond_1
    return-void

    .end local v0           #activity:Landroid/app/Activity;
    :cond_2
    move-object v0, p0

    .line 1369
    goto :goto_0

    .line 1373
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_3
    invoke-super {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->finish()V

    goto :goto_1
.end method

.method public getDigitsEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    return-object v0
.end method

.method public getDimension(I)I
    .locals 1
    .parameter "resId"

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getSearchModule()Lcom/android/htcdialer/search/SearchModule;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    return-object v0
.end method

.method public getTaskBarRightState([IZI)Z
    .locals 5
    .parameter "result"
    .parameter "isVoiceSearchEnable"
    .parameter "currentSearchMode"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 8314
    if-eqz p1, :cond_4

    const/4 v2, 0x3

    array-length v3, p1

    if-ne v2, v3, :cond_4

    .line 8316
    aput v0, p1, v4

    .line 8318
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->shouldEnableHandWriting()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8319
    const v2, 0x7f0900b4

    aput v2, p1, v0

    .line 8320
    const v2, 0x7f0b0024

    aput v2, p1, v1

    .line 8343
    :goto_0
    return v0

    .line 8322
    :cond_0
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isCarTypeUiMode()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/android/htcdialer/DialerApp;->sIsNaviShowable:I

    if-ne v2, v0, :cond_1

    .line 8323
    const v2, 0x7f09009e

    aput v2, p1, v0

    .line 8324
    const v2, 0x7f0b0019

    aput v2, p1, v1

    goto :goto_0

    .line 8326
    :cond_1
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->shouldEnableHandWriting()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8327
    if-ne p3, v4, :cond_2

    .line 8328
    const v2, 0x7f09009f

    aput v2, p1, v0

    .line 8329
    const v2, 0x7f0b001a

    aput v2, p1, v1

    .line 8330
    aput v4, p1, v4

    goto :goto_0

    .line 8332
    :cond_2
    const v2, 0x7f0900a0

    aput v2, p1, v0

    .line 8333
    const v2, 0x7f0b001b

    aput v2, p1, v1

    .line 8334
    aput v0, p1, v4

    goto :goto_0

    .line 8338
    :cond_3
    const v2, 0x7f09009d

    aput v2, p1, v0

    .line 8339
    const v2, 0x7f0b0018

    aput v2, p1, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 8343
    goto :goto_0
.end method

.method protected handleSearch()Z
    .locals 1

    .prologue
    .line 4205
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->viewTutorial()V

    .line 4206
    const/4 v0, 0x1

    return v0
.end method

.method public handleSearchComplete(Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;)V
    .locals 13
    .parameter "adapter"

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x1

    const/16 v12, 0x8

    const/4 v6, 0x0

    .line 2349
    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v8}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v8

    const/4 v9, 0x6

    if-lt v8, v9, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getCount()I

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v8

    const/4 v9, 0x5

    if-eq v8, v9, :cond_5

    .line 2352
    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mSaveContactView:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2354
    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mHeadText:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_0

    .line 2355
    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2361
    :cond_0
    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getCount()I

    move-result v8

    if-lez v8, :cond_6

    .line 2362
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 2371
    :goto_1
    sget-boolean v8, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mHeadText:Landroid/widget/TextView;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    if-eqz v8, :cond_4

    .line 2372
    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v8}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getData()Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getCallLogId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    move v1, v5

    .line 2373
    .local v1, hasLastCall:Z
    :goto_2
    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v8}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v8

    if-lez v8, :cond_9

    move v3, v5

    .line 2374
    .local v3, isSearched:Z
    :goto_3
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getCount()I

    move-result v8

    if-lez v8, :cond_a

    move v2, v5

    .line 2376
    .local v2, hasResult:Z
    :goto_4
    if-eqz v3, :cond_c

    .line 2378
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v8

    if-eqz v2, :cond_1

    move v7, v6

    :cond_1
    invoke-virtual {v8, v7}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 2379
    iget-object v7, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v7, v12}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->setVisibility(I)V

    .line 2380
    iget-object v7, p0, Lcom/android/htcdialer/Dialer;->mSaveContactView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v12, :cond_2

    .line 2381
    iget-object v7, p0, Lcom/android/htcdialer/Dialer;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2397
    :cond_2
    :goto_5
    iget-object v7, p0, Lcom/android/htcdialer/Dialer;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    .line 2398
    if-nez v3, :cond_e

    .line 2399
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mHeadText:Landroid/widget/TextView;

    const v6, 0x7f090059

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 2414
    :cond_3
    :goto_6
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v5}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 2415
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v5}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->refreshView()V

    .line 2418
    .end local v1           #hasLastCall:Z
    .end local v2           #hasResult:Z
    .end local v3           #isSearched:Z
    :cond_4
    return-void

    .line 2357
    :cond_5
    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mSaveContactView:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2363
    :cond_6
    sget-boolean v8, Lcom/android/htcdialer/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v8, :cond_7

    .line 2364
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    goto/16 :goto_1

    .line 2366
    :cond_7
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_8
    move v1, v6

    .line 2372
    goto :goto_2

    .restart local v1       #hasLastCall:Z
    :cond_9
    move v3, v6

    .line 2373
    goto :goto_3

    .restart local v3       #isSearched:Z
    :cond_a
    move v2, v6

    .line 2374
    goto :goto_4

    :cond_b
    move v2, v6

    goto :goto_4

    .line 2384
    .restart local v2       #hasResult:Z
    :cond_c
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 2385
    if-eqz v1, :cond_d

    .line 2386
    iget-object v7, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v7, v6}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->setVisibility(I)V

    .line 2387
    iget-object v7, p0, Lcom/android/htcdialer/Dialer;->mSaveContactView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v12, :cond_2

    .line 2388
    iget-object v7, p0, Lcom/android/htcdialer/Dialer;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 2391
    :cond_d
    iget-object v7, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v7, v12}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->setVisibility(I)V

    .line 2392
    iget-object v7, p0, Lcom/android/htcdialer/Dialer;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 2401
    :cond_e
    invoke-virtual {p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getCount()I

    move-result v0

    .line 2402
    .local v0, count:I
    const/4 v4, 0x0

    .line 2404
    .local v4, searchResult:Ljava/lang/CharSequence;
    if-le v0, v5, :cond_f

    .line 2405
    const v7, 0x7f090057

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-virtual {p0, v7, v5}, Lcom/android/htcdialer/Dialer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2409
    :goto_7
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 2407
    :cond_f
    const v7, 0x7f090058

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-virtual {p0, v7, v5}, Lcom/android/htcdialer/Dialer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_7
.end method

.method public handleStuffAfterOnResume()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1213
    iget-boolean v1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mCreated:Z

    if-nez v1, :cond_0

    .line 1214
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->initForFirstCreate()V

    .line 1218
    :cond_0
    iput-boolean v2, p0, Lcom/android/htcdialer/Dialer;->mKeypadLocked:Z

    .line 1220
    iget-object v4, p0, Lcom/android/htcdialer/Dialer;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "dtmf_tone"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_8

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/htcdialer/util/KeypadUtils;->setToneEnabled(Z)V

    .line 1222
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/htcdialer/util/KeypadUtils;->update(Landroid/content/ContentResolver;)V

    .line 1227
    iget v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    if-nez v1, :cond_1

    .line 1228
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    iput v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    .line 1231
    :cond_1
    iget v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    if-eq v1, v6, :cond_2

    sget-boolean v1, Lcom/android/htcdialer/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-ne v1, v2, :cond_9

    .line 1233
    :cond_2
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "dtmf_tone_type"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    .line 1241
    :goto_1
    sget-boolean v1, Lcom/android/htcdialer/Dialer;->ENBABLE_HYTHEN:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneNumberFormatting:Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;

    if-nez v1, :cond_3

    .line 1242
    new-instance v1, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;

    invoke-direct {v1}, Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;-><init>()V

    iput-object v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneNumberFormatting:Lcom/android/htcdialer/HtcCdmaPhoneNumberFormatting;

    .line 1246
    :cond_3
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    .line 1247
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->moveSelectionToTop()V

    .line 1249
    invoke-static {}, Lcom/htc/util/contacts/PhoneUtils;->getEmergencyNumbers()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htcdialer/Dialer;->mEmergencyNumbers:[Ljava/lang/String;

    .line 1252
    sget-boolean v1, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    if-ne v1, v6, :cond_6

    .line 1253
    :cond_4
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911Receiver:Lcom/android/htcdialer/CdmaE911Receiver;

    if-nez v1, :cond_5

    .line 1254
    new-instance v1, Lcom/android/htcdialer/CdmaE911Receiver;

    iget-object v3, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v3, v4}, Lcom/android/htcdialer/CdmaE911Receiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911Receiver:Lcom/android/htcdialer/CdmaE911Receiver;

    .line 1256
    :cond_5
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911Receiver:Lcom/android/htcdialer/CdmaE911Receiver;

    invoke-virtual {v1, v2}, Lcom/android/htcdialer/CdmaE911Receiver;->onListenChanging(Z)V

    .line 1261
    :cond_6
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1262
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v1}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    .line 1264
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v1}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->forceRefreshingView()V

    .line 1268
    :cond_7
    invoke-super {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->handleStuffAfterOnResume()V

    .line 1269
    return-void

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :cond_8
    move v1, v3

    .line 1220
    goto/16 :goto_0

    .line 1236
    :cond_9
    iput v3, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    goto :goto_1
.end method

.method public newInputWatcher()Landroid/text/TextWatcher;
    .locals 0

    .prologue
    .line 2184
    return-object p0
.end method

.method protected newSearchListAdapter(Ljava/util/ArrayList;Ljava/util/HashMap;)Landroid/widget/BaseAdapter;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/search/SearchableObject;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/widget/BaseAdapter;"
        }
    .end annotation

    .prologue
    .line 6378
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/search/SearchableObject;>;"
    .local p2, pivot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    sget-boolean v0, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-eqz v0, :cond_0

    .line 6379
    const v0, 0x7f0b0006

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->mHeadText:Landroid/widget/TextView;

    .line 6380
    new-instance v0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    iget-object v2, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0007

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;-><init>(Lcom/android/htcdialer/Dialer;Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    .line 6382
    :cond_0
    new-instance v0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    iget-object v2, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mContext:Landroid/content/Context;

    const v3, 0x7f03000f

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;-><init>(Lcom/android/htcdialer/Dialer;Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/HashMap;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 2610
    const/16 v3, 0x6f

    if-ne v3, p1, :cond_2

    .line 2611
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v3}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2613
    .local v2, number:Ljava/lang/String;
    const/4 v3, 0x2

    if-ne v3, p2, :cond_1

    .line 2614
    const-string v3, "android.intent.action.EDIT"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2615
    const-string v3, "number"

    invoke-virtual {p3, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2616
    invoke-virtual {p0, p3}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    .line 2653
    .end local v2           #number:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2617
    .restart local v2       #number:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x3

    if-ne v3, p2, :cond_0

    .line 2618
    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2619
    const-string v3, "number"

    invoke-virtual {p3, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2620
    invoke-virtual {p0, p3}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2632
    .end local v2           #number:Ljava/lang/String;
    :cond_2
    const/16 v3, 0x70

    if-ne v3, p1, :cond_0

    if-eqz p3, :cond_0

    .line 2633
    const-string v3, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2634
    .local v1, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x2090007

    invoke-direct {v4, p0, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance v5, Lcom/android/htcdialer/Dialer$13;

    invoke-direct {v5, p0, v1}, Lcom/android/htcdialer/Dialer$13;-><init>(Lcom/android/htcdialer/Dialer;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 2648
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900b3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2649
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 15
    .parameter "view"

    .prologue
    .line 4834
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 4835
    .local v8, tag:Ljava/lang/Object;
    if-eqz v8, :cond_1

    instance-of v11, v8, Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;

    if-eqz v11, :cond_1

    .line 4836
    check-cast v8, Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;

    .end local v8           #tag:Ljava/lang/Object;
    iget v11, v8, Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;->id:I

    invoke-direct {p0, v11}, Lcom/android/htcdialer/Dialer;->onClick(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 5035
    :cond_0
    :goto_0
    return-void

    .line 4841
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/htcdialer/Dialer;->getTone(Landroid/view/View;)I

    move-result v10

    .line 4842
    .local v10, tone:I
    if-ltz v10, :cond_2

    .line 4843
    const/16 v11, 0x96

    invoke-direct {p0, v10, v11}, Lcom/android/htcdialer/Dialer;->playTone(II)V

    .line 4848
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto :goto_0

    .line 5019
    :sswitch_0
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->viewTutorial()V

    goto :goto_0

    .line 4850
    :sswitch_1
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/htcdialer/Dialer;->input(I)V

    goto :goto_0

    .line 4854
    :sswitch_2
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/htcdialer/Dialer;->input(I)V

    goto :goto_0

    .line 4858
    :sswitch_3
    const/4 v11, 0x2

    invoke-direct {p0, v11}, Lcom/android/htcdialer/Dialer;->input(I)V

    goto :goto_0

    .line 4862
    :sswitch_4
    const/4 v11, 0x3

    invoke-direct {p0, v11}, Lcom/android/htcdialer/Dialer;->input(I)V

    goto :goto_0

    .line 4866
    :sswitch_5
    const/4 v11, 0x4

    invoke-direct {p0, v11}, Lcom/android/htcdialer/Dialer;->input(I)V

    goto :goto_0

    .line 4870
    :sswitch_6
    const/4 v11, 0x5

    invoke-direct {p0, v11}, Lcom/android/htcdialer/Dialer;->input(I)V

    goto :goto_0

    .line 4874
    :sswitch_7
    const/4 v11, 0x6

    invoke-direct {p0, v11}, Lcom/android/htcdialer/Dialer;->input(I)V

    goto :goto_0

    .line 4878
    :sswitch_8
    const/4 v11, 0x7

    invoke-direct {p0, v11}, Lcom/android/htcdialer/Dialer;->input(I)V

    goto :goto_0

    .line 4882
    :sswitch_9
    const/16 v11, 0x8

    invoke-direct {p0, v11}, Lcom/android/htcdialer/Dialer;->input(I)V

    goto :goto_0

    .line 4886
    :sswitch_a
    const/16 v11, 0x9

    invoke-direct {p0, v11}, Lcom/android/htcdialer/Dialer;->input(I)V

    goto :goto_0

    .line 4891
    :sswitch_b
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    .line 4893
    sget-boolean v11, Lcom/android/htcdialer/Dialer;->SUPPORT_LONG_CLICK:Z

    if-eqz v11, :cond_3

    .line 4894
    iget-object v11, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v12, "10:"

    invoke-virtual {v11, v12}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 4895
    const/16 v11, 0x11

    invoke-direct {p0, v11}, Lcom/android/htcdialer/Dialer;->keyPressed(I)V

    goto :goto_0

    .line 4897
    :cond_3
    iget-object v11, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v11}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/htcdialer/Dialer;->processMultipleStarKey(Landroid/text/Editable;)V

    goto :goto_0

    .line 4905
    :sswitch_c
    const/16 v11, 0xb

    invoke-direct {p0, v11}, Lcom/android/htcdialer/Dialer;->input(I)V

    goto :goto_0

    .line 4912
    :sswitch_d
    iget v11, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    if-nez v11, :cond_5

    .line 4913
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->isToHideTaskbar()Z

    move-result v11

    if-eqz v11, :cond_4

    sget-boolean v11, Lcom/android/htcdialer/Dialer;->ENABLE_VOICE_SEARCH:Z

    if-eqz v11, :cond_4

    .line 4916
    :try_start_0
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->startVoiceRecognitionActivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4917
    :catch_0
    move-exception v2

    .line 4918
    .local v2, e:Ljava/lang/Exception;
    const-string v11, "HtcDialer"

    const-string v12, "startVoiceRecognitionActivity"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 4921
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->viewTutorial()V

    goto/16 :goto_0

    .line 4925
    :cond_5
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->clickToMO()Z

    move-result v11

    if-nez v11, :cond_0

    .line 4930
    const/4 v3, 0x1

    .line 4931
    .local v3, enterEditMode:Z
    if-eqz v3, :cond_6

    .line 4932
    iget-object v11, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v11}, Lcom/android/htcdialer/widget/AccumulatorText;->getSelectionStart()I

    move-result v7

    .line 4933
    .local v7, selectStart:I
    iget-object v11, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v11}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4934
    .local v6, number:Ljava/lang/String;
    invoke-direct {p0, v6, v7}, Lcom/android/htcdialer/Dialer;->editNumberBeforeCall(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 4938
    .end local v6           #number:Ljava/lang/String;
    .end local v7           #selectStart:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->placeCall()V

    goto/16 :goto_0

    .line 4946
    .end local v3           #enterEditMode:Z
    :sswitch_e
    iget-object v11, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v11}, Lcom/android/htcdialer/search/SearchModule;->getClicked()Ljava/lang/String;

    move-result-object v1

    .line 4947
    .local v1, clicked:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 4948
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_b

    .line 4949
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "input_method"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 4950
    .local v4, imm:Landroid/view/inputmethod/InputMethodManager;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4952
    .local v0, b:Landroid/os/Bundle;
    const-string v11, "BACK"

    const-string v12, ""

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4953
    iget-object v11, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    const-string v12, "smartdialcommit"

    invoke-virtual {v4, v11, v12, v0}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4955
    const/4 v11, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4966
    .end local v0           #b:Landroid/os/Bundle;
    .end local v4           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_7
    :goto_1
    iget-object v11, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v11, v1}, Lcom/android/htcdialer/search/SearchModule;->setClicked(Ljava/lang/String;)V

    .line 4968
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_8

    .line 4969
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 4973
    :cond_8
    iget-object v11, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v11}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v9

    .line 4974
    .local v9, text:Landroid/text/Editable;
    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v5

    .line 4976
    .local v5, length:I
    if-eqz v5, :cond_9

    const/4 v11, 0x1

    if-ne v5, v11, :cond_e

    .line 4977
    :cond_9
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    .line 5004
    :goto_2
    iget-boolean v11, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    if-nez v11, :cond_a

    .line 5005
    iget-object v11, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v11}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v11

    iget-object v12, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v12}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->length()I

    move-result v12

    invoke-static {v11, v12}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 5011
    :cond_a
    const/16 v11, 0x43

    invoke-direct {p0, v11}, Lcom/android/htcdialer/Dialer;->keyPressed(I)V

    goto/16 :goto_0

    .line 4956
    .end local v5           #length:I
    .end local v9           #text:Landroid/text/Editable;
    :cond_b
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_c

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_d

    .line 4958
    :cond_c
    const/4 v11, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 4961
    :cond_d
    iget-boolean v11, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    if-nez v11, :cond_7

    .line 4962
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 4981
    .restart local v5       #length:I
    .restart local v9       #text:Landroid/text/Editable;
    :cond_e
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/htcdialer/Dialer;->mPosOfUserSelect:I

    .line 4982
    iget-object v11, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x1

    const-wide/16 v13, 0xc8

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 5025
    .end local v1           #clicked:Ljava/lang/String;
    .end local v5           #length:I
    .end local v9           #text:Landroid/text/Editable;
    :sswitch_f
    iget-object v11, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v11}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5027
    .restart local v6       #number:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/htcdialer/Dialer;->addToContact(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5031
    .end local v6           #number:Ljava/lang/String;
    :sswitch_10
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    goto/16 :goto_0

    .line 4848
    nop

    :sswitch_data_0
    .sparse-switch
        0x1020005 -> :sswitch_0
        0x1020009 -> :sswitch_d
        0x202001a -> :sswitch_b
        0x202001b -> :sswitch_c
        0x2020103 -> :sswitch_f
        0x202016a -> :sswitch_e
        0x2020180 -> :sswitch_2
        0x2020181 -> :sswitch_3
        0x2020182 -> :sswitch_4
        0x2020183 -> :sswitch_5
        0x2020184 -> :sswitch_6
        0x2020185 -> :sswitch_7
        0x2020186 -> :sswitch_8
        0x2020187 -> :sswitch_9
        0x2020188 -> :sswitch_a
        0x2020189 -> :sswitch_1
        0x7f0b0015 -> :sswitch_10
        0x7f0b003f -> :sswitch_f
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    .line 1442
    iput-object v3, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    .line 1443
    invoke-virtual {p0, v3}, Lcom/android/htcdialer/Dialer;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1445
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->setupContentView()V

    .line 1446
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->initInputEditor()V

    .line 1447
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->initTaskBar()V

    .line 1449
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->initListView()V

    .line 1451
    invoke-super {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1458
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    .line 1460
    .local v1, diff:I
    if-eqz v1, :cond_3

    .line 1462
    and-int/lit16 v3, v1, 0x200

    if-eqz v3, :cond_0

    .line 1463
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {v3}, Lcom/android/htcdialer/util/ConfigUtils;->isDockMode(Landroid/content/res/Configuration;)Z

    move-result v3

    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isDockMode()Z

    move-result v4

    xor-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 1465
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->setupScreenOreitation()Z

    .line 1467
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v3}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->clear()V

    .line 1473
    :cond_0
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_1

    .line 1474
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->hideHandWritePanel()V

    .line 1475
    sget-boolean v3, Lcom/android/htcdialer/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v3, :cond_1

    .line 1476
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->updatePanelLayout()V

    .line 1477
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f07

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1478
    .local v2, enabled:Z
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    const v4, 0x2020006

    invoke-virtual {v3, v4}, Lcom/android/htcdialer/widget/ButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1479
    .local v0, btn1:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1484
    .end local v0           #btn1:Landroid/view/View;
    .end local v2           #enabled:Z
    :cond_1
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_2

    .line 1486
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v3}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->clear()V

    .line 1489
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-direct {p0, v3}, Lcom/android/htcdialer/Dialer;->setRequestedInputType(Landroid/widget/EditText;)V

    .line 1501
    :cond_2
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_3

    .line 1502
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->setIMEByLocale()Z

    move-result v3

    sput-boolean v3, Lcom/android/htcdialer/Dialer;->USE_CHINESE_HANDWRITE_IME:Z

    .line 1506
    :cond_3
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->changeSearchMode()V

    .line 1508
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/htcdialer/Dialer;->mIsListExpanded:Z

    .line 1509
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    .line 1511
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1514
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 18
    .parameter "item"

    .prologue
    .line 3189
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v15

    check-cast v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3196
    .local v15, menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v3}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    if-nez v15, :cond_0

    .line 3197
    new-instance v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    .end local v15           #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v3}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getContactCardView()Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v15, v3, v4, v0, v1}, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 3201
    .restart local v15       #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 3394
    :cond_1
    :goto_0
    :pswitch_0
    const/4 v3, 0x1

    .end local v15           #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :goto_1
    return v3

    .line 3190
    :catch_0
    move-exception v12

    .line 3191
    .local v12, e:Ljava/lang/ClassCastException;
    const-string v3, "HtcDialer"

    const-string v4, "bad menuInfoIn"

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3192
    const/4 v3, 0x0

    goto :goto_1

    .line 3203
    .end local v12           #e:Ljava/lang/ClassCastException;
    .restart local v15       #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :pswitch_1
    iget v3, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/htcdialer/Dialer;->viewContactCard(I)V

    goto :goto_0

    .line 3208
    :pswitch_2
    iget v3, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/htcdialer/Dialer;->sendSMS(I)V

    goto :goto_0

    .line 3213
    :pswitch_3
    iget v3, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/htcdialer/Dialer;->sendEmail(I)V

    goto :goto_0

    .line 3218
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    check-cast v10, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 3219
    .local v10, adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    iget v3, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v10, v3}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htcdialer/search/SearchableObject;

    invoke-virtual {v10, v3}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v7

    .line 3220
    .local v7, number:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/htcdialer/Dialer;->addToContact(Ljava/lang/String;)V

    goto :goto_0

    .line 3225
    .end local v7           #number:Ljava/lang/String;
    .end local v10           #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    :pswitch_5
    iget v3, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/htcdialer/Dialer;->getNumberByPosition(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/htcdialer/Dialer;->editNumberBeforeCall(Ljava/lang/String;)V

    goto :goto_0

    .line 3230
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    check-cast v10, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 3231
    .restart local v10       #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    iget v3, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v10, v3}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htcdialer/search/SearchableObject;

    .line 3232
    .local v11, data:Lcom/android/htcdialer/search/SearchableObject;
    invoke-virtual {v10, v11}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getCallLogId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v8

    .line 3233
    .local v8, callId:J
    invoke-virtual {v10, v11}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContactId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v5

    .line 3234
    .local v5, contactId:J
    invoke-virtual {v10, v11}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v7

    .line 3236
    .restart local v7       #number:Ljava/lang/String;
    new-instance v2, Lcom/android/htcdialer/Dialer$14;

    const-string v4, "thread_remove_callLog"

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/htcdialer/Dialer$14;-><init>(Lcom/android/htcdialer/Dialer;Ljava/lang/String;JLjava/lang/String;J)V

    .line 3291
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 3296
    .end local v2           #thread:Ljava/lang/Thread;
    .end local v5           #contactId:J
    .end local v7           #number:Ljava/lang/String;
    .end local v8           #callId:J
    .end local v10           #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    .end local v11           #data:Lcom/android/htcdialer/search/SearchableObject;
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    check-cast v10, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 3297
    .restart local v10       #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    iget v3, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v10, v3}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htcdialer/search/SearchableObject;

    .line 3298
    .restart local v11       #data:Lcom/android/htcdialer/search/SearchableObject;
    invoke-virtual {v10, v11}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContactId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v5

    .line 3300
    .restart local v5       #contactId:J
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/htcdialer/Dialer;->removeFavorite(J)V

    goto/16 :goto_0

    .line 3307
    .end local v5           #contactId:J
    .end local v10           #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    .end local v11           #data:Lcom/android/htcdialer/search/SearchableObject;
    :pswitch_8
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    check-cast v10, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 3308
    .restart local v10       #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    iget v3, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v10, v3}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htcdialer/search/SearchableObject;

    .line 3309
    .restart local v11       #data:Lcom/android/htcdialer/search/SearchableObject;
    invoke-virtual {v10, v11}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContactId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v5

    .line 3311
    .restart local v5       #contactId:J
    invoke-static {v5, v6}, Lcom/htc/provider/ContactsContract$Groups$Favorite;->getAddFavoriteIntent(J)Landroid/content/Intent;

    move-result-object v14

    .line 3313
    .local v14, intentFavorites:Landroid/content/Intent;
    if-eqz v14, :cond_1

    .line 3314
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 3317
    .end local v5           #contactId:J
    .end local v10           #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    .end local v11           #data:Lcom/android/htcdialer/search/SearchableObject;
    .end local v14           #intentFavorites:Landroid/content/Intent;
    :catch_1
    move-exception v12

    .line 3319
    .local v12, e:Ljava/lang/Exception;
    const-string v3, "HtcDialer"

    const-string v4, "MENU_ITEM_ADD_TO_FAVORITES"

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3328
    .end local v12           #e:Ljava/lang/Exception;
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    check-cast v10, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 3329
    .restart local v10       #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    iget v3, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v10, v3}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htcdialer/search/SearchableObject;

    .line 3330
    .restart local v11       #data:Lcom/android/htcdialer/search/SearchableObject;
    invoke-virtual {v10, v11}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContactId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v5

    .line 3331
    .restart local v5       #contactId:J
    invoke-virtual {v10, v11}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v7

    .line 3333
    .restart local v7       #number:Ljava/lang/String;
    const-wide/16 v3, 0x0

    cmp-long v3, v5, v3

    if-lez v3, :cond_2

    .line 3334
    iget v3, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    const-string v4, "PEOPLE_DETAIL_CALL_HISTORY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/htcdialer/Dialer;->viewContactCard(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 3339
    :cond_2
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 3340
    .local v13, intent:Landroid/content/Intent;
    sget-object v3, Landroid/provider/HtcContactsContract$UnknownContact;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3341
    const/high16 v3, 0x1000

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3342
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3343
    const-string v3, "number"

    invoke-virtual {v13, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3344
    const-string v3, "DefaultTab"

    const-string v4, "PEOPLE_DETAIL_CALL_HISTORY"

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3345
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3356
    .end local v5           #contactId:J
    .end local v7           #number:Ljava/lang/String;
    .end local v10           #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    .end local v11           #data:Lcom/android/htcdialer/search/SearchableObject;
    .end local v13           #intent:Landroid/content/Intent;
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    check-cast v10, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 3357
    .restart local v10       #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    iget v3, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v10, v3}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htcdialer/search/SearchableObject;

    .line 3358
    .restart local v11       #data:Lcom/android/htcdialer/search/SearchableObject;
    invoke-virtual {v10, v11}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContactId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v5

    .line 3359
    .restart local v5       #contactId:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v6}, Lcom/android/htcdialer/util/CustomizeUtils$Tmo;->markContactAsFave(Landroid/content/Context;J)V

    goto/16 :goto_0

    .line 3366
    .end local v5           #contactId:J
    .end local v10           #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    .end local v11           #data:Lcom/android/htcdialer/search/SearchableObject;
    :pswitch_b
    invoke-direct/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getIpDialItemCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 3367
    iget v3, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/htcdialer/Dialer;->getNumberByPosition(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/htcdialer/Dialer;->editNumberWithIpDialPrefix(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3371
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->startIpDialActivity()V

    goto/16 :goto_0

    .line 3380
    :pswitch_c
    iget v3, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/htcdialer/Dialer;->showConfirmBlockCallerDialog(I)V

    goto/16 :goto_0

    .line 3201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 728
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->isChild()Z

    move-result v5

    if-nez v5, :cond_1

    const-wide/high16 v5, 0x400c

    invoke-static {v5, v6}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 729
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.DIAL"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 730
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 731
    invoke-virtual {p0, v2}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    .line 732
    invoke-super {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList;->onCreate(Landroid/os/Bundle;)V

    .line 733
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->finish()V

    .line 846
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->setIMEByLocale()Z

    move-result v5

    sput-boolean v5, Lcom/android/htcdialer/Dialer;->USE_CHINESE_HANDWRITE_IME:Z

    .line 744
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 745
    .local v0, config:Landroid/content/res/Configuration;
    invoke-static {v0}, Lcom/android/htcdialer/util/ConfigUtils;->registConfig(Landroid/content/res/Configuration;)V

    .line 747
    invoke-super {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList;->onCreate(Landroid/os/Bundle;)V

    .line 753
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 755
    const/16 v5, 0x64

    invoke-virtual {p0, v5}, Lcom/android/htcdialer/Dialer;->setDelayForHandleStuffAfterOnResume(I)V

    .line 758
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Security_BRIC_flag:Z

    if-ne v5, v7, :cond_2

    .line 759
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    iput-object v5, p0, Lcom/android/htcdialer/Dialer;->mRandom:Ljava/util/Random;

    .line 762
    :cond_2
    new-instance v5, Lcom/android/htcdialer/Dialer$QueryHandler;

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/htcdialer/Dialer$QueryHandler;-><init>(Lcom/android/htcdialer/Dialer;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/htcdialer/Dialer;->mQueryHandler:Lcom/android/htcdialer/Dialer$QueryHandler;

    .line 764
    const-string v5, "keyguard"

    invoke-virtual {p0, v5}, Lcom/android/htcdialer/Dialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    iput-object v5, p0, Lcom/android/htcdialer/Dialer;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 768
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/android/htcdialer/Dialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/android/htcdialer/Dialer;->mAudioManager:Landroid/media/AudioManager;

    .line 772
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->initKeypadGestureDetector()V

    .line 773
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->initListGestureDetector()V

    .line 775
    new-instance v5, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;

    invoke-direct {v5, p0}, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;-><init>(Lcom/android/htcdialer/Dialer;)V

    iput-object v5, p0, Lcom/android/htcdialer/Dialer;->mExtraInfoForSelectedPhoneIntent:Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;

    .line 777
    sget-boolean v5, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-eqz v5, :cond_3

    .line 778
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    sget-object v6, Lcom/htc/widget/HtcAdapterView$ListStyle;->HORZ_STYLE_:Lcom/htc/widget/HtcAdapterView$ListStyle;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setListStyle(Lcom/htc/widget/HtcAdapterView$ListStyle;)V

    .line 780
    :cond_3
    sget-boolean v5, Lcom/android/htcdialer/Dialer;->USE_CHINESE_HANDWRITE_IME:Z

    if-eqz v5, :cond_4

    .line 781
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "HTC_IME_CURRENT_STATE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/htcdialer/Dialer;->mHTCIMEFilter:Landroid/content/IntentFilter;

    .line 784
    :cond_4
    sget-boolean v5, Lcom/android/htcdialer/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v5, :cond_5

    .line 785
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setRoundedCornerEnabled(Z)V

    .line 786
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->initTabletTitle()V

    .line 789
    :cond_5
    invoke-virtual {p0, v7}, Lcom/android/htcdialer/Dialer;->setSearchMode(I)V

    .line 792
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->hasKeyboard()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isPortrait()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 793
    :cond_6
    invoke-direct {p0, v8}, Lcom/android/htcdialer/Dialer;->showKeypadShadow(Z)V

    .line 796
    :cond_7
    iget-object v5, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/htcdialer/HtcIpDialActivity;->setupState(Landroid/content/Context;)V

    .line 800
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->setupScreenOreitation()Z

    .line 802
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->initVTHelper()V

    .line 806
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->initTaskBar()V

    .line 808
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {v5, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 812
    sget-boolean v5, Lcom/android/htcdialer/util/BuildUtils;->SENSE_TABLET:Z

    if-nez v5, :cond_8

    .line 813
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->applyThemeOnActivityCreated()V

    .line 817
    :cond_8
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isQHDProject()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 819
    const-string v5, "common_app_bkg"

    const-string v6, "drawable"

    invoke-static {v5, v6, v8}, Lcom/android/htcdialer/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 820
    .local v1, id:I
    if-eqz v1, :cond_9

    .line 821
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 822
    iput-boolean v7, p0, Lcom/android/htcdialer/Dialer;->mBgRemoved:Z

    .line 839
    .end local v1           #id:I
    :cond_9
    :goto_1
    const-string v5, "com.android.htcdialer_preferences"

    invoke-virtual {p0, v5, v8}, Lcom/android/htcdialer/Dialer;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 841
    .local v3, settings:Landroid/content/SharedPreferences;
    if-eqz v3, :cond_0

    .line 842
    const-string v5, "brought_number_savable"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mSearchBroughtNumber:Z

    goto/16 :goto_0

    .line 824
    .end local v3           #settings:Landroid/content/SharedPreferences;
    :cond_a
    sget-boolean v5, Lcom/android/htcdialer/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v5, :cond_b

    .line 825
    invoke-static {p0, v7}, Lcom/htc/util/res/HtcResUtil;->getBlurWallpaper(Landroid/content/Context;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    .line 826
    .local v4, wallpaper:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_9

    .line 827
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 828
    iput-boolean v7, p0, Lcom/android/htcdialer/Dialer;->mBgRemoved:Z

    goto :goto_1

    .line 830
    .end local v4           #wallpaper:Landroid/graphics/drawable/Drawable;
    :cond_b
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 831
    const-string v5, "common_list_bg"

    const-string v6, "drawable"

    invoke-static {v5, v6, v8}, Lcom/android/htcdialer/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 832
    .restart local v1       #id:I
    if-eqz v1, :cond_9

    .line 833
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 834
    iput-boolean v7, p0, Lcom/android/htcdialer/Dialer;->mBgRemoved:Z

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 23
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 2981
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v13, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2988
    .local v13, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    sget-boolean v19, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getContactCardView()Landroid/widget/ImageView;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 2990
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 2991
    .local v5, adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getData()Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v10

    .line 2992
    .local v10, data:Lcom/android/htcdialer/search/SearchableObject;
    invoke-virtual {v5, v10}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v9

    .line 2993
    .local v9, contact:Lcom/android/htcdialer/search/SearchableContact;
    invoke-virtual {v5, v10}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getName(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v16

    .line 2994
    .local v16, name:Ljava/lang/String;
    invoke-virtual {v5, v10}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v17

    .line 2995
    .local v17, number:Ljava/lang/String;
    invoke-virtual {v5, v10}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getCallLogId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v7

    .line 2997
    .local v7, callLogId:J
    if-eqz v16, :cond_2

    .line 2998
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 3005
    :goto_0
    if-eqz v9, :cond_4

    iget-wide v0, v9, Lcom/android/htcdialer/search/SearchableContact;->id:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-lez v19, :cond_4

    .line 3006
    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const v22, 0x7f09002c

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3012
    :goto_1
    const/16 v19, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x0

    const v22, 0x7f090042

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3015
    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x0

    const v22, 0x7f090041

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3018
    sget-boolean v19, Lcom/android/htcdialer/Dialer;->IS_DOUBLESHOT_TMO:Z

    if-nez v19, :cond_0

    if-eqz v9, :cond_0

    iget-wide v0, v9, Lcom/android/htcdialer/search/SearchableContact;->id:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-lez v19, :cond_0

    iget-boolean v0, v9, Lcom/android/htcdialer/search/SearchableContact;->isSimContact:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 3019
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 3020
    .local v18, resolver:Landroid/content/ContentResolver;
    iget-wide v0, v9, Lcom/android/htcdialer/search/SearchableContact;->id:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/htcdialer/util/CustomizeUtils$Tmo;->isFavesAccount(JLandroid/content/ContentResolver;)Z

    move-result v19

    if-nez v19, :cond_0

    invoke-static/range {v18 .. v18}, Lcom/android/htcdialer/util/CustomizeUtils$Tmo;->isFaveLimitReached(Landroid/content/ContentResolver;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 3022
    const/16 v19, 0x0

    const/16 v20, 0xa

    const/16 v21, 0x0

    const v22, 0x7f09005a

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3028
    .end local v18           #resolver:Landroid/content/ContentResolver;
    :cond_0
    const-wide/16 v19, 0x0

    cmp-long v19, v7, v19

    if-lez v19, :cond_1

    .line 3029
    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    const v22, 0x7f090091

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3181
    .end local v5           #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    .end local v7           #callLogId:J
    .end local v9           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v10           #data:Lcom/android/htcdialer/search/SearchableObject;
    .end local v13           #info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v16           #name:Ljava/lang/String;
    .end local v17           #number:Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 2982
    :catch_0
    move-exception v11

    .line 2983
    .local v11, e:Ljava/lang/ClassCastException;
    const-string v19, "HtcDialer"

    const-string v20, "bad menuInfo"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2999
    .end local v11           #e:Ljava/lang/ClassCastException;
    .restart local v5       #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    .restart local v7       #callLogId:J
    .restart local v9       #contact:Lcom/android/htcdialer/search/SearchableContact;
    .restart local v10       #data:Lcom/android/htcdialer/search/SearchableObject;
    .restart local v13       #info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .restart local v16       #name:Ljava/lang/String;
    .restart local v17       #number:Ljava/lang/String;
    :cond_2
    if-eqz v17, :cond_3

    .line 3000
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_0

    .line 3002
    :cond_3
    const v19, 0x7f09003c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/Dialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_0

    .line 3008
    :cond_4
    const/16 v19, 0x0

    const/16 v20, 0x5

    const/16 v21, 0x0

    const v22, 0x7f09001f

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 3035
    .end local v5           #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    .end local v7           #callLogId:J
    .end local v9           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v10           #data:Lcom/android/htcdialer/search/SearchableObject;
    .end local v16           #name:Ljava/lang/String;
    .end local v17           #number:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 3036
    .restart local v5       #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    iget v0, v13, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htcdialer/search/SearchableObject;

    .line 3038
    .restart local v10       #data:Lcom/android/htcdialer/search/SearchableObject;
    if-eqz v10, :cond_1

    .line 3042
    invoke-virtual {v5, v10}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getName(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v16

    .line 3043
    .restart local v16       #name:Ljava/lang/String;
    invoke-virtual {v5, v10}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v17

    .line 3044
    .restart local v17       #number:Ljava/lang/String;
    invoke-virtual {v5, v10}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v9

    .line 3045
    .restart local v9       #contact:Lcom/android/htcdialer/search/SearchableContact;
    invoke-virtual {v5, v10}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getCallLogId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v7

    .line 3049
    .restart local v7       #callLogId:J
    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/BaseSmartSearchList;->mVoiceMailNumber:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 3051
    if-eqz v16, :cond_7

    .line 3052
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 3060
    :goto_3
    sget-boolean v19, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-eqz v19, :cond_a

    .line 3063
    if-eqz v9, :cond_9

    iget-wide v0, v9, Lcom/android/htcdialer/search/SearchableContact;->id:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-lez v19, :cond_9

    .line 3064
    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const v22, 0x7f09002c

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3070
    :goto_4
    const/16 v19, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x0

    const v22, 0x7f090042

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3073
    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x0

    const v22, 0x7f090041

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3075
    sget-boolean v19, Lcom/android/htcdialer/Dialer;->IS_DOUBLESHOT_TMO:Z

    if-nez v19, :cond_6

    if-eqz v9, :cond_6

    iget-wide v0, v9, Lcom/android/htcdialer/search/SearchableContact;->id:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-lez v19, :cond_6

    iget-boolean v0, v9, Lcom/android/htcdialer/search/SearchableContact;->isSimContact:Z

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 3077
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 3078
    .restart local v18       #resolver:Landroid/content/ContentResolver;
    iget-wide v0, v9, Lcom/android/htcdialer/search/SearchableContact;->id:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/htcdialer/util/CustomizeUtils$Tmo;->isFavesAccount(JLandroid/content/ContentResolver;)Z

    move-result v19

    if-nez v19, :cond_6

    invoke-static/range {v18 .. v18}, Lcom/android/htcdialer/util/CustomizeUtils$Tmo;->isFaveLimitReached(Landroid/content/ContentResolver;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 3080
    const/16 v19, 0x0

    const/16 v20, 0xa

    const/16 v21, 0x0

    const v22, 0x7f09005a

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3086
    .end local v18           #resolver:Landroid/content/ContentResolver;
    :cond_6
    const-wide/16 v19, 0x0

    cmp-long v19, v7, v19

    if-lez v19, :cond_1

    .line 3087
    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    const v22, 0x7f09003f

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 3053
    :cond_7
    if-eqz v17, :cond_8

    .line 3054
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_3

    .line 3056
    :cond_8
    const v19, 0x7f09003c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/Dialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_3

    .line 3066
    :cond_9
    const/16 v19, 0x0

    const/16 v20, 0x5

    const/16 v21, 0x0

    const v22, 0x7f09001f

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 3095
    :cond_a
    if-eqz v9, :cond_b

    iget-wide v0, v9, Lcom/android/htcdialer/search/SearchableContact;->id:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-lez v19, :cond_b

    .line 3096
    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const v22, 0x7f09002c

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3100
    :cond_b
    const-wide/16 v19, 0x0

    cmp-long v19, v7, v19

    if-lez v19, :cond_c

    .line 3102
    const/16 v19, 0x0

    const/16 v20, 0x9

    const/16 v21, 0x0

    const v22, 0x7f090092

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3107
    :cond_c
    const/16 v19, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x0

    const v22, 0x7f090042

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3110
    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x0

    const v22, 0x7f090041

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3112
    if-eqz v9, :cond_10

    iget-boolean v0, v9, Lcom/android/htcdialer/search/SearchableContact;->isSimContact:Z

    move/from16 v19, v0

    if-nez v19, :cond_10

    iget-wide v0, v9, Lcom/android/htcdialer/search/SearchableContact;->id:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-lez v19, :cond_10

    .line 3114
    sget-wide v19, Lcom/android/htcdialer/Dialer;->myContactId:J

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_d

    .line 3115
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/util/contacts/ContactsUtility;->getCacheMyContactIds(Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object v6

    .line 3116
    .local v6, bundle:Landroid/os/Bundle;
    if-eqz v6, :cond_d

    .line 3117
    const-string v19, "contact_id"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v19

    sput-wide v19, Lcom/android/htcdialer/Dialer;->myContactId:J

    .line 3120
    .end local v6           #bundle:Landroid/os/Bundle;
    :cond_d
    iget-wide v0, v9, Lcom/android/htcdialer/search/SearchableContact;->id:J

    move-wide/from16 v19, v0

    sget-wide v21, Lcom/android/htcdialer/Dialer;->myContactId:J

    cmp-long v19, v19, v21

    if-eqz v19, :cond_e

    .line 3121
    iget-boolean v0, v9, Lcom/android/htcdialer/search/SearchableContact;->isFavorite:Z

    move/from16 v19, v0

    if-eqz v19, :cond_15

    .line 3122
    const/16 v19, 0x0

    const/16 v20, 0x8

    const/16 v21, 0x0

    const v22, 0x7f09002f

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3128
    :cond_e
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    iget-wide v0, v9, Lcom/android/htcdialer/search/SearchableContact;->id:J

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Lcom/htc/provider/ContactsContract$CommonDataKinds$Email;->queryContactEmailAddresses(Landroid/content/ContentResolver;J)Landroid/database/Cursor;

    move-result-object v12

    .line 3132
    .local v12, emailCursor:Landroid/database/Cursor;
    if-eqz v12, :cond_10

    .line 3133
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v19

    if-lez v19, :cond_f

    .line 3134
    const/16 v19, 0x0

    const/16 v20, 0x3

    const/16 v21, 0x0

    const v22, 0x7f090044

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3136
    :cond_f
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3140
    .end local v12           #emailCursor:Landroid/database/Cursor;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htcdialer/BaseSmartSearchList;->mVoiceMailNumber:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/util/contacts/PhoneUtils;->isSpecialType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 3143
    .local v15, isSpecial:Z
    sget-boolean v19, Lcom/android/htcdialer/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v19, :cond_16

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->isN11Number(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_16

    const/4 v14, 0x1

    .line 3145
    .local v14, isN11Number:Z
    :goto_6
    if-nez v15, :cond_12

    if-nez v14, :cond_12

    if-eqz v9, :cond_11

    iget-wide v0, v9, Lcom/android/htcdialer/search/SearchableContact;->id:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_12

    .line 3148
    :cond_11
    const/16 v19, 0x0

    const/16 v20, 0x5

    const/16 v21, 0x0

    const v22, 0x7f09001f

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3152
    :cond_12
    const-wide/16 v19, 0x0

    cmp-long v19, v7, v19

    if-lez v19, :cond_13

    .line 3154
    invoke-static {}, Lcom/htc/util/phone/ProjectUtils;->getSenseVersion()F

    move-result v19

    const/high16 v20, 0x4000

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_17

    .line 3155
    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    const v22, 0x7f090040

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3164
    :cond_13
    :goto_7
    invoke-static {}, Lcom/android/htcdialer/HtcIpDialActivity;->isEnabled()Z

    move-result v19

    if-eqz v19, :cond_14

    .line 3165
    const/16 v19, 0x0

    const/16 v20, 0xc

    const/16 v21, 0x0

    const v22, 0x7f090087

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3170
    :cond_14
    if-nez v15, :cond_1

    if-nez v14, :cond_1

    invoke-static {}, Lcom/android/htcdialer/util/BuildUtils$Customization;->isChinaSKU()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-virtual {v5, v10}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->isVip(Lcom/android/htcdialer/search/SearchableObject;)I

    move-result v19

    invoke-virtual {v5, v10}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->isBlacklist(Lcom/android/htcdialer/search/SearchableObject;)I

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/htc/util/contacts/BlacklistUtils;->couldAddToBlockCaller(II)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 3174
    const/16 v19, 0x0

    const/16 v20, 0xd

    const/16 v21, 0xd

    const v22, 0x7f090084

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 3124
    .end local v14           #isN11Number:Z
    .end local v15           #isSpecial:Z
    :cond_15
    const/16 v19, 0x0

    const/16 v20, 0x7

    const/16 v21, 0x0

    const v22, 0x7f09002e

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 3143
    .restart local v15       #isSpecial:Z
    :cond_16
    const/4 v14, 0x0

    goto/16 :goto_6

    .line 3158
    .restart local v14       #isN11Number:Z
    :cond_17
    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    const v22, 0x7f09003f

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_7
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .parameter "id"
    .parameter "args"

    .prologue
    .line 7659
    const/4 v8, 0x1

    if-ne v8, p1, :cond_2

    .line 7663
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->isResumed()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    if-nez v8, :cond_0

    .line 7664
    const/4 v8, 0x0

    .line 7744
    :goto_0
    return-object v8

    .line 7668
    :cond_0
    new-instance v0, Lcom/android/htcdialer/Dialer$27;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/Dialer$27;-><init>(Lcom/android/htcdialer/Dialer;)V

    .line 7679
    .local v0, OnClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090089

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 7680
    .local v7, title:Ljava/lang/String;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7681
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    const-string v10, "number"

    invoke-virtual {v8, v9, v0, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7687
    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mIpDialObserver:Landroid/database/ContentObserver;

    if-eqz v8, :cond_1

    .line 7688
    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mIpDialObserver:Landroid/database/ContentObserver;

    invoke-interface {v8, v9}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 7692
    :cond_1
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    goto :goto_0

    .line 7696
    .end local v0           #OnClickListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v1           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v7           #title:Ljava/lang/String;
    :cond_2
    const/4 v8, 0x2

    if-ne v8, p1, :cond_7

    .line 7697
    iget-object v8, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030027

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 7701
    .local v2, content:Landroid/view/View;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 7702
    .local v3, hint2:Ljava/lang/StringBuilder;
    const v8, 0x7f09004f

    invoke-virtual {p0, v8}, Lcom/android/htcdialer/Dialer;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7703
    const-string v8, " \""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7704
    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0x71

    if-eq v8, v9, :cond_3

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0x70

    if-ne v8, v9, :cond_5

    .line 7706
    :cond_3
    const-string v8, "<font color = \"#FF6600\">"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7710
    :goto_1
    const v8, 0x7f090054

    invoke-virtual {p0, v8}, Lcom/android/htcdialer/Dialer;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7711
    const-string v8, "</font>"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7712
    const-string v8, "\" "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7713
    const v8, 0x7f090050

    invoke-virtual {p0, v8}, Lcom/android/htcdialer/Dialer;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7714
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    .line 7715
    .local v5, spannedString:Landroid/text/Spanned;
    const v8, 0x7f0b0044

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 7716
    .local v6, textView:Landroid/widget/TextView;
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7718
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 7719
    .local v4, hint3:Ljava/lang/StringBuilder;
    const v8, 0x7f090051

    invoke-virtual {p0, v8}, Lcom/android/htcdialer/Dialer;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7720
    const-string v8, " \""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7721
    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0x71

    if-eq v8, v9, :cond_4

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0x70

    if-ne v8, v9, :cond_6

    .line 7723
    :cond_4
    const-string v8, "<font color = \"#FF6600\">"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7727
    :goto_2
    const v8, 0x7f090055

    invoke-virtual {p0, v8}, Lcom/android/htcdialer/Dialer;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7728
    const-string v8, "</font>"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7729
    const-string v8, "\" "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7730
    const v8, 0x7f090052

    invoke-virtual {p0, v8}, Lcom/android/htcdialer/Dialer;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7731
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    .line 7732
    const v8, 0x7f0b0069

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #textView:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 7733
    .restart local v6       #textView:Landroid/widget/TextView;
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7734
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7737
    .restart local v1       #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7738
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7739
    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7741
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    goto/16 :goto_0

    .line 7708
    .end local v1           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v4           #hint3:Ljava/lang/StringBuilder;
    .end local v5           #spannedString:Landroid/text/Spanned;
    .end local v6           #textView:Landroid/widget/TextView;
    :cond_5
    const-string v8, "<font color = \"#33CC00\">"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 7725
    .restart local v4       #hint3:Ljava/lang/StringBuilder;
    .restart local v5       #spannedString:Landroid/text/Spanned;
    .restart local v6       #textView:Landroid/widget/TextView;
    :cond_6
    const-string v8, "<font color = \"#33CC00\">"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 7744
    .end local v2           #content:Landroid/view/View;
    .end local v3           #hint2:Ljava/lang/StringBuilder;
    .end local v4           #hint3:Ljava/lang/StringBuilder;
    .end local v5           #spannedString:Landroid/text/Spanned;
    .end local v6           #textView:Landroid/widget/TextView;
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/htcdialer/BaseSmartSearchList;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v8

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 2659
    const v4, 0x7f09002b

    invoke-interface {p1, v6, v8, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 2660
    .local v1, menuPeople:Landroid/view/MenuItem;
    const v4, 0x2080a40

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2661
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2663
    const v4, 0x7f090090

    invoke-interface {p1, v6, v7, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 2664
    .local v0, menuCallHistory:Landroid/view/MenuItem;
    const v4, 0x2080a1c

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2665
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2667
    sget-boolean v4, Lcom/android/htcdialer/Dialer;->SUPPORT_VT:Z

    if-eqz v4, :cond_0

    .line 2668
    iget-object v4, p0, Lcom/android/htcdialer/Dialer;->mVTHelper:Lcom/android/htcdialer/util/VTUtils$VTHelper;

    invoke-virtual {v4, p1}, Lcom/android/htcdialer/util/VTUtils$VTHelper;->createMenus(Landroid/view/Menu;)V

    .line 2672
    :cond_0
    const/4 v4, 0x3

    const v5, 0x7f09002c

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x20809ed

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2675
    const/4 v4, 0x4

    const v5, 0x7f09001f

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x208031d

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2678
    const/4 v4, 0x5

    const v5, 0x7f090045

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x2080a84

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2684
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2685
    .local v3, switchKeypadString:Ljava/lang/String;
    const v2, 0x7f02005e

    .line 2686
    .local v2, switchKeypadIcon:I
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 2687
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2688
    const v2, 0x7f02005d

    .line 2690
    :cond_1
    const/16 v4, 0xc

    invoke-interface {p1, v6, v4, v6, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2700
    const/4 v4, 0x6

    const v5, 0x7f09008c

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x2080336

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2705
    sget-boolean v4, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    if-ne v4, v7, :cond_3

    .line 2706
    :cond_2
    const/16 v4, 0x8

    const v5, 0x7f0900a5

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x2080a42

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2710
    :cond_3
    sget-boolean v4, Landroid/provider/HtcContactsContract$BALCKLIST;->enableBlacklist:Z

    if-eqz v4, :cond_4

    .line 2711
    const/16 v4, 0x9

    const v5, 0x7f090083

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x20809dc

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2716
    :cond_4
    const/16 v4, 0xa

    const v5, 0x7f090088

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x2080a22

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2721
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2723
    const/16 v4, 0x36

    const v5, 0x7f0900ad

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2727
    :cond_5
    sget-boolean v4, Lcom/android/htcdialer/util/BuildUtils;->SENSE_LANDSCAPE:Z

    if-nez v4, :cond_6

    .line 2729
    const/4 v4, 0x7

    const v5, 0x7f09005b

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x2080328

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2733
    :cond_6
    sget-boolean v4, Lcom/android/htcdialer/Dialer;->SUPPORT_VT:Z

    if-eqz v4, :cond_7

    sget-boolean v4, Lcom/android/htcdialer/util/VTUtils;->VT_TEST:Z

    if-eqz v4, :cond_7

    .line 2735
    iget-object v4, p0, Lcom/android/htcdialer/Dialer;->mVTHelper:Lcom/android/htcdialer/util/VTUtils$VTHelper;

    invoke-virtual {v4, p1}, Lcom/android/htcdialer/util/VTUtils$VTHelper;->createTestMenus(Landroid/view/Menu;)V

    .line 2738
    :cond_7
    invoke-super {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2741
    return v8
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 1407
    invoke-super {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->onDestroy()V

    .line 1409
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

    invoke-virtual {v1}, Lcom/android/htcdialer/util/KeypadUtils;->releaseToneGenerator()V

    .line 1411
    sget-boolean v1, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1412
    :cond_0
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911Receiver:Lcom/android/htcdialer/CdmaE911Receiver;

    if-eqz v1, :cond_1

    .line 1413
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911Receiver:Lcom/android/htcdialer/CdmaE911Receiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/htcdialer/CdmaE911Receiver;->onListenChanging(Z)V

    .line 1418
    :cond_1
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->unregistConfig()V

    .line 1421
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->closeIpDialCursor()V

    .line 1425
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1426
    .local v0, window:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1429
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mConfirmBlacklistDlg:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mConfirmBlacklistDlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1430
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mConfirmBlacklistDlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1434
    :cond_2
    return-void
.end method

.method protected onEditNumberIntent(Landroid/content/Intent;)V
    .locals 16
    .parameter "intent"

    .prologue
    .line 1677
    sget-boolean v14, Lcom/htc/util/phone/ProfilingUtils;->ENABLED:Z

    if-eqz v14, :cond_0

    .line 1678
    invoke-direct/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->profilingEditB4Call()V

    .line 1681
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    if-nez v14, :cond_2

    .line 1842
    :cond_1
    :goto_0
    return-void

    .line 1683
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 1684
    .local v12, uri:Landroid/net/Uri;
    const-string v14, "tel"

    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1686
    .local v8, isSchemeTel:Z
    if-eqz v8, :cond_1

    .line 1690
    const/4 v6, 0x1

    .line 1733
    .local v6, editMode:Z
    invoke-virtual {v12}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 1735
    .local v4, dialString:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1742
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    .line 1747
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/htcdialer/BaseSmartSearchList;->mDisableSmartSearch:Z

    .line 1749
    const/4 v14, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/htcdialer/Dialer;->setSearchMode(I)V

    .line 1759
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    .line 1761
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    if-eqz v14, :cond_3

    .line 1762
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v14}, Lcom/android/htcdialer/search/SearchModule;->clearClicked()V

    .line 1765
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 1766
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v14}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 1768
    .local v5, digits:Landroid/text/Editable;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/htcdialer/Dialer;->mSearchBroughtNumber:Z

    if-nez v14, :cond_4

    .line 1769
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/htcdialer/BaseSmartSearchList;->mDisableSmartSearch:Z

    .line 1772
    :cond_4
    const/4 v14, 0x0

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v15

    invoke-interface {v5, v14, v15, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1775
    .end local v5           #digits:Landroid/text/Editable;
    :cond_5
    const-string v14, "SelectionStart"

    const/4 v15, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 1776
    .local v10, select:I
    const/4 v14, -0x1

    if-eq v10, v14, :cond_6

    .line 1777
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v14, v10, v10}, Lcom/android/htcdialer/widget/AccumulatorText;->setSelection(II)V

    .line 1785
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/htcdialer/widget/AccumulatorText;->setCursorVisible(Z)V

    .line 1786
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v14

    const/4 v15, 0x5

    if-eq v14, v15, :cond_c

    const/16 v13, 0x8

    .line 1787
    .local v13, visibility:I
    :goto_1
    const/16 v14, 0x8

    if-ne v13, v14, :cond_7

    sget-boolean v14, Lcom/android/htcdialer/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v14, :cond_7

    .line 1788
    const/4 v13, 0x4

    .line 1790
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 1791
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v14}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getVisibility()I

    move-result v14

    if-eqz v14, :cond_8

    .line 1793
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htcdialer/Dialer;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1804
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    .line 1816
    const-string v14, "com.htc.calendar.event_uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/htcdialer/Dialer;->mCalendarEventUri:Ljava/lang/String;

    .line 1817
    const/4 v7, 0x0

    .line 1818
    .local v7, ei:Lcom/htc/util/calendar/EventInstance;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htcdialer/Dialer;->mCalendarEventUri:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 1819
    invoke-static/range {p0 .. p0}, Lcom/htc/util/calendar/HtcCalendarManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htcdialer/Dialer;->mCalendarEventUri:Ljava/lang/String;

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/util/calendar/HtcCalendarManager;->getEvent(Landroid/net/Uri;)Lcom/htc/util/calendar/EventInstance;

    move-result-object v7

    .line 1821
    :cond_9
    if-eqz v7, :cond_a

    .line 1822
    invoke-virtual {v7}, Lcom/htc/util/calendar/EventInstance;->getTitle()Ljava/lang/String;

    move-result-object v11

    .line 1823
    .local v11, title:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/htc/util/calendar/EventInstance;->getLocation()Ljava/lang/String;

    move-result-object v9

    .line 1824
    .local v9, location:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/htc/util/calendar/EventInstance;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 1825
    .local v3, description:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/htc/util/calendar/EventInstance;->getBegin()J

    move-result-wide v1

    .line 1826
    .local v1, begin:J
    invoke-virtual {v7}, Lcom/htc/util/calendar/EventInstance;->getEnd()J

    .line 1832
    .end local v1           #begin:J
    .end local v3           #description:Ljava/lang/String;
    .end local v9           #location:Ljava/lang/String;
    .end local v11           #title:Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->isChild()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1833
    const-string v14, "com.htc.calendar.event_uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1837
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/Dialer;->isChild()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1838
    const-string v14, "android.intent.action.MAIN"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1786
    .end local v7           #ei:Lcom/htc/util/calendar/EventInstance;
    .end local v13           #visibility:I
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x1

    .line 4041
    sparse-switch p1, :sswitch_data_0

    .line 4071
    :cond_0
    :goto_0
    sparse-switch p1, :sswitch_data_1

    .line 4165
    :cond_1
    :goto_1
    const/16 v5, 0x52

    if-ne p1, v5, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-eqz v5, :cond_9

    .line 4170
    :cond_2
    :goto_2
    return v4

    .line 4055
    :sswitch_0
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isPortrait()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4056
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    .line 4059
    :cond_3
    sget-boolean v5, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v5, :cond_4

    iget v5, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 4060
    :cond_4
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    if-eqz v5, :cond_0

    .line 4061
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    invoke-virtual {v5}, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->leavePowerSaveModeRequest()V

    goto :goto_0

    .line 4078
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 4079
    iput-boolean v4, p0, Lcom/android/htcdialer/Dialer;->mFirstCallKeyDown:Z

    goto :goto_2

    .line 4088
    :sswitch_2
    sget-boolean v5, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-eqz v5, :cond_1

    .line 4098
    :sswitch_3
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v5}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    .line 4099
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v5}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getContactCardView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/htcdialer/Dialer;->updateAndRequestContactCardFocusable(Landroid/view/View;)V

    goto :goto_1

    .line 4104
    :cond_5
    iget-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    if-nez v5, :cond_1

    .line 4105
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v1

    .line 4109
    .local v1, pos:I
    if-eq v1, v7, :cond_6

    if-nez v1, :cond_1

    .line 4110
    :cond_6
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->hideDialpad()V

    .line 4111
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    .line 4112
    .local v0, listView:Lcom/htc/widget/HtcListView;
    invoke-direct {p0, v0}, Lcom/android/htcdialer/Dialer;->updateAndRequestListFocusable(Lcom/htc/widget/HtcListView;)V

    goto :goto_1

    .line 4120
    .end local v0           #listView:Lcom/htc/widget/HtcListView;
    .end local v1           #pos:I
    :sswitch_4
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isPortrait()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    if-nez v5, :cond_1

    .line 4121
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v1

    .line 4124
    .restart local v1       #pos:I
    iget-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    if-nez v5, :cond_1

    .line 4125
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v1

    .line 4127
    if-eqz v1, :cond_7

    if-ne v1, v7, :cond_1

    .line 4128
    :cond_7
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    .line 4130
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v5}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4131
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    goto/16 :goto_1

    .line 4133
    :cond_8
    invoke-direct {p0, v4}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    goto/16 :goto_1

    .line 4145
    .end local v1           #pos:I
    :sswitch_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v7

    sub-long v2, v5, v7

    .line 4147
    .local v2, timeDiff:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v2, v5

    if-ltz v5, :cond_1

    .line 4149
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->callVoicemail()V

    goto/16 :goto_2

    .line 4170
    .end local v2           #timeDiff:J
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/android/htcdialer/BaseSmartSearchList;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_2

    .line 4041
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x43 -> :sswitch_0
    .end sparse-switch

    .line 4071
    :sswitch_data_1
    .sparse-switch
        0x5 -> :sswitch_1
        0x8 -> :sswitch_5
        0x13 -> :sswitch_4
        0x14 -> :sswitch_3
        0x15 -> :sswitch_2
        0x16 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 4176
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 4177
    sparse-switch p1, :sswitch_data_0

    .line 4200
    invoke-super {p0, p1, p2}, Lcom/android/htcdialer/BaseSmartSearchList;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 4182
    :sswitch_0
    iget-boolean v1, p0, Lcom/android/htcdialer/Dialer;->mFirstCallKeyDown:Z

    if-eqz v1, :cond_0

    .line 4183
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->placeCall()V

    .line 4184
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/htcdialer/Dialer;->mFirstCallKeyDown:Z

    goto :goto_0

    .line 4196
    :sswitch_1
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->viewTutorial()V

    goto :goto_0

    .line 4177
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 4245
    invoke-static {}, Lcom/android/htcdialer/util/BuildUtils$Customization;->isShowPhoneNumOnDialPadOrPopUpNumList()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 4246
    check-cast v0, Lcom/android/htcdialer/search/DialerItem;

    .line 4247
    .local v0, item:Lcom/android/htcdialer/search/DialerItem;
    iget-object v1, v0, Lcom/android/htcdialer/search/DialerItem;->mPhones:[Lcom/android/htcdialer/search/SearchablePhone;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, v0, Lcom/android/htcdialer/search/DialerItem;->mPhones:[Lcom/android/htcdialer/search/SearchablePhone;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    sget-boolean v1, Lcom/android/htcdialer/DialerApp;->ENABLE_MERGE_CONTACT:Z

    if-eqz v1, :cond_0

    .line 4248
    iget-object v1, v0, Lcom/android/htcdialer/search/DialerItem;->mPhones:[Lcom/android/htcdialer/search/SearchablePhone;

    invoke-direct {p0, v1}, Lcom/android/htcdialer/Dialer;->showNumberSelectedDialog([Lcom/android/htcdialer/search/SearchablePhone;)V

    .line 4256
    .end local v0           #item:Lcom/android/htcdialer/search/DialerItem;
    :goto_0
    return-void

    .line 4250
    .restart local v0       #item:Lcom/android/htcdialer/search/DialerItem;
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/htcdialer/Dialer;->getNumberByPosition(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->editNumberBeforeCall(Ljava/lang/String;)V

    goto :goto_0

    .line 4253
    .end local v0           #item:Lcom/android/htcdialer/search/DialerItem;
    :cond_1
    invoke-direct {p0, p3, p2}, Lcom/android/htcdialer/Dialer;->placeCall(ILandroid/view/View;)V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 12
    .parameter "view"

    .prologue
    const/16 v11, 0x9

    const/16 v10, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 5332
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v9}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 5333
    .local v0, digits:Landroid/text/Editable;
    const/4 v5, 0x0

    .line 5338
    .local v5, speedDial:Z
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer;->getTone(Landroid/view/View;)I

    move-result v6

    .line 5340
    .local v6, tone:I
    if-ltz v6, :cond_0

    .line 5341
    const/16 v9, 0x96

    invoke-direct {p0, v6, v9}, Lcom/android/htcdialer/Dialer;->playTone(II)V

    .line 5346
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 5603
    :cond_1
    :goto_0
    return v7

    .line 5348
    :sswitch_0
    iget-object v9, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v9}, Lcom/android/htcdialer/search/SearchModule;->clearClicked()V

    .line 5349
    iput-boolean v7, p0, Lcom/android/htcdialer/Dialer;->mNeedClearText:Z

    .line 5350
    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    .line 5351
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->gc()V

    move v7, v8

    .line 5352
    goto :goto_0

    .line 5359
    :sswitch_1
    iget v8, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    if-eqz v8, :cond_1

    .line 5361
    const/4 v1, 0x1

    .line 5362
    .local v1, enterEditMode:Z
    if-eqz v1, :cond_1

    .line 5363
    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v8}, Lcom/android/htcdialer/widget/AccumulatorText;->getSelectionStart()I

    move-result v4

    .line 5364
    .local v4, selectStart:I
    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v8}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5366
    .local v3, number:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-direct {p0, v8, v4}, Lcom/android/htcdialer/Dialer;->editNumberBeforeCall(Ljava/lang/String;I)V

    goto :goto_0

    .line 5374
    .end local v1           #enterEditMode:Z
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #selectStart:I
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->viewCallHistoy()V

    move v7, v8

    .line 5375
    goto :goto_0

    .line 5380
    :sswitch_3
    iget v7, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    if-nez v7, :cond_2

    .line 5381
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 5383
    :cond_2
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v9, "12:"

    invoke-virtual {v7, v9}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5384
    const/16 v7, 0x51

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->keyPressed(I)V

    move v7, v8

    .line 5385
    goto :goto_0

    .line 5389
    :sswitch_4
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v7

    if-nez v7, :cond_5

    .line 5390
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 5391
    invoke-static {}, Lcom/android/htcdialer/SpeedDialListActivity;->getServiceMap()Ljava/util/HashMap;

    move-result-object v2

    .line 5393
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v9, 0x28

    if-ne v7, v9, :cond_3

    .line 5395
    const-string v7, "*9"

    invoke-virtual {p0, v7}, Lcom/android/htcdialer/Dialer;->placeCall(Ljava/lang/String;)V

    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    :goto_1
    move v7, v8

    .line 5411
    goto :goto_0

    .line 5397
    .restart local v2       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_3
    if-eqz v2, :cond_4

    const-string v7, "1"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 5398
    const-string v7, "1"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    aget-object v7, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/htcdialer/Dialer;->placeCall(Ljava/lang/String;)V

    goto :goto_1

    .line 5402
    :cond_4
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->callVoicemail()V

    goto :goto_1

    .line 5405
    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_5
    iget v7, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    if-nez v7, :cond_6

    .line 5406
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 5408
    :cond_6
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v9, "1:"

    invoke-virtual {v7, v9}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5409
    invoke-direct {p0, v10}, Lcom/android/htcdialer/Dialer;->keyPressed(I)V

    goto :goto_1

    .line 5434
    :sswitch_5
    iget v7, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    if-nez v7, :cond_7

    .line 5435
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 5438
    :cond_7
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v7

    if-nez v7, :cond_8

    .line 5439
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->doSpeedDial(I)Z

    move-result v5

    .line 5442
    :cond_8
    if-nez v5, :cond_9

    .line 5443
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v9, "2:"

    invoke-virtual {v7, v9}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5444
    invoke-direct {p0, v11}, Lcom/android/htcdialer/Dialer;->keyPressed(I)V

    :cond_9
    move v7, v8

    .line 5446
    goto/16 :goto_0

    .line 5450
    :sswitch_6
    iget v7, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    if-nez v7, :cond_a

    .line 5451
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 5454
    :cond_a
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v7

    if-nez v7, :cond_b

    .line 5455
    const/4 v7, 0x3

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->doSpeedDial(I)Z

    move-result v5

    .line 5458
    :cond_b
    if-nez v5, :cond_c

    .line 5459
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v9, "3:"

    invoke-virtual {v7, v9}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5460
    const/16 v7, 0xa

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->keyPressed(I)V

    :cond_c
    move v7, v8

    .line 5462
    goto/16 :goto_0

    .line 5466
    :sswitch_7
    iget v7, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    if-nez v7, :cond_d

    .line 5467
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 5470
    :cond_d
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v7

    if-nez v7, :cond_e

    .line 5471
    const/4 v7, 0x4

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->doSpeedDial(I)Z

    move-result v5

    .line 5474
    :cond_e
    if-nez v5, :cond_f

    .line 5475
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v9, "4:"

    invoke-virtual {v7, v9}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5476
    const/16 v7, 0xb

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->keyPressed(I)V

    :cond_f
    move v7, v8

    .line 5479
    goto/16 :goto_0

    .line 5483
    :sswitch_8
    iget v7, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    if-nez v7, :cond_10

    .line 5484
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 5487
    :cond_10
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v7

    if-nez v7, :cond_11

    .line 5488
    const/4 v7, 0x5

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->doSpeedDial(I)Z

    move-result v5

    .line 5491
    :cond_11
    if-nez v5, :cond_12

    .line 5492
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v9, "5:"

    invoke-virtual {v7, v9}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5493
    const/16 v7, 0xc

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->keyPressed(I)V

    :cond_12
    move v7, v8

    .line 5495
    goto/16 :goto_0

    .line 5499
    :sswitch_9
    iget v7, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    if-nez v7, :cond_13

    .line 5500
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 5503
    :cond_13
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v7

    if-nez v7, :cond_14

    .line 5504
    const/4 v7, 0x6

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->doSpeedDial(I)Z

    move-result v5

    .line 5507
    :cond_14
    if-nez v5, :cond_15

    .line 5508
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v9, "6:"

    invoke-virtual {v7, v9}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5509
    const/16 v7, 0xd

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->keyPressed(I)V

    :cond_15
    move v7, v8

    .line 5511
    goto/16 :goto_0

    .line 5515
    :sswitch_a
    iget v7, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    if-nez v7, :cond_16

    .line 5516
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 5519
    :cond_16
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v7

    if-nez v7, :cond_17

    .line 5520
    const/4 v7, 0x7

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->doSpeedDial(I)Z

    move-result v5

    .line 5523
    :cond_17
    if-nez v5, :cond_18

    .line 5524
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v9, "7:"

    invoke-virtual {v7, v9}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5525
    const/16 v7, 0xe

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->keyPressed(I)V

    :cond_18
    move v7, v8

    .line 5527
    goto/16 :goto_0

    .line 5531
    :sswitch_b
    iget v7, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    if-nez v7, :cond_19

    .line 5532
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 5535
    :cond_19
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v7

    if-nez v7, :cond_1a

    .line 5536
    invoke-direct {p0, v10}, Lcom/android/htcdialer/Dialer;->doSpeedDial(I)Z

    move-result v5

    .line 5539
    :cond_1a
    if-nez v5, :cond_1b

    .line 5540
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v9, "8:"

    invoke-virtual {v7, v9}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5541
    const/16 v7, 0xf

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->keyPressed(I)V

    :cond_1b
    move v7, v8

    .line 5543
    goto/16 :goto_0

    .line 5547
    :sswitch_c
    iget v7, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    if-nez v7, :cond_1c

    .line 5548
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 5551
    :cond_1c
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v7

    if-nez v7, :cond_1d

    .line 5552
    invoke-direct {p0, v11}, Lcom/android/htcdialer/Dialer;->doSpeedDial(I)Z

    move-result v5

    .line 5555
    :cond_1d
    if-nez v5, :cond_1e

    .line 5556
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v9, "9:"

    invoke-virtual {v7, v9}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5557
    const/16 v7, 0x10

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->keyPressed(I)V

    :cond_1e
    move v7, v8

    .line 5559
    goto/16 :goto_0

    .line 5563
    :sswitch_d
    iget v7, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    if-nez v7, :cond_1f

    .line 5564
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 5567
    :cond_1f
    sget-boolean v7, Lcom/android/htcdialer/Dialer;->SUPPORT_LONG_CLICK:Z

    if-eqz v7, :cond_20

    .line 5568
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v9, "13:"

    invoke-virtual {v7, v9}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5569
    iget-object v7, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v7}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v7

    const/16 v9, 0x70

    invoke-interface {v7, v9}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    :goto_2
    move v7, v8

    .line 5575
    goto/16 :goto_0

    .line 5571
    :cond_20
    iget-object v7, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v7}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->processMultipleStarKey(Landroid/text/Editable;)V

    goto :goto_2

    .line 5579
    :sswitch_e
    iget v7, p0, Lcom/android/htcdialer/Dialer;->mDTMF_TONE_TYPE:I

    if-nez v7, :cond_21

    .line 5580
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 5582
    :cond_21
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    .line 5584
    invoke-static {}, Lcom/android/htcdialer/HtcIpDialActivity;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->getIpDialItemCount()I

    move-result v7

    if-lez v7, :cond_22

    .line 5586
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->editNumberWithIpDialPrefix()V

    :goto_3
    move v7, v8

    .line 5600
    goto/16 :goto_0

    .line 5590
    :cond_22
    sget-boolean v7, Lcom/android/htcdialer/Dialer;->SUPPORT_LONG_CLICK:Z

    if-eqz v7, :cond_23

    .line 5591
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v9, "14:"

    invoke-virtual {v7, v9}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5592
    iget-object v7, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v7}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v7

    const/16 v9, 0x77

    invoke-interface {v7, v9}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    goto :goto_3

    .line 5596
    :cond_23
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    const-string v9, "11:"

    invoke-virtual {v7, v9}, Lcom/android/htcdialer/search/SearchModule;->appendClicked(Ljava/lang/String;)V

    .line 5597
    const/16 v7, 0x12

    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->keyPressed(I)V

    goto :goto_3

    .line 5346
    nop

    :sswitch_data_0
    .sparse-switch
        0x1020005 -> :sswitch_2
        0x1020009 -> :sswitch_1
        0x202001a -> :sswitch_d
        0x202001b -> :sswitch_e
        0x202016a -> :sswitch_0
        0x2020180 -> :sswitch_4
        0x2020181 -> :sswitch_5
        0x2020182 -> :sswitch_6
        0x2020183 -> :sswitch_7
        0x2020184 -> :sswitch_8
        0x2020185 -> :sswitch_9
        0x2020186 -> :sswitch_a
        0x2020187 -> :sswitch_b
        0x2020188 -> :sswitch_c
        0x2020189 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "newIntent"

    .prologue
    .line 1586
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->isChild()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/high16 v1, 0x400c

    invoke-static {v1, v2}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1587
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1588
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1589
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    .line 1590
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->finish()V

    .line 1598
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1595
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer;->setIntent(Landroid/content/Intent;)V

    .line 1597
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->resolveIntent()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const/4 v9, 0x1

    .line 2826
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    .line 2827
    .local v3, id:I
    sparse-switch v3, :sswitch_data_0

    .line 2954
    const/4 v2, 0x0

    .line 2955
    .local v2, handled:Z
    const/high16 v8, 0x1

    if-ne v3, v8, :cond_6

    .line 2956
    iget-boolean v8, p0, Lcom/android/htcdialer/Dialer;->isHandWritePadShow:Z

    if-eqz v8, :cond_0

    .line 2957
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->switchToDialpad()V

    .line 2963
    :cond_0
    :goto_0
    if-eqz v2, :cond_7

    move v8, v9

    .line 2966
    .end local v2           #handled:Z
    :goto_1
    return v8

    .line 2829
    :sswitch_0
    const-string v8, "ANALYTIC_htcDialer"

    const-string v10, "[Dailer]View call history"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->viewCallHistoy()V

    move v8, v9

    .line 2831
    goto :goto_1

    .line 2834
    :sswitch_1
    const-string v8, "ANALYTIC_htcDialer"

    const-string v10, "[Dailer]View contact list"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->viewContactList()V

    move v8, v9

    .line 2836
    goto :goto_1

    .line 2839
    :sswitch_2
    const-string v8, "ANALYTIC_htcDialer"

    const-string v10, "[Dailer]View contact"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSelectedItemPosition()I

    move-result v7

    .line 2841
    .local v7, pos:I
    invoke-virtual {p0, v7}, Lcom/android/htcdialer/Dialer;->viewContactCard(I)V

    move v8, v9

    .line 2843
    goto :goto_1

    .line 2846
    .end local v7           #pos:I
    :sswitch_3
    const-string v8, "ANALYTIC_htcDialer"

    const-string v10, "[Dailer]Add to contact"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    :try_start_0
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 2849
    .local v0, adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSelectedItemPosition()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htcdialer/search/SearchableObject;

    invoke-virtual {v0, v8}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v6

    .line 2851
    .local v6, number:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/htcdialer/Dialer;->addToContact(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    .end local v6           #number:Ljava/lang/String;
    :goto_2
    move v8, v9

    .line 2856
    goto :goto_1

    .line 2852
    :catch_0
    move-exception v1

    .line 2853
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "HtcDialer"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2859
    .end local v1           #e:Ljava/lang/Exception;
    :sswitch_4
    const-string v8, "ANALYTIC_htcDialer"

    const-string v10, "[Dailer]Speed dial"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2861
    .local v4, intent:Landroid/content/Intent;
    sget-object v8, Landroid/provider/HtcContactsContract$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2862
    invoke-virtual {p0, v4}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    move v8, v9

    .line 2863
    goto :goto_1

    .line 2867
    .end local v4           #intent:Landroid/content/Intent;
    :sswitch_5
    const-string v8, "ANALYTIC_htcDialer"

    const-string v10, "[Dailer]Settings"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2869
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v8, "com.android.phone"

    const-string v10, "com.android.phone.PhonePreference"

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2870
    invoke-virtual {p0, v4}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    move v8, v9

    .line 2872
    goto/16 :goto_1

    .line 2876
    .end local v4           #intent:Landroid/content/Intent;
    :sswitch_6
    const-string v8, "ANALYTIC_htcDialer"

    const-string v10, "[Dailer]Smart search hit"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->viewTutorial()V

    move v8, v9

    .line 2878
    goto/16 :goto_1

    .line 2883
    :sswitch_7
    const-string v8, "ANALYTIC_htcDialer"

    const-string v10, "[Dailer]CDMA exit emergency"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.android.phone.action.ACTION_SHOW_ECM_EXIT_DIALOG"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2885
    .restart local v4       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    move v8, v9

    .line 2886
    goto/16 :goto_1

    .line 2891
    .end local v4           #intent:Landroid/content/Intent;
    :sswitch_8
    const-string v8, "ANALYTIC_htcDialer"

    const-string v10, "[Dailer]Go to blacklist"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2893
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v8, "com.android.htccontacts"

    const-string v10, "com.android.htccontacts.blacklist.HtcEnterBlacklistPwActivity"

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2895
    invoke-virtual {p0, v4}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    move v8, v9

    .line 2896
    goto/16 :goto_1

    .line 2901
    .end local v4           #intent:Landroid/content/Intent;
    :sswitch_9
    const-string v8, "ANALYTIC_htcDialer"

    const-string v10, "[Dailer]IP dial"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->startIpDialActivity()V

    move v8, v9

    .line 2904
    goto/16 :goto_1

    .line 2909
    :sswitch_a
    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v8}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2910
    .restart local v6       #number:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2913
    const-string v8, "+86"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2914
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "**133*"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "#"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2922
    .local v5, ipDialNumber:Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, v5}, Lcom/android/htcdialer/Dialer;->placeCall(Ljava/lang/String;)V

    .end local v5           #ipDialNumber:Ljava/lang/String;
    :cond_1
    move v8, v9

    .line 2924
    goto/16 :goto_1

    .line 2915
    :cond_2
    const-string v8, "86"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2916
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "**133*"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "#"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #ipDialNumber:Ljava/lang/String;
    goto :goto_3

    .line 2917
    .end local v5           #ipDialNumber:Ljava/lang/String;
    :cond_3
    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2918
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "**133*86"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "#"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #ipDialNumber:Ljava/lang/String;
    goto :goto_3

    .line 2920
    .end local v5           #ipDialNumber:Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "**133*86"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "#"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #ipDialNumber:Ljava/lang/String;
    goto :goto_3

    .line 2931
    .end local v5           #ipDialNumber:Ljava/lang/String;
    .end local v6           #number:Ljava/lang/String;
    :sswitch_b
    const-string v8, "ANALYTIC_htcDialer"

    const-string v10, "[Dailer]Assisted dialing"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2933
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v8, "com.android.phone"

    const-string v10, "com.android.phone.nbpcd.AssistedDialingSetting"

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2935
    invoke-virtual {p0, v4}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    move v8, v9

    .line 2936
    goto/16 :goto_1

    .line 2941
    .end local v4           #intent:Landroid/content/Intent;
    :sswitch_c
    iget-boolean v8, p0, Lcom/android/htcdialer/Dialer;->isHandWritePadShow:Z

    if-eqz v8, :cond_5

    .line 2942
    invoke-virtual {p0, v9}, Lcom/android/htcdialer/Dialer;->setSearchMode(I)V

    .line 2943
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    .line 2948
    :goto_4
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->updateTaskBarRightIcon()V

    move v8, v9

    .line 2949
    goto/16 :goto_1

    .line 2945
    :cond_5
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/android/htcdialer/Dialer;->setSearchMode(I)V

    .line 2946
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->toggleDialpad()V

    goto :goto_4

    .line 2959
    .restart local v2       #handled:Z
    :cond_6
    sget-boolean v8, Lcom/android/htcdialer/Dialer;->SUPPORT_VT:Z

    if-eqz v8, :cond_0

    .line 2960
    iget-object v8, p0, Lcom/android/htcdialer/Dialer;->mVTHelper:Lcom/android/htcdialer/util/VTUtils$VTHelper;

    iget-object v10, p0, Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;

    invoke-virtual {v8, v3, v10}, Lcom/android/htcdialer/util/VTUtils$VTHelper;->onMenuSelected(ILcom/android/htcdialer/widget/ButtonGroup;)Z

    move-result v2

    goto/16 :goto_0

    .line 2966
    :cond_7
    invoke-super {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v8

    goto/16 :goto_1

    .line 2827
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x36 -> :sswitch_a
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1292
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->otaDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->otaDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->otaDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 1294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->otaDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 1296
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1302
    :cond_0
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->isChild()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-eqz v0, :cond_1

    .line 1303
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->resolveIntent()V

    .line 1309
    :cond_1
    invoke-super {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->onPause()V

    .line 1311
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_2

    .line 1312
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

    invoke-virtual {v0}, Lcom/android/htcdialer/util/KeypadUtils;->releaseToneGenerator()V

    .line 1322
    :cond_2
    sget-boolean v0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    if-ne v0, v5, :cond_5

    .line 1323
    :cond_3
    iput-boolean v3, p0, Lcom/android/htcdialer/Dialer;->mDisplayPeriod:Z

    .line 1324
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    if-nez v0, :cond_4

    .line 1325
    new-instance v0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/htcdialer/CdmaPhoneStateReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    .line 1327
    :cond_4
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mCdmaStateReceiver:Lcom/android/htcdialer/CdmaPhoneStateReceiver;

    invoke-virtual {v0, v3}, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->onListenChanging(Z)V

    .line 1333
    :cond_5
    sget-boolean v0, Lcom/android/htcdialer/Dialer;->USE_CHINESE_HANDWRITE_IME:Z

    if-eqz v0, :cond_7

    .line 1334
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mHTCIMEReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1336
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v0

    if-ne v0, v5, :cond_7

    .line 1337
    iget-boolean v0, p0, Lcom/android/htcdialer/Dialer;->isHandWritePadShow:Z

    if-eqz v0, :cond_6

    .line 1338
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->hideHandWritePanel()V

    .line 1341
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/htcdialer/Dialer;->setSearchMode(I)V

    .line 1342
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->changeSearchMode()V

    .line 1343
    iput-boolean v3, p0, Lcom/android/htcdialer/Dialer;->isHandWritePadShow:Z

    .line 1347
    :cond_7
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v0

    if-eq v0, v4, :cond_8

    .line 1349
    invoke-virtual {p0, v4}, Lcom/android/htcdialer/Dialer;->setSearchMode(I)V

    .line 1350
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/widget/AccumulatorText;->setText(Ljava/lang/CharSequence;)V

    .line 1354
    :cond_8
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->resumeSocialNetworkSync()V

    .line 1358
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->shouldEnableHandWriting()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1359
    invoke-direct {p0, v3}, Lcom/android/htcdialer/Dialer;->switchImeForHandwriting(Z)V

    .line 1362
    :cond_9
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 13
    .parameter "menu"

    .prologue
    .line 2748
    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-interface {p1, v9, v10}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2749
    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-interface {p1, v9, v10}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2751
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSelectedItemPosition()I

    move-result v6

    .line 2753
    .local v6, pos:I
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 2755
    .local v4, listAdapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    if-ltz v6, :cond_0

    if-nez v4, :cond_9

    :cond_0
    const/4 v1, 0x0

    .line 2756
    .local v1, data:Lcom/android/htcdialer/search/SearchableObject;
    :goto_0
    if-eqz v1, :cond_c

    invoke-virtual {v4}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getCount()I

    move-result v9

    if-lez v9, :cond_c

    iget v9, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_c

    .line 2757
    invoke-virtual {v4, v1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v0

    .line 2758
    .local v0, contact:Lcom/android/htcdialer/search/SearchableContact;
    invoke-virtual {v4, v1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v5

    .line 2759
    .local v5, phoneNumber:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v5, v9}, Lcom/htc/util/contacts/PhoneUtils;->isSpecialType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 2763
    .local v3, isSpecial:Z
    sget-boolean v9, Lcom/android/htcdialer/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v9, :cond_a

    invoke-static {v5}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->isN11Number(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v2, 0x1

    .line 2765
    .local v2, isN11Number:Z
    :goto_1
    if-eqz v0, :cond_1

    iget-wide v9, v0, Lcom/android/htcdialer/search/SearchableContact;->id:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-gtz v9, :cond_2

    :cond_1
    if-nez v2, :cond_2

    if-eqz v3, :cond_b

    .line 2768
    :cond_2
    const/4 v9, 0x3

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2769
    const/4 v9, 0x4

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2780
    .end local v0           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v2           #isN11Number:Z
    .end local v3           #isSpecial:Z
    .end local v5           #phoneNumber:Ljava/lang/String;
    :goto_2
    const/4 v9, 0x7

    const/4 v10, 0x1

    invoke-interface {p1, v9, v10}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2783
    sget-boolean v9, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v9, :cond_3

    iget v9, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 2784
    :cond_3
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911Receiver:Lcom/android/htcdialer/CdmaE911Receiver;

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911Receiver:Lcom/android/htcdialer/CdmaE911Receiver;

    invoke-virtual {v9}, Lcom/android/htcdialer/CdmaE911Receiver;->isEmergencyMode()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 2785
    const/16 v9, 0x8

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2793
    :cond_4
    :goto_3
    const/16 v9, 0xa

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/HtcIpDialActivity;->isEnabled()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2797
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2798
    iget v9, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_5

    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v9}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 2799
    :cond_5
    const/16 v9, 0x36

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2806
    :cond_6
    :goto_4
    sget-boolean v9, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_VT:Z

    if-eqz v9, :cond_7

    .line 2807
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mVTHelper:Lcom/android/htcdialer/util/VTUtils$VTHelper;

    invoke-virtual {v9, p1}, Lcom/android/htcdialer/util/VTUtils$VTHelper;->prepareMenus(Landroid/view/Menu;)V

    .line 2810
    :cond_7
    const/16 v9, 0xc

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->shouldEnableHandWriting()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2811
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09000c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2812
    .local v8, switchKeypadString:Ljava/lang/String;
    const v7, 0x7f02005e

    .line 2813
    .local v7, switchKeypadIcon:I
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8

    .line 2814
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09000d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2815
    const v7, 0x7f02005d

    .line 2817
    :cond_8
    const/16 v9, 0xc

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2818
    const/16 v9, 0xc

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2821
    const/4 v9, 0x1

    return v9

    .line 2755
    .end local v1           #data:Lcom/android/htcdialer/search/SearchableObject;
    .end local v7           #switchKeypadIcon:I
    .end local v8           #switchKeypadString:Ljava/lang/String;
    :cond_9
    invoke-virtual {v4, v6}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/htcdialer/search/SearchableObject;

    move-object v1, v9

    goto/16 :goto_0

    .line 2763
    .restart local v0       #contact:Lcom/android/htcdialer/search/SearchableContact;
    .restart local v1       #data:Lcom/android/htcdialer/search/SearchableObject;
    .restart local v3       #isSpecial:Z
    .restart local v5       #phoneNumber:Ljava/lang/String;
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2771
    .restart local v2       #isN11Number:Z
    :cond_b
    const/4 v9, 0x3

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2772
    const/4 v9, 0x4

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 2775
    .end local v0           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v2           #isN11Number:Z
    .end local v3           #isSpecial:Z
    .end local v5           #phoneNumber:Ljava/lang/String;
    :cond_c
    const/4 v9, 0x3

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2776
    const/4 v9, 0x4

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 2787
    :cond_d
    const/16 v9, 0x8

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 2801
    :cond_e
    const/16 v9, 0x36

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v10, 0x7

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 978
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->isChild()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 979
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->resolveIntent()V

    .line 982
    :cond_0
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->ensureLayoutPreparedBeofreOnResume()V

    .line 984
    invoke-super {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->onResume()V

    .line 988
    const-wide/high16 v5, 0x4008

    invoke-static {v5, v6}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mIsNaviOn:Z

    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isNaviOn()Z

    move-result v6

    if-eq v5, v6, :cond_1

    .line 989
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->updateTaskBarRightIcon()V

    .line 990
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->setupScreenOreitation()Z

    .line 991
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isNaviOn()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mIsNaviOn:Z

    .line 996
    :cond_1
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-ne v5, v8, :cond_2

    .line 998
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    .line 1007
    .local v4, volume:I
    if-eq v4, v10, :cond_2

    .line 1009
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v9, v10, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1016
    .end local v4           #volume:I
    :cond_2
    invoke-static {}, Lcom/android/htcdialer/HtcIpDialActivity;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1017
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->queryIpDialCursor()V

    .line 1026
    :cond_3
    iget-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mHomeDigitSearch:Z

    if-eqz v5, :cond_11

    .line 1027
    iput-boolean v7, p0, Lcom/android/htcdialer/Dialer;->mHomeDigitSearch:Z

    .line 1036
    :cond_4
    :goto_0
    sget-boolean v5, Lcom/android/htcdialer/Dialer;->SUPPORT_VT:Z

    if-eqz v5, :cond_5

    .line 1037
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->resumeVoiceCall()V

    .line 1039
    :cond_5
    invoke-direct {p0, v9}, Lcom/android/htcdialer/Dialer;->updateBarText(Z)V

    .line 1044
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Security_BRIC_flag:Z

    if-ne v5, v9, :cond_6

    .line 1046
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mRandom:Ljava/util/Random;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-nez v5, :cond_6

    .line 1048
    :try_start_0
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 1050
    .local v3, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_12

    .line 1051
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->sendAT_BRIC()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1072
    .end local v3           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_6
    :goto_1
    sget-boolean v5, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-nez v5, :cond_7

    iget v5, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    if-ne v5, v8, :cond_8

    .line 1073
    :cond_7
    iput-boolean v9, p0, Lcom/android/htcdialer/Dialer;->mDisplayPeriod:Z

    .line 1074
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x8

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1078
    :cond_8
    sget-boolean v5, Lcom/android/htcdialer/Dialer;->USE_CHINESE_HANDWRITE_IME:Z

    if-eqz v5, :cond_a

    .line 1080
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mHTCIMEFilter:Landroid/content/IntentFilter;

    if-nez v5, :cond_9

    .line 1081
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "HTC_IME_CURRENT_STATE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/htcdialer/Dialer;->mHTCIMEFilter:Landroid/content/IntentFilter;

    .line 1084
    :cond_9
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mHTCIMEReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/htcdialer/Dialer;->mHTCIMEFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v5, v6}, Lcom/android/htcdialer/Dialer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1091
    :cond_a
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->pauseSocialNetworkSync()V

    .line 1095
    sget-boolean v5, Lcom/android/htcdialer/Dialer;->IS_ESPRESSO:Z

    if-eqz v5, :cond_b

    .line 1096
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1097
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    const v5, 0x7f0b0009

    invoke-virtual {p0, v5}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1098
    .local v2, im:Landroid/widget/ImageView;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1103
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #im:Landroid/widget/ImageView;
    :cond_b
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHint:Landroid/widget/TextView;

    if-eqz v5, :cond_c

    .line 1104
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHint:Landroid/widget/TextView;

    const v6, 0x7f0900a3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1106
    :cond_c
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHint1:Landroid/widget/TextView;

    if-eqz v5, :cond_d

    .line 1107
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mCdmaE911ModeHint1:Landroid/widget/TextView;

    const v6, 0x7f0900a4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1109
    :cond_d
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHint:Landroid/widget/TextView;

    if-eqz v5, :cond_e

    .line 1110
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHint:Landroid/widget/TextView;

    const v6, 0x7f0900a8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1112
    :cond_e
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHint1:Landroid/widget/TextView;

    if-eqz v5, :cond_f

    .line 1113
    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mCdmaPowerSaveModeHint1:Landroid/widget/TextView;

    const v6, 0x7f0900a9

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1121
    :cond_f
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->shouldEnableHandWriting()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1122
    invoke-direct {p0, v9}, Lcom/android/htcdialer/Dialer;->switchImeForHandwriting(Z)V

    .line 1126
    :cond_10
    return-void

    .line 1030
    :cond_11
    iget-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    if-eq v5, v9, :cond_4

    iget-boolean v5, p0, Lcom/android/htcdialer/Dialer;->mNeedClearText:Z

    if-eq v5, v9, :cond_4

    .line 1031
    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    goto/16 :goto_0

    .line 1053
    .restart local v3       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_12
    :try_start_1
    const-string v5, "HtcDialer"

    const-string v6, "CALL button: Unable to find ITelephony interface"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1055
    .end local v3           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 1056
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "HtcDialer"

    const-string v6, "RemoteException from getPhoneInterface()"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 1393
    invoke-super {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->onStop()V

    .line 1394
    iget-boolean v0, p0, Lcom/android/htcdialer/Dialer;->mBgRemoved:Z

    if-nez v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1401
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 2246
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const v5, 0x1020009

    const/4 v7, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4585
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 4588
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 4590
    .local v1, id:I
    sparse-switch v1, :sswitch_data_0

    .line 4631
    :cond_0
    :goto_0
    sparse-switch v1, :sswitch_data_1

    move v2, v3

    .line 4807
    :goto_1
    return v2

    .line 4598
    :sswitch_0
    iget-boolean v4, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    if-eqz v4, :cond_1

    if-eq v5, v1, :cond_0

    .line 4602
    :cond_1
    iget-object v4, p0, Lcom/android/htcdialer/Dialer;->mKeypadGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 4608
    :sswitch_1
    iget-boolean v4, p0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    if-eqz v4, :cond_2

    if-eq v5, v1, :cond_0

    .line 4612
    :cond_2
    iget-object v3, p0, Lcom/android/htcdialer/Dialer;->mKeypadGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 4619
    :sswitch_2
    iget-object v4, p0, Lcom/android/htcdialer/Dialer;->mGestureDetectorForList:Landroid/view/GestureDetector;

    invoke-virtual {v4, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4621
    sget-boolean v4, Lcom/android/htcdialer/Dialer;->USE_CHINESE_HANDWRITE_IME:Z

    if-eqz v4, :cond_0

    .line 4622
    iget-boolean v4, p0, Lcom/android/htcdialer/Dialer;->isHandWritePadShow:Z

    if-eqz v4, :cond_0

    .line 4623
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->hideDialpad()V

    goto :goto_0

    :sswitch_3
    move v2, v3

    .line 4638
    goto :goto_1

    .line 4642
    :sswitch_4
    if-nez v0, :cond_4

    .line 4643
    invoke-direct {p0, v2}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    .line 4644
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->vibrate()V

    .line 4648
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mKeypadGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v2, v3

    .line 4650
    goto :goto_1

    .line 4645
    :cond_4
    if-eq v0, v2, :cond_5

    if-ne v0, v7, :cond_3

    .line 4646
    :cond_5
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    goto :goto_2

    .line 4653
    :sswitch_5
    if-nez v0, :cond_7

    .line 4654
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    .line 4655
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->vibrate()V

    .line 4659
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mKeypadGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v2, v3

    .line 4661
    goto :goto_1

    .line 4656
    :cond_7
    if-eq v0, v2, :cond_8

    if-ne v0, v7, :cond_6

    .line 4657
    :cond_8
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    goto :goto_3

    .line 4664
    :sswitch_6
    if-nez v0, :cond_a

    .line 4665
    invoke-direct {p0, v7}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    .line 4666
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->vibrate()V

    .line 4670
    :cond_9
    :goto_4
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mKeypadGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v2, v3

    .line 4672
    goto :goto_1

    .line 4667
    :cond_a
    if-eq v0, v2, :cond_b

    if-ne v0, v7, :cond_9

    .line 4668
    :cond_b
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    goto :goto_4

    .line 4675
    :sswitch_7
    if-nez v0, :cond_d

    .line 4676
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    .line 4677
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->vibrate()V

    .line 4683
    :cond_c
    :goto_5
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mKeypadGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v2, v3

    .line 4685
    goto/16 :goto_1

    .line 4679
    :cond_d
    if-eq v0, v2, :cond_e

    if-ne v0, v7, :cond_c

    .line 4680
    :cond_e
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    goto :goto_5

    .line 4688
    :sswitch_8
    if-nez v0, :cond_10

    .line 4689
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    .line 4690
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->vibrate()V

    .line 4696
    :cond_f
    :goto_6
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mKeypadGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v2, v3

    .line 4698
    goto/16 :goto_1

    .line 4692
    :cond_10
    if-eq v0, v2, :cond_11

    if-ne v0, v7, :cond_f

    .line 4693
    :cond_11
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    goto :goto_6

    .line 4701
    :sswitch_9
    if-nez v0, :cond_13

    .line 4702
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    .line 4703
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->vibrate()V

    .line 4709
    :cond_12
    :goto_7
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mKeypadGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v2, v3

    .line 4711
    goto/16 :goto_1

    .line 4705
    :cond_13
    if-eq v0, v2, :cond_14

    if-ne v0, v7, :cond_12

    .line 4706
    :cond_14
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    goto :goto_7

    .line 4714
    :sswitch_a
    if-nez v0, :cond_16

    .line 4715
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    .line 4716
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->vibrate()V

    .line 4722
    :cond_15
    :goto_8
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mKeypadGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v2, v3

    .line 4724
    goto/16 :goto_1

    .line 4718
    :cond_16
    if-eq v0, v2, :cond_17

    if-ne v0, v7, :cond_15

    .line 4719
    :cond_17
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    goto :goto_8

    .line 4727
    :sswitch_b
    if-nez v0, :cond_19

    .line 4728
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    .line 4729
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->vibrate()V

    .line 4735
    :cond_18
    :goto_9
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mKeypadGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v2, v3

    .line 4737
    goto/16 :goto_1

    .line 4731
    :cond_19
    if-eq v0, v2, :cond_1a

    if-ne v0, v7, :cond_18

    .line 4732
    :cond_1a
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    goto :goto_9

    .line 4740
    :sswitch_c
    if-nez v0, :cond_1c

    .line 4741
    const/16 v2, 0x9

    invoke-direct {p0, v2}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    .line 4742
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->vibrate()V

    .line 4748
    :cond_1b
    :goto_a
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mKeypadGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v2, v3

    .line 4750
    goto/16 :goto_1

    .line 4744
    :cond_1c
    if-eq v0, v2, :cond_1d

    if-ne v0, v7, :cond_1b

    .line 4745
    :cond_1d
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    goto :goto_a

    .line 4753
    :sswitch_d
    if-nez v0, :cond_1f

    .line 4754
    invoke-direct {p0, v3}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    .line 4755
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->vibrate()V

    :cond_1e
    :goto_b
    move v2, v3

    .line 4762
    goto/16 :goto_1

    .line 4757
    :cond_1f
    if-eq v0, v2, :cond_20

    if-ne v0, v7, :cond_1e

    .line 4758
    :cond_20
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    goto :goto_b

    .line 4766
    :sswitch_e
    const-string v4, "HtcDialer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouch pound, action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4768
    if-nez v0, :cond_22

    .line 4769
    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    .line 4770
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->vibrate()V

    :cond_21
    :goto_c
    move v2, v3

    .line 4782
    goto/16 :goto_1

    .line 4772
    :cond_22
    if-eq v0, v2, :cond_23

    if-ne v0, v7, :cond_21

    .line 4773
    :cond_23
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    goto :goto_c

    .line 4785
    :sswitch_f
    if-nez v0, :cond_25

    .line 4786
    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    .line 4787
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->vibrate()V

    :cond_24
    :goto_d
    move v2, v3

    .line 4794
    goto/16 :goto_1

    .line 4789
    :cond_25
    if-eq v0, v2, :cond_26

    if-ne v0, v7, :cond_24

    .line 4790
    :cond_26
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->stopTone()V

    goto :goto_d

    .line 4798
    :sswitch_10
    if-nez v0, :cond_27

    .line 4800
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->vibrate()V

    :cond_27
    move v2, v3

    .line 4803
    goto/16 :goto_1

    .line 4590
    :sswitch_data_0
    .sparse-switch
        0x1020005 -> :sswitch_0
        0x1020009 -> :sswitch_0
        0x102000a -> :sswitch_2
        0x7f0b0025 -> :sswitch_0
        0x7f0b0041 -> :sswitch_1
    .end sparse-switch

    .line 4631
    :sswitch_data_1
    .sparse-switch
        0x1020005 -> :sswitch_3
        0x1020009 -> :sswitch_3
        0x202001a -> :sswitch_f
        0x202001b -> :sswitch_e
        0x202016a -> :sswitch_10
        0x2020180 -> :sswitch_4
        0x2020181 -> :sswitch_5
        0x2020182 -> :sswitch_6
        0x2020183 -> :sswitch_7
        0x2020184 -> :sswitch_8
        0x2020185 -> :sswitch_9
        0x2020186 -> :sswitch_a
        0x2020187 -> :sswitch_b
        0x2020188 -> :sswitch_c
        0x2020189 -> :sswitch_d
        0x7f0b0025 -> :sswitch_3
    .end sparse-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4574
    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v2}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 4581
    :cond_0
    :goto_0
    return v0

    .line 4577
    :cond_1
    iget v2, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 4578
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->viewCallHistoy()V

    move v0, v1

    .line 4579
    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 720
    return-void
.end method

.method public pauseSocialNetworkSync()V
    .locals 2

    .prologue
    .line 7550
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.content.Intent.ACTION_SOCIAL_PAUSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7551
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->sendBroadcast(Landroid/content/Intent;)V

    .line 7552
    return-void
.end method

.method placeCall()V
    .locals 3

    .prologue
    .line 3627
    const/4 v0, 0x0

    .line 3629
    .local v0, number:Ljava/lang/String;
    iget v1, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    if-nez v1, :cond_4

    .line 3631
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v1}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 3632
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v1}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 3633
    if-eqz v0, :cond_0

    .line 3634
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->placeCall(Ljava/lang/String;)V

    .line 3662
    :cond_0
    :goto_0
    return-void

    .line 3638
    :cond_1
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3639
    const-string v1, "HtcDialer"

    const-string v2, "Invalid State - mDigitsMode=MODE_DEFAULT_HINT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3643
    :cond_2
    sget-boolean v1, Lcom/android/htcdialer/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-eqz v1, :cond_3

    .line 3644
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/htcdialer/Dialer;->placeCall(I)V

    goto :goto_0

    .line 3647
    :cond_3
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->placeLastDial()V

    goto :goto_0

    .line 3652
    :cond_4
    iget v1, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 3653
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    if-eqz v1, :cond_5

    .line 3654
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-virtual {v1}, Lcom/android/htcdialer/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3661
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->placeCall(Ljava/lang/String;)V

    goto :goto_0

    .line 3657
    :cond_6
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/htcdialer/Dialer;->placeCall(I)V

    goto :goto_0
.end method

.method placeCall(Landroid/provider/HtcUnionContact$SimpleContactInfo;)V
    .locals 6
    .parameter "contactInfo"

    .prologue
    const/4 v5, 0x1

    .line 3412
    if-eqz p1, :cond_1

    .line 3413
    iget-object v2, p1, Landroid/provider/HtcUnionContact$SimpleContactInfo;->number:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/provider/HtcUnionContact$SimpleContactInfo;->number:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3415
    :cond_0
    const/16 v2, 0x1a

    invoke-direct {p0, v2}, Lcom/android/htcdialer/Dialer;->playTone(I)V

    .line 3441
    :cond_1
    :goto_0
    return-void

    .line 3420
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    if-ne v2, v5, :cond_3

    .line 3422
    iget-object v2, p1, Landroid/provider/HtcUnionContact$SimpleContactInfo;->number:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/htcdialer/Dialer;->checkMMIcode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3428
    :cond_3
    const-string v2, "tel"

    iget-object v3, p1, Landroid/provider/HtcUnionContact$SimpleContactInfo;->number:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3430
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3431
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v0, p1}, Lcom/htc/util/phone/DialUtils;->copyDialExtra(Landroid/content/Intent;Landroid/provider/HtcUnionContact$SimpleContactInfo;)V

    .line 3434
    const-string v2, "fromDialer"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3438
    invoke-direct {p0, v0}, Lcom/android/htcdialer/Dialer;->callDirectly(Landroid/content/Intent;)V

    .line 3439
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->cancelEditMode()V

    goto :goto_0
.end method

.method placeCall(Ljava/lang/String;)V
    .locals 14
    .parameter "number"

    .prologue
    .line 3446
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3449
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSelectedPhoneNumber()Ljava/lang/String;

    move-result-object p1

    .line 3463
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v10

    if-eqz v10, :cond_3

    iget v10, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 3465
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer;->checkMMIcode(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3583
    :cond_1
    :goto_0
    return-void

    .line 3452
    :cond_2
    const-string v10, "1"

    invoke-virtual {p1, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_0

    .line 3454
    sget-boolean v10, Lcom/android/htcdialer/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v10, :cond_0

    .line 3457
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->callVoicemail()V

    goto :goto_0

    .line 3469
    :cond_3
    if-eqz p1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 3471
    :cond_4
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->placeLastDial()V

    goto :goto_0

    .line 3476
    :cond_5
    const/4 v10, 0x1

    iget v11, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    if-ne v10, v11, :cond_9

    .line 3477
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 3478
    .local v0, adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    if-eqz v0, :cond_9

    const/4 v10, 0x1

    invoke-virtual {v0}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getCount()I

    move-result v11

    if-ne v10, v11, :cond_9

    .line 3479
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htcdialer/search/SearchableObject;

    .line 3480
    .local v6, itemData:Lcom/android/htcdialer/search/SearchableObject;
    if-eqz v6, :cond_9

    .line 3481
    invoke-virtual {v0, v6}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 3482
    invoke-virtual {v0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getMatchedPhoneIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 3483
    .local v5, intentPhone:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContactId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v2

    .line 3484
    .local v2, contactId:J
    const-wide/16 v10, 0x0

    cmp-long v10, v10, v2

    if-gez v10, :cond_9

    if-eqz v5, :cond_9

    .line 3485
    invoke-virtual {v0, v6}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getName(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v9

    .line 3486
    .local v9, sName:Ljava/lang/String;
    const-wide/16 v10, 0x0

    invoke-virtual {v0, v6}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getPhotoId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_8

    const/4 v1, 0x1

    .line 3487
    .local v1, bHasPhoto:Z
    :goto_1
    const-string v10, "personId"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3488
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 3489
    const-string v10, "name"

    invoke-virtual {v5, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3491
    :cond_6
    if-eqz v1, :cond_7

    .line 3492
    const-string v10, "hasPhoto"

    invoke-virtual {v5, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3497
    :cond_7
    invoke-virtual {v0, v6}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getPhoneType(Lcom/android/htcdialer/search/SearchableObject;)I

    move-result v7

    .line 3498
    .local v7, phoneType:I
    const-string v10, "number"

    invoke-virtual {v5, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3499
    const-string v10, "numberType"

    invoke-virtual {v5, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3508
    const-string v10, "fromDialer"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3513
    const-string v10, "home_dialing"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3515
    invoke-direct {p0, v5}, Lcom/android/htcdialer/Dialer;->callDirectly(Landroid/content/Intent;)V

    .line 3516
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->cancelEditMode()V

    goto/16 :goto_0

    .line 3486
    .end local v1           #bHasPhoto:Z
    .end local v7           #phoneType:I
    :cond_8
    const/4 v1, 0x0

    goto :goto_1

    .line 3526
    .end local v0           #adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    .end local v2           #contactId:J
    .end local v5           #intentPhone:Landroid/content/Intent;
    .end local v6           #itemData:Lcom/android/htcdialer/search/SearchableObject;
    .end local v9           #sName:Ljava/lang/String;
    :cond_9
    sget-boolean v10, Lcom/android/htcdialer/Dialer;->IS_TMO_PROJECT:Z

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-virtual {v10}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getPhoneNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 3528
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->contactCardPlaceCall()V

    goto/16 :goto_0

    .line 3534
    :cond_a
    if-eqz p1, :cond_1

    .line 3537
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isHardKeyboardHidden()Z

    move-result v10

    if-nez v10, :cond_b

    .line 3538
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer;->mappedTo12KeyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3542
    :cond_b
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.CALL_PRIVILEGED"

    const-string v11, "tel"

    const/4 v12, 0x0

    invoke-static {v11, p1, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3546
    .local v4, intent:Landroid/content/Intent;
    const/high16 v10, 0x1000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3548
    const/4 v10, 0x2

    iget v11, p0, Lcom/android/htcdialer/Dialer;->mDigitsMode:I

    if-ne v10, v11, :cond_d

    .line 3549
    iget-object v10, p0, Lcom/android/htcdialer/Dialer;->mExtraInfoForSelectedPhoneIntent:Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;

    iget-object v8, v10, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;->sId:Ljava/lang/String;

    .line 3550
    .local v8, sId:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_d

    .line 3551
    const-string v10, "personId"

    invoke-virtual {v4, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3552
    iget-object v10, p0, Lcom/android/htcdialer/Dialer;->mExtraInfoForSelectedPhoneIntent:Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;

    iget-boolean v10, v10, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;->bHasPhoto:Z

    if-eqz v10, :cond_c

    .line 3553
    const-string v10, "hasPhoto"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3555
    :cond_c
    iget-object v10, p0, Lcom/android/htcdialer/Dialer;->mExtraInfoForSelectedPhoneIntent:Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;

    iget-object v10, v10, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;->sName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 3556
    const-string v10, "name"

    iget-object v11, p0, Lcom/android/htcdialer/Dialer;->mExtraInfoForSelectedPhoneIntent:Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;

    iget-object v11, v11, Lcom/android/htcdialer/Dialer$ExtraInfoForSelectedPhoneIntent;->sName:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3564
    .end local v8           #sId:Ljava/lang/String;
    :cond_d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 3566
    const-string v10, "number"

    invoke-virtual {v4, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3572
    :cond_e
    const-string v10, "fromDialer"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3576
    invoke-direct {p0, v4}, Lcom/android/htcdialer/Dialer;->callDirectly(Landroid/content/Intent;)V

    .line 3577
    iget-object v10, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x5

    const-wide/16 v12, 0x3e8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3581
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->cancelEditMode()V

    goto/16 :goto_0
.end method

.method protected requestWindowFeatures()V
    .locals 1

    .prologue
    .line 2129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->requestWindowFeature(I)Z

    .line 2130
    return-void
.end method

.method public resolveIntent()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1605
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->isChild()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1606
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getParent()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1612
    .local v1, intent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1613
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.DIAL"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_0
    move v2, v5

    .line 1616
    .local v2, isEditAction:Z
    :goto_1
    if-eqz v2, :cond_5

    .line 1618
    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->onEditNumberIntent(Landroid/content/Intent;)V

    .line 1629
    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    const-string v5, "ota"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1630
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f090006

    invoke-virtual {p0, v6}, Lcom/android/htcdialer/Dialer;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090007

    invoke-virtual {p0, v6}, Lcom/android/htcdialer/Dialer;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1631
    .local v3, message:Ljava/lang/String;
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v6, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mContext:Landroid/content/Context;

    const v7, 0x7f090008

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090005

    new-instance v6, Lcom/android/htcdialer/Dialer$8;

    invoke-direct {v6, p0}, Lcom/android/htcdialer/Dialer$8;-><init>(Lcom/android/htcdialer/Dialer;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/htcdialer/Dialer$7;

    invoke-direct {v5, p0}, Lcom/android/htcdialer/Dialer$7;-><init>(Lcom/android/htcdialer/Dialer;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/htcdialer/Dialer;->otaDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 1668
    iget-object v4, p0, Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1673
    .end local v3           #message:Ljava/lang/String;
    :cond_2
    return-void

    .line 1608
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #isEditAction:Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .restart local v1       #intent:Landroid/content/Intent;
    goto/16 :goto_0

    .restart local v0       #action:Ljava/lang/String;
    :cond_4
    move v2, v4

    .line 1613
    goto :goto_1

    .line 1619
    .restart local v2       #isEditAction:Z
    :cond_5
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1620
    iget-object v6, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/htcdialer/HtcIpDialActivity;->updateState(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v6

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;

    if-nez v5, :cond_1

    .line 1622
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->queryIpDialCursor()V

    goto/16 :goto_2

    .line 1624
    :cond_6
    const-string v5, "com.htc.util.phone.DialUtils.QWERTY.action_key_event"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1625
    invoke-direct {p0, v1}, Lcom/android/htcdialer/Dialer;->launchHomeDigit(Landroid/content/Intent;)V

    goto/16 :goto_2
.end method

.method public resumeSocialNetworkSync()V
    .locals 2

    .prologue
    .line 7556
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.content.Intent.ACTION_SOCIAL_GO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7557
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->sendBroadcast(Landroid/content/Intent;)V

    .line 7558
    return-void
.end method

.method sendEmail(I)V
    .locals 13
    .parameter "itemPos"

    .prologue
    .line 3959
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 3960
    .local v0, adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htcdialer/search/SearchableObject;

    .line 3961
    .local v3, data:Lcom/android/htcdialer/search/SearchableObject;
    if-eqz v3, :cond_1

    .line 3962
    invoke-virtual {v0, v3}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v2

    .line 3963
    .local v2, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v2, :cond_1

    iget-wide v9, v2, Lcom/android/htcdialer/search/SearchableContact;->id:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_1

    .line 3964
    sget-object v6, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    .line 3965
    .local v6, mailUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-wide v10, v2, Lcom/android/htcdialer/search/SearchableContact;->id:J

    invoke-static {v9, v10, v11}, Lcom/htc/provider/ContactsContract$CommonDataKinds$Email;->getEmailCursorAndLocateAtPrimary(Landroid/content/ContentResolver;J)Landroid/database/Cursor;

    move-result-object v7

    .line 3968
    .local v7, primaryMailCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 3969
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3970
    const/4 v9, 0x2

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3972
    .local v4, email:Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3973
    .local v1, bundle:Landroid/os/Bundle;
    const-string v9, "mailto"

    const/4 v10, 0x0

    invoke-static {v9, v4, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 3976
    .local v8, sendUri:Landroid/net/Uri;
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.SENDTO"

    invoke-direct {v9, v10, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v9, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    .line 3978
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    .line 3981
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->cancelEditMode()V

    .line 3983
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #email:Ljava/lang/String;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v8           #sendUri:Landroid/net/Uri;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3987
    .end local v2           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v6           #mailUri:Landroid/net/Uri;
    .end local v7           #primaryMailCursor:Landroid/database/Cursor;
    :cond_1
    return-void
.end method

.method sendSMS(I)V
    .locals 7
    .parameter "itemPos"

    .prologue
    .line 3939
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 3940
    .local v0, adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/search/SearchableObject;

    .line 3941
    .local v1, data:Lcom/android/htcdialer/search/SearchableObject;
    if-eqz v1, :cond_0

    .line 3942
    invoke-virtual {v0, v1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v2

    .line 3943
    .local v2, number:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 3944
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "smsto"

    const/4 v6, 0x0

    invoke-static {v5, v2, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    .line 3950
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->cancelEditMode()V

    .line 3953
    .end local v2           #number:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setSearchMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v1, 0x2

    .line 7893
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getSearchMode()I

    move-result v0

    .line 7894
    .local v0, oldMode:I
    invoke-super {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList;->setSearchMode(I)V

    .line 7895
    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    if-ne v0, v1, :cond_1

    .line 7897
    :cond_0
    iget-object v1, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/htcdialer/widget/AccumulatorText;->setText(Ljava/lang/CharSequence;)V

    .line 7899
    :cond_1
    return-void
.end method

.method public setupContentView()V
    .locals 13

    .prologue
    .line 1847
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getApplication()Landroid/app/Application;

    move-result-object v9

    check-cast v9, Lcom/android/htcdialer/DialerApp;

    invoke-virtual {v9}, Lcom/android/htcdialer/DialerApp;->getDialerLayout()Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/htcdialer/Dialer;->mContentView:Landroid/view/View;

    .line 1849
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mContentView:Landroid/view/View;

    if-eqz v9, :cond_b

    .line 1857
    :goto_0
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/htcdialer/Dialer;->setContentView(Landroid/view/View;)V

    .line 1859
    sget-boolean v9, Lcom/android/htcdialer/util/BuildUtils;->SENSE_LANDSCAPE:Z

    if-eqz v9, :cond_0

    .line 1860
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mContentView:Landroid/view/View;

    check-cast v9, Landroid/view/ViewGroup;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/View;->setRoundedCornerEnabled(Z)V

    .line 1866
    :cond_0
    iget-object v9, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 1867
    iget-object v9, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcListView;->setRoundedCornerEnabled(ZZ)V

    .line 1868
    iget-object v9, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0016

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0005

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    add-int/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListView;->setBottomBorderHeight(I)V

    .line 1870
    const v9, 0x202016a

    invoke-virtual {p0, v9}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/htcdialer/Dialer;->mBackspace:Landroid/view/View;

    .line 1871
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mBackspace:Landroid/view/View;

    invoke-direct {p0, v9}, Lcom/android/htcdialer/Dialer;->findViewAndSetupListener3(Landroid/view/View;)V

    .line 1872
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mBackspace:Landroid/view/View;

    const/16 v10, 0x32

    invoke-direct {p0, v9, v10}, Lcom/android/htcdialer/Dialer;->enlargeTouchArea(Landroid/view/View;I)V

    .line 1874
    const v9, 0x7f0b0025

    invoke-virtual {p0, v9}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcom/android/htcdialer/Dialer;->mAccumulatorBg:Landroid/view/ViewGroup;

    .line 1875
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mAccumulatorBg:Landroid/view/ViewGroup;

    invoke-virtual {v9, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1876
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mAccumulatorBg:Landroid/view/ViewGroup;

    invoke-virtual {v9, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1878
    const v9, 0x1020005

    invoke-virtual {p0, v9}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    .line 1879
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1880
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1881
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080001

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 1882
    .local v8, visible:I
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1883
    sget-boolean v9, Lcom/android/htcdialer/util/BuildUtils;->SENSE_LANDSCAPE:Z

    if-eqz v9, :cond_1

    .line 1884
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x106000c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1885
    .local v0, color:I
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    check-cast v9, Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1886
    .local v5, tv:Landroid/widget/TextView;
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1887
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1888
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mHintArea:Landroid/view/View;

    check-cast v9, Landroid/view/ViewGroup;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #tv:Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 1889
    .restart local v5       #tv:Landroid/widget/TextView;
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1890
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1902
    .end local v0           #color:I
    .end local v5           #tv:Landroid/widget/TextView;
    :cond_1
    const v9, 0x1020009

    invoke-virtual {p0, v9}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/htcdialer/widget/AccumulatorText;

    iput-object v9, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    .line 1907
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-direct {p0, v9}, Lcom/android/htcdialer/Dialer;->setRequestedInputType(Landroid/widget/EditText;)V

    .line 1918
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    const v10, 0x7f050001

    invoke-virtual {v9, v10}, Lcom/android/htcdialer/widget/AccumulatorText;->setTextSizes(I)V

    .line 1922
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->setupVoiceDialing()V

    .line 1926
    const v9, 0x7f0b0024

    invoke-virtual {p0, v9}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1927
    .local v2, speakButton:Landroid/widget/ImageView;
    const/16 v9, 0x32

    invoke-direct {p0, v2, v9}, Lcom/android/htcdialer/Dialer;->enlargeTouchArea(Landroid/view/View;I)V

    .line 1928
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->isToHideTaskbar()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1929
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1930
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1931
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1932
    new-instance v4, Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;

    invoke-direct {v4}, Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;-><init>()V

    .line 1933
    .local v4, tag:Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;
    const v9, 0x7f0b001c

    iput v9, v4, Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;->id:I

    .line 1934
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1942
    .end local v4           #tag:Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;
    :cond_2
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    if-eqz v9, :cond_3

    .line 1943
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    invoke-direct {p0, v9}, Lcom/android/htcdialer/Dialer;->initDigitsArea(Landroid/widget/TextView;)V

    .line 1949
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;

    new-instance v10, Lcom/android/htcdialer/Dialer$9;

    invoke-direct {v10, p0}, Lcom/android/htcdialer/Dialer$9;-><init>(Lcom/android/htcdialer/Dialer;)V

    invoke-virtual {v9, v10}, Lcom/android/htcdialer/widget/AccumulatorText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1979
    :cond_3
    iget v9, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    if-nez v9, :cond_4

    .line 1980
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    iput v9, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    .line 1982
    :cond_4
    iget v9, p0, Lcom/android/htcdialer/Dialer;->mPhoneType:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_5

    sget-boolean v9, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    if-eqz v9, :cond_6

    .line 1983
    :cond_5
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->initCDMAFeature()V

    .line 1987
    :cond_6
    const v9, 0x7f0b0041

    invoke-virtual {p0, v9}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/htcdialer/widget/DialerKeypad;

    iput-object v9, p0, Lcom/android/htcdialer/Dialer;->mDialerKeypad:Lcom/android/htcdialer/widget/DialerKeypad;

    .line 1988
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mDialerKeypad:Lcom/android/htcdialer/widget/DialerKeypad;

    invoke-virtual {p0, v9}, Lcom/android/htcdialer/Dialer;->setupKeypadListener(Landroid/view/View;)V

    .line 1989
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mDialerKeypad:Lcom/android/htcdialer/widget/DialerKeypad;

    invoke-virtual {v9, p0}, Lcom/android/htcdialer/widget/DialerKeypad;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1992
    const v9, 0x7f0b0040

    invoke-virtual {p0, v9}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcom/android/htcdialer/Dialer;->mDialpad:Landroid/view/ViewGroup;

    .line 1993
    sget-boolean v9, Lcom/android/htcdialer/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v9, :cond_7

    .line 1994
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mDialpad:Landroid/view/ViewGroup;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setRoundedCornerEnabled(Z)V

    .line 1998
    :cond_7
    const v9, 0x7f0b003f

    invoke-virtual {p0, v9}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/htcdialer/Dialer;->mSaveContactView:Landroid/view/View;

    .line 2000
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mSaveContactView:Landroid/view/View;

    if-eqz v9, :cond_8

    .line 2001
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mSaveContactView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2002
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mSaveContactView:Landroid/view/View;

    const v10, 0x2020103

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 2003
    .local v7, view:Landroid/view/View;
    const-string v9, "common_button_small"

    invoke-static {v7, v9}, Lcom/android/htcdialer/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 2004
    const v9, 0x2020104

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2005
    const v9, 0x2020105

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2006
    .local v6, txt:Landroid/widget/TextView;
    const v9, 0x7f09001f

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 2007
    const/4 v9, 0x0

    invoke-static {v9}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2008
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2016
    .end local v6           #txt:Landroid/widget/TextView;
    .end local v7           #view:Landroid/view/View;
    :cond_8
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->setListenersForKeypadControl()V

    .line 2018
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer;->setupOnItemScrollListener()V

    .line 2020
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V

    .line 2022
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcListView;->requestLayout()V

    .line 2024
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

    if-nez v9, :cond_9

    .line 2025
    new-instance v9, Lcom/android/htcdialer/util/KeypadUtils;

    invoke-direct {v9}, Lcom/android/htcdialer/util/KeypadUtils;-><init>()V

    iput-object v9, p0, Lcom/android/htcdialer/Dialer;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

    .line 2028
    :cond_9
    const v9, 0x7f0b003e

    invoke-virtual {p0, v9}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/htcdialer/Dialer;->mKeypadShadow:Landroid/view/View;

    .line 2034
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "show_keypad_stub"

    const-string v11, "id"

    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2035
    .local v1, id:I
    if-eqz v1, :cond_a

    .line 2036
    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    .line 2037
    .local v3, stub:Landroid/view/ViewStub;
    if-eqz v3, :cond_a

    .line 2038
    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/htcdialer/Dialer;->mShowKeypad:Landroid/view/View;

    .line 2039
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mShowKeypad:Landroid/view/View;

    if-eqz v9, :cond_a

    .line 2040
    iget-object v9, p0, Lcom/android/htcdialer/Dialer;->mShowKeypad:Landroid/view/View;

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2047
    .end local v3           #stub:Landroid/view/ViewStub;
    :cond_a
    return-void

    .line 1854
    .end local v1           #id:I
    .end local v2           #speakButton:Landroid/widget/ImageView;
    .end local v8           #visible:I
    :cond_b
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getApplication()Landroid/app/Application;

    move-result-object v9

    check-cast v9, Lcom/android/htcdialer/DialerApp;

    invoke-virtual {v9}, Lcom/android/htcdialer/DialerApp;->inflateDialerLayout()Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/htcdialer/Dialer;->mContentView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public setupKeypadListener(Landroid/view/View;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 2168
    const v0, 0x2020180

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/htcdialer/Dialer;->findViewAndSetupListener3(Landroid/view/View;ILjava/lang/Integer;)V

    .line 2169
    const v0, 0x2020181

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/htcdialer/Dialer;->findViewAndSetupListener3(Landroid/view/View;ILjava/lang/Integer;)V

    .line 2170
    const v0, 0x2020182

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/htcdialer/Dialer;->findViewAndSetupListener3(Landroid/view/View;ILjava/lang/Integer;)V

    .line 2171
    const v0, 0x2020183

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/htcdialer/Dialer;->findViewAndSetupListener3(Landroid/view/View;ILjava/lang/Integer;)V

    .line 2172
    const v0, 0x2020184

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/htcdialer/Dialer;->findViewAndSetupListener3(Landroid/view/View;ILjava/lang/Integer;)V

    .line 2173
    const v0, 0x2020185

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/htcdialer/Dialer;->findViewAndSetupListener3(Landroid/view/View;ILjava/lang/Integer;)V

    .line 2174
    const v0, 0x2020186

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/htcdialer/Dialer;->findViewAndSetupListener3(Landroid/view/View;ILjava/lang/Integer;)V

    .line 2175
    const v0, 0x2020187

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/htcdialer/Dialer;->findViewAndSetupListener3(Landroid/view/View;ILjava/lang/Integer;)V

    .line 2176
    const v0, 0x2020188

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/htcdialer/Dialer;->findViewAndSetupListener3(Landroid/view/View;ILjava/lang/Integer;)V

    .line 2177
    const v0, 0x202001a

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/htcdialer/Dialer;->findViewAndSetupListener3(Landroid/view/View;ILjava/lang/Integer;)V

    .line 2178
    const v0, 0x2020189

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/htcdialer/Dialer;->findViewAndSetupListener3(Landroid/view/View;ILjava/lang/Integer;)V

    .line 2179
    const v0, 0x202001b

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/htcdialer/Dialer;->findViewAndSetupListener3(Landroid/view/View;ILjava/lang/Integer;)V

    .line 2180
    return-void
.end method

.method public superFinishForTestOnly()V
    .locals 0

    .prologue
    .line 8306
    invoke-super {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->finish()V

    .line 8307
    return-void
.end method

.method viewCallHistoy()V
    .locals 5

    .prologue
    .line 3814
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/search/SearchableObject;

    .line 3817
    .local v1, item0:Lcom/android/htcdialer/search/SearchableObject;
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x28

    if-ne v2, v3, :cond_0

    .line 3819
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3820
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.htccontacts"

    const-string v3, "com.android.htccontacts.MultipleActivitiesMain"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3822
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.htccontacts"

    const-string v4, "com.android.htccontacts.ViewCallHistory"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3824
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    .line 3842
    :goto_0
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->cancelEditMode()V

    .line 3843
    return-void

    .line 3825
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    sget v2, Lcom/android/htcdialer/DialerApp;->sIsNaviShowable:I

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isCarTypeUiMode()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget v2, v1, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v2, :cond_1

    .line 3828
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "viewCallHistoy(): sectionIndex of Item[0] is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/htcdialer/Dialer;->log(Ljava/lang/String;)V

    .line 3830
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3831
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "com.android.htcdialer"

    const-string v3, "com.android.htcdialer.carhome.MakecallSelectPeopleActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3832
    const-string v2, "display_mode"

    const-wide/16 v3, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3833
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3835
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3836
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3837
    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3838
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method viewContactCard(I)V
    .locals 1
    .parameter "itemPos"

    .prologue
    .line 3865
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/htcdialer/Dialer;->viewContactCard(ILjava/lang/String;)V

    .line 3866
    return-void
.end method

.method viewContactCard(ILjava/lang/String;)V
    .locals 10
    .parameter "itemPos"
    .parameter "tab"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3869
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .line 3870
    .local v0, adapter:Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htcdialer/search/SearchableObject;

    .line 3871
    .local v2, data:Lcom/android/htcdialer/search/SearchableObject;
    if-eqz v2, :cond_2

    .line 3873
    invoke-virtual {v0, v2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v1

    .line 3874
    .local v1, contact:Lcom/android/htcdialer/search/SearchableContact;
    invoke-virtual {v0, v2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v5

    .line 3875
    .local v5, phoneNumber:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v5, v8}, Lcom/htc/util/contacts/PhoneUtils;->isSpecialType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 3878
    .local v4, isSpecial:Z
    sget-boolean v8, Lcom/android/htcdialer/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v8, :cond_3

    invoke-static {v5}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->isN11Number(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v3, v6

    .line 3880
    .local v3, isN11Number:Z
    :goto_0
    if-nez v4, :cond_0

    if-eqz v3, :cond_4

    .line 3881
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/htcdialer/Dialer;->viewUnknownContactCard(Ljava/lang/String;)V

    .line 3890
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->cancelEditMode()V

    .line 3892
    .end local v1           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v3           #isN11Number:Z
    .end local v4           #isSpecial:Z
    .end local v5           #phoneNumber:Ljava/lang/String;
    :cond_2
    return-void

    .restart local v1       #contact:Lcom/android/htcdialer/search/SearchableContact;
    .restart local v4       #isSpecial:Z
    .restart local v5       #phoneNumber:Ljava/lang/String;
    :cond_3
    move v3, v7

    .line 3878
    goto :goto_0

    .line 3882
    .restart local v3       #isN11Number:Z
    :cond_4
    if-eqz v1, :cond_1

    .line 3883
    iget-boolean v8, v1, Lcom/android/htcdialer/search/SearchableContact;->isSimContact:Z

    if-eqz v8, :cond_5

    .line 3884
    iget-wide v7, v1, Lcom/android/htcdialer/search/SearchableContact;->id:J

    invoke-direct {p0, v7, v8, v6, p2}, Lcom/android/htcdialer/Dialer;->viewContactCard(JZLjava/lang/String;)V

    goto :goto_1

    .line 3886
    :cond_5
    iget-wide v8, v1, Lcom/android/htcdialer/search/SearchableContact;->id:J

    invoke-direct {p0, v8, v9, v7, p2}, Lcom/android/htcdialer/Dialer;->viewContactCard(JZLjava/lang/String;)V

    goto :goto_1
.end method

.method viewContactList()V
    .locals 4

    .prologue
    .line 3847
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x28

    if-ne v2, v3, :cond_0

    .line 3849
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3850
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.htccontacts"

    const-string v3, "com.android.htccontacts.MultipleActivitiesMain"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3852
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    .line 3860
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lcom/android/htcdialer/Dialer;->cancelEditMode()V

    .line 3861
    return-void

    .line 3854
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3855
    .local v1, viewAll:Landroid/content/Intent;
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3856
    invoke-virtual {p0, v1}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
