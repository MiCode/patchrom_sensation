.class public abstract Lcom/android/internal/telephony/BaseCommands;
.super Ljava/lang/Object;
.source "BaseCommands.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RILB"

.field private static final sKernelCmdLine:Ljava/lang/String;

.field private static final sLteOnCdmaProductType:Ljava/lang/String;

.field private static final sProductTypePattern:Ljava/util/regex/Pattern;


# instance fields
.field private htcIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

.field private htcIccCardProxyInUse:Ljava/lang/Boolean;

.field protected m3GIndicatorRegistrants:Landroid/os/RegistrantList;

.field protected mAcdbTableChangeRegistrants:Landroid/os/RegistrantList;

.field protected mAvailRegistrants:Landroid/os/RegistrantList;

.field protected mCBOnSimRegistrant:Landroid/os/Registrant;

.field protected mCBRegistrant:Landroid/os/Registrant;

.field protected mCLINotify:Landroid/os/RegistrantList;

.field protected mCREGstateRegistrant:Landroid/os/Registrant;

.field protected mCTlineControlRegistrants:Landroid/os/RegistrantList;

.field protected mCWUWRegStateRegistrants:Landroid/os/RegistrantList;

.field protected mCallStateRegistrants:Landroid/os/RegistrantList;

.field protected mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

.field protected mCallWaitingInformation:Landroid/os/RegistrantList;

.field protected mCallWaitingToneRegistrants:Landroid/os/RegistrantList;

.field protected mCatCallSetUpRegistrant:Landroid/os/Registrant;

.field protected mCatEventRegistrant:Landroid/os/Registrant;

.field protected mCatProCmdRegistrant:Landroid/os/Registrant;

.field protected mCatSessionEndRegistrant:Landroid/os/Registrant;

.field protected mCdmaCTMccMncChangeRegistrants:Landroid/os/RegistrantList;

.field protected mCdmaCTModeChangeRegistrants:Landroid/os/RegistrantList;

.field protected mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

.field protected mCdmaSmsRegistrant:Landroid/os/Registrant;

.field protected mCdmaSubscription:I

.field protected mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

.field protected mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

.field protected mCnapNotify:Landroid/os/RegistrantList;

.field protected mConnectedLineInformation:Landroid/os/RegistrantList;

.field protected mContext:Landroid/content/Context;

.field protected mDataConnectionRegistrants:Landroid/os/RegistrantList;

.field protected mDataNetworkStateRegistrants:Landroid/os/RegistrantList;

.field protected mDialToneNotify:Landroid/os/RegistrantList;

.field protected mDisplayInfoRegistrants:Landroid/os/RegistrantList;

.field protected mE911CallRegistrants:Landroid/os/RegistrantList;

.field protected mECallUSSDRegistrants:Landroid/os/RegistrantList;

.field protected mERIRegistrants:Landroid/os/RegistrantList;

.field protected mEhrpdDomainNameChangeRegistrants:Landroid/os/RegistrantList;

.field protected mEhrpdEmergencyCallBackModeChangeRegistrants:Landroid/os/RegistrantList;

.field protected mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

.field protected mEnterLowPowerModeRegistrants:Landroid/os/RegistrantList;

.field protected mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

.field protected mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

.field protected mGsmSmsRegistrant:Landroid/os/Registrant;

.field protected mHTCCallFailNoticeRegistrant:Landroid/os/Registrant;

.field protected mHTCECCStatusRegistrants:Landroid/os/RegistrantList;

.field protected mHTCRejectedMTCallRegistrant:Landroid/os/Registrant;

.field protected mHomezoneDCHNotify:Landroid/os/RegistrantList;

.field protected mISIMLockedRegistrants:Landroid/os/RegistrantList;

.field protected mISIMReadyRegistrants:Landroid/os/RegistrantList;

.field protected mIccAppRefreshRegistrant:Landroid/os/Registrant;

.field protected mIccRefreshRegistrants:Landroid/os/RegistrantList;

.field protected mIccSmsFullRegistrant:Landroid/os/Registrant;

.field protected mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

.field protected mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

.field protected mLBSRegistrants:Landroid/os/RegistrantList;

.field protected mLineControlInfoRegistrants:Landroid/os/RegistrantList;

.field protected mLoopbackModeRegistrants:Landroid/os/RegistrantList;

.field protected mMIPFailRegistrants:Landroid/os/RegistrantList;

.field protected mMMLUFailNotify:Landroid/os/RegistrantList;

.field protected mManualStateRegistrants:Landroid/os/RegistrantList;

.field protected mModemLinkStatusRegistrants:Landroid/os/RegistrantList;

.field protected mMsgWaitIndicatorRegistrants:Landroid/os/RegistrantList;

.field protected mNBPCDRegistrants:Landroid/os/RegistrantList;

.field protected mNITZTimeRegistrant:Landroid/os/Registrant;

.field protected mNVReadyRegistrants:Landroid/os/RegistrantList;

.field protected mNetworkBusyRegistrants:Landroid/os/RegistrantList;

.field protected mNetworkModeChangeRegistrants:Landroid/os/RegistrantList;

.field protected mNetworkStateRegistrants:Landroid/os/RegistrantList;

.field protected mNotAvailRegistrants:Landroid/os/RegistrantList;

.field protected mNumberInfoRegistrants:Landroid/os/RegistrantList;

.field protected mNvState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field protected mOMATriggerRegistrants:Landroid/os/RegistrantList;

.field protected mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

.field protected mOnRegistrants:Landroid/os/RegistrantList;

.field protected mOtaProvisionRegistrants:Landroid/os/RegistrantList;

.field protected mPBReadyNotify:Landroid/os/RegistrantList;

.field protected mPDSSRegistrants:Landroid/os/RegistrantList;

.field protected mPUKLockNotify:Landroid/os/RegistrantList;

.field protected mPcscfNotify:Landroid/os/RegistrantList;

.field protected mPhoneModeChangeRegistrants:Landroid/os/RegistrantList;

.field protected mPhoneType:I

.field protected mPreferredNetworkType:I

.field protected mRUIMLockedRegistrants:Landroid/os/RegistrantList;

.field protected mRUIMReadyRegistrants:Landroid/os/RegistrantList;

.field protected mRadioStateChangedExtRegistrants:Landroid/os/RegistrantList;

.field protected mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

.field protected mRadioTechnologyChangedRegistrants:Landroid/os/RegistrantList;

.field protected mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

.field protected mRedirNumRegistrants:Landroid/os/RegistrantList;

.field protected mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

.field protected mRestrictedStateRegistrant:Landroid/os/Registrant;

.field protected mRilConnectedRegistrants:Landroid/os/RegistrantList;

.field protected mRilVersion:I

.field protected mRingRegistrant:Landroid/os/Registrant;

.field protected mRingbackToneRegistrants:Landroid/os/RegistrantList;

.field protected mRssiReportRegistrants:Landroid/os/RegistrantList;

.field protected mRuimState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field protected mSIMExpiredStatusRegistrants:Landroid/os/RegistrantList;

.field protected mSIMHotSwapRegistrants:Landroid/os/RegistrantList;

.field protected mSIMLockedRegistrants:Landroid/os/RegistrantList;

.field protected mSIMReadyRegistrants:Landroid/os/RegistrantList;

.field protected mSIMSWAPRegistrants:Landroid/os/RegistrantList;

.field protected mSMSFullNotify:Landroid/os/RegistrantList;

.field protected mServiceDomainChangeRegistrants:Landroid/os/RegistrantList;

.field protected mSignalFadeRegistrants:Landroid/os/RegistrantList;

.field protected mSignalInfoRegistrants:Landroid/os/RegistrantList;

.field protected mSignalStrengthRegistrant:Landroid/os/Registrant;

.field protected mSimState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public mSimulatedVT:Z

.field protected mSmartDataRoamingStatusRegistrants:Landroid/os/RegistrantList;

.field protected mSmartNetworkRegistrants:Landroid/os/RegistrantList;

.field protected mSmsOnSimRegistrant:Landroid/os/Registrant;

.field protected mSmsStatusRegistrant:Landroid/os/Registrant;

.field protected mSsnRegistrant:Landroid/os/Registrant;

.field protected mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field protected mStateMonitor:Ljava/lang/Object;

.field protected mSystemInfoRegistrants:Landroid/os/RegistrantList;

.field protected mT3gPsdbgRegistrant:Landroid/os/Registrant;

.field protected mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

.field protected mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

.field protected mTPMRRegistrants:Landroid/os/RegistrantList;

.field protected mToneSignalsRegistrants:Landroid/os/RegistrantList;

.field protected mUSSDRegistrant:Landroid/os/Registrant;

.field protected mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

.field protected mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

.field protected mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

.field protected mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

.field protected mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1583
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getProcCmdLine()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/BaseCommands;->sKernelCmdLine:Ljava/lang/String;

    .line 1586
    const-string v0, "\\sproduct_type\\s*=\\s*(\\w+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/BaseCommands;->sProductTypePattern:Ljava/util/regex/Pattern;

    .line 1590
    const-string/jumbo v0, "telephony.lteOnCdmaProductType"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/BaseCommands;->sLteOnCdmaProductType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 207
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 45
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSimState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 46
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRuimState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 47
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNvState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    .line 50
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 51
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    .line 52
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mAvailRegistrants:Landroid/os/RegistrantList;

    .line 53
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    .line 54
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    .line 55
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSIMReadyRegistrants:Landroid/os/RegistrantList;

    .line 56
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSIMLockedRegistrants:Landroid/os/RegistrantList;

    .line 57
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRUIMReadyRegistrants:Landroid/os/RegistrantList;

    .line 58
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRUIMLockedRegistrants:Landroid/os/RegistrantList;

    .line 59
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNVReadyRegistrants:Landroid/os/RegistrantList;

    .line 60
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    .line 61
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    .line 62
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDataNetworkStateRegistrants:Landroid/os/RegistrantList;

    .line 63
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioTechnologyChangedRegistrants:Landroid/os/RegistrantList;

    .line 64
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    .line 65
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    .line 66
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    .line 68
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    .line 69
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    .line 70
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    .line 71
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    .line 72
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    .line 73
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    .line 74
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    .line 75
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    .line 76
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    .line 77
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    .line 78
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    .line 79
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    .line 80
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    .line 81
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    .line 82
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    .line 83
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    .line 87
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkStateRegistrants:Landroid/os/RegistrantList;

    .line 92
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mISIMReadyRegistrants:Landroid/os/RegistrantList;

    .line 93
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mISIMLockedRegistrants:Landroid/os/RegistrantList;

    .line 96
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    .line 97
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

    .line 99
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 101
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDataConnectionRegistrants:Landroid/os/RegistrantList;

    .line 105
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioStateChangedExtRegistrants:Landroid/os/RegistrantList;

    .line 108
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCLINotify:Landroid/os/RegistrantList;

    .line 109
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDialToneNotify:Landroid/os/RegistrantList;

    .line 110
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSMSFullNotify:Landroid/os/RegistrantList;

    .line 111
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallWaitingInformation:Landroid/os/RegistrantList;

    .line 112
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mConnectedLineInformation:Landroid/os/RegistrantList;

    .line 113
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPUKLockNotify:Landroid/os/RegistrantList;

    .line 114
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mMMLUFailNotify:Landroid/os/RegistrantList;

    .line 115
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPcscfNotify:Landroid/os/RegistrantList;

    .line 116
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCnapNotify:Landroid/os/RegistrantList;

    .line 117
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mHomezoneDCHNotify:Landroid/os/RegistrantList;

    .line 118
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mModemLinkStatusRegistrants:Landroid/os/RegistrantList;

    .line 119
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmartDataRoamingStatusRegistrants:Landroid/os/RegistrantList;

    .line 120
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSIMExpiredStatusRegistrants:Landroid/os/RegistrantList;

    .line 121
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPBReadyNotify:Landroid/os/RegistrantList;

    .line 122
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEnterLowPowerModeRegistrants:Landroid/os/RegistrantList;

    .line 123
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mTPMRRegistrants:Landroid/os/RegistrantList;

    .line 124
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSIMSWAPRegistrants:Landroid/os/RegistrantList;

    .line 125
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallWaitingToneRegistrants:Landroid/os/RegistrantList;

    .line 126
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCTlineControlRegistrants:Landroid/os/RegistrantList;

    .line 127
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mAcdbTableChangeRegistrants:Landroid/os/RegistrantList;

    .line 128
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSIMHotSwapRegistrants:Landroid/os/RegistrantList;

    .line 129
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mECallUSSDRegistrants:Landroid/os/RegistrantList;

    .line 130
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mManualStateRegistrants:Landroid/os/RegistrantList;

    .line 131
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRssiReportRegistrants:Landroid/os/RegistrantList;

    .line 132
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmartNetworkRegistrants:Landroid/os/RegistrantList;

    .line 136
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mE911CallRegistrants:Landroid/os/RegistrantList;

    .line 137
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLoopbackModeRegistrants:Landroid/os/RegistrantList;

    .line 138
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkBusyRegistrants:Landroid/os/RegistrantList;

    .line 139
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSystemInfoRegistrants:Landroid/os/RegistrantList;

    .line 140
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->m3GIndicatorRegistrants:Landroid/os/RegistrantList;

    .line 141
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mMsgWaitIndicatorRegistrants:Landroid/os/RegistrantList;

    .line 142
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mERIRegistrants:Landroid/os/RegistrantList;

    .line 143
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPDSSRegistrants:Landroid/os/RegistrantList;

    .line 144
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mOMATriggerRegistrants:Landroid/os/RegistrantList;

    .line 145
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mMIPFailRegistrants:Landroid/os/RegistrantList;

    .line 146
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalFadeRegistrants:Landroid/os/RegistrantList;

    .line 147
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mToneSignalsRegistrants:Landroid/os/RegistrantList;

    .line 148
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRedirNumRegistrants:Landroid/os/RegistrantList;

    .line 149
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNBPCDRegistrants:Landroid/os/RegistrantList;

    .line 150
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLBSRegistrants:Landroid/os/RegistrantList;

    .line 151
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCWUWRegStateRegistrants:Landroid/os/RegistrantList;

    .line 152
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mServiceDomainChangeRegistrants:Landroid/os/RegistrantList;

    .line 153
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaCTModeChangeRegistrants:Landroid/os/RegistrantList;

    .line 154
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaCTMccMncChangeRegistrants:Landroid/os/RegistrantList;

    .line 158
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPhoneModeChangeRegistrants:Landroid/os/RegistrantList;

    .line 159
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkModeChangeRegistrants:Landroid/os/RegistrantList;

    .line 160
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEhrpdDomainNameChangeRegistrants:Landroid/os/RegistrantList;

    .line 161
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEhrpdEmergencyCallBackModeChangeRegistrants:Landroid/os/RegistrantList;

    .line 165
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mHTCECCStatusRegistrants:Landroid/os/RegistrantList;

    .line 202
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilVersion:I

    .line 208
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mContext:Landroid/content/Context;

    .line 209
    return-void
.end method

.method public static getLteOnCdmaModeStatic()I
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 1604
    const-string v2, ""

    .line 1606
    .local v2, productType:Ljava/lang/String;
    const-string/jumbo v4, "telephony.lteOnCdmaDevice"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1608
    .local v0, curVal:I
    move v3, v0

    .line 1609
    .local v3, retVal:I
    if-ne v3, v5, :cond_0

    .line 1610
    sget-object v4, Lcom/android/internal/telephony/BaseCommands;->sProductTypePattern:Ljava/util/regex/Pattern;

    sget-object v5, Lcom/android/internal/telephony/BaseCommands;->sKernelCmdLine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1611
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1612
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 1613
    sget-object v4, Lcom/android/internal/telephony/BaseCommands;->sLteOnCdmaProductType:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1614
    const/4 v3, 0x1

    .line 1623
    .end local v1           #matcher:Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    const-string v4, "RILB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLteOnCdmaMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " curVal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " product_type=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' lteOnCdmaProductType=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/BaseCommands;->sLteOnCdmaProductType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    return v3

    .line 1616
    .restart local v1       #matcher:Ljava/util/regex/Matcher;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1619
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getProcCmdLine()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1548
    const-string v1, ""

    .line 1549
    .local v1, cmdline:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1551
    .local v5, is:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/proc/cmdline"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1552
    .end local v5           #is:Ljava/io/FileInputStream;
    .local v6, is:Ljava/io/FileInputStream;
    const/16 v7, 0x800

    :try_start_1
    new-array v0, v7, [B

    .line 1553
    .local v0, buffer:[B
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 1554
    .local v3, count:I
    if-lez v3, :cond_0

    .line 1555
    new-instance v2, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v2, v0, v7, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .end local v1           #cmdline:Ljava/lang/String;
    .local v2, cmdline:Ljava/lang/String;
    move-object v1, v2

    .line 1560
    .end local v2           #cmdline:Ljava/lang/String;
    .restart local v1       #cmdline:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 1562
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_0
    move-object v5, v6

    .line 1571
    .end local v0           #buffer:[B
    .end local v3           #count:I
    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    return-object v1

    .line 1557
    :catch_0
    move-exception v4

    .line 1558
    .local v4, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v7, "RILB"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No /proc/cmdline exception="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1560
    if-eqz v5, :cond_2

    .line 1562
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1563
    :catch_1
    move-exception v7

    goto :goto_1

    .line 1560
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v5, :cond_3

    .line 1562
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1560
    :cond_3
    :goto_4
    throw v7

    .line 1563
    :catch_2
    move-exception v8

    goto :goto_4

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v3       #count:I
    .restart local v6       #is:Ljava/io/FileInputStream;
    :catch_3
    move-exception v7

    goto :goto_0

    .line 1560
    .end local v0           #buffer:[B
    .end local v3           #count:I
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    goto :goto_3

    .line 1557
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v6       #is:Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    move-object v5, v6

    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    goto :goto_2
.end method


# virtual methods
.method public CWUWDeRegistration(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 2794
    return-void
.end method

.method public CWUWRegistration(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 2788
    return-void
.end method

.method public UnSetCREGStatus(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCREGstateRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 1373
    return-void
.end method

.method public UnSetOnMTCallRejected(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mHTCRejectedMTCallRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 1365
    return-void
.end method

.method public acceptCall(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1871
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "success"
    .parameter "ackPdu"
    .parameter "response"

    .prologue
    .line 2019
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 0
    .parameter "success"
    .parameter "cause"
    .parameter "response"

    .prologue
    .line 2015
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 0
    .parameter "success"
    .parameter "cause"
    .parameter "response"

    .prologue
    .line 2009
    return-void
.end method

.method public addPreferredOperatorList(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "operatorNumeric"
    .parameter "act"
    .parameter "response"

    .prologue
    .line 3013
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2147
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "result"

    .prologue
    .line 1757
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 1733
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 1745
    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "aidPtr"
    .parameter "result"

    .prologue
    .line 1751
    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "aidPtr"
    .parameter "result"

    .prologue
    .line 1739
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1847
    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 0
    .parameter "cid"
    .parameter "reason"
    .parameter "result"

    .prologue
    .line 2338
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "response"

    .prologue
    .line 1985
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "response"

    .prologue
    .line 1979
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 1787
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    .line 1793
    return-void
.end method

.method public enableAllDaySleep(ILandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "response"

    .prologue
    .line 2935
    return-void
.end method

.method public enablePS_W2G_Handover(ILandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "response"

    .prologue
    .line 2940
    return-void
.end method

.method public enableRegistrationState_wifi_call(ILandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 2930
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2362
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1883
    return-void
.end method

.method public genericSimIO(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "response"

    .prologue
    .line 2440
    return-void
.end method

.method public getATCSCB(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 3058
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2101
    return-void
.end method

.method public getAvailableNetworksAppendAcT(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2543
    return-void
.end method

.method public getBandCapability(ILandroid/os/Message;)V
    .locals 0
    .parameter "bandGroup"
    .parameter "response"

    .prologue
    .line 2428
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2107
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2277
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2045
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 2356
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2313
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1769
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1781
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1931
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2271
    return-void
.end method

.method public getDeviceMemoryFull(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2404
    return-void
.end method

.method public getDrxInfo(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2945
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2265
    return-void
.end method

.method public getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2972
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2973
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->htcIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/BaseCommands;->usingHtcIccCardProxy(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2974
    const-string v0, "RILB"

    const-string v1, "IccCardProxy not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->htcIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    .line 2979
    :cond_1
    return-object v0
.end method

.method public getHtcSimTypes(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 2920
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1811
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1817
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1799
    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 1805
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 2368
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 3082
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1889
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1901
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1895
    return-void
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    .line 1579
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v0

    return v0
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1913
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2183
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2095
    return-void
.end method

.method public getNvState()Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNvState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    return-object v0
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1937
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1775
    return-void
.end method

.method public getPhoneBookEntries(IILandroid/os/Message;)V
    .locals 0
    .parameter "start"
    .parameter "end"
    .parameter "response"

    .prologue
    .line 2386
    return-void
.end method

.method public getPhoneBookEntriesLength(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2380
    return-void
.end method

.method public getPhoneBookMemory(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2398
    return-void
.end method

.method public getPhoneFunctionality(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2488
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2177
    return-void
.end method

.method public getPreferredOperatorList(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 3019
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1859
    return-void
.end method

.method public getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    return-object v0
.end method

.method public getRuimState()Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRuimState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    return-object v0
.end method

.method public getSIMExpiredStatus(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2549
    return-void
.end method

.method public getSMSC(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2458
    return-void
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1919
    return-void
.end method

.method public getSimState()Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSimState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    return-object v0
.end method

.method public getSimTypes(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 2374
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 2195
    return-void
.end method

.method public getSubscriberNumber(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2494
    return-void
.end method

.method public getSubsidyLock(ILandroid/os/Message;)V
    .locals 0
    .parameter "subsidyType"
    .parameter "response"

    .prologue
    .line 2446
    return-void
.end method

.method public getVTSimulatedMode()Z
    .locals 1

    .prologue
    .line 2993
    iget-boolean v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSimulatedVT:Z

    return v0
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1925
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 0
    .parameter "accept"
    .parameter "response"

    .prologue
    .line 2247
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 0
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    .line 1823
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1835
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1829
    return-void
.end method

.method public iccCloseChannel(ILandroid/os/Message;)V
    .locals 0
    .parameter "channel"
    .parameter "response"

    .prologue
    .line 2628
    return-void
.end method

.method public iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "response"

    .prologue
    .line 2616
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 2033
    return-void
.end method

.method public iccIO(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 2026
    return-void
.end method

.method public iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "AID"
    .parameter "response"

    .prologue
    .line 2622
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 0
    .parameter "data"
    .parameter "response"

    .prologue
    .line 2219
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "strings"
    .parameter "response"

    .prologue
    .line 2225
    return-void
.end method

.method protected onRadioAvailable()V
    .locals 0

    .prologue
    .line 1541
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2165
    return-void
.end method

.method public queryBCSMS(IILandroid/os/Message;)V
    .locals 0
    .parameter "funccode"
    .parameter "index"
    .parameter "response"

    .prologue
    .line 2802
    return-void
.end method

.method public queryCAVE(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2834
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2039
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "response"

    .prologue
    .line 2077
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 0
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 2057
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2295
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 2114
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "appId"
    .parameter "response"

    .prologue
    .line 2121
    return-void
.end method

.method public queryMD5(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2877
    return-void
.end method

.method public querySSDUpdate(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2846
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2325
    return-void
.end method

.method public queryUIMAUTH(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2883
    return-void
.end method

.method public queryVPM(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2864
    return-void
.end method

.method public registerCLINotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 893
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 894
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCLINotify:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 895
    return-void
.end method

.method public registerCallWaitingInformation(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 929
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 931
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCallWaitingInformation:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 932
    return-void
.end method

.method public registerCnapNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 993
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 995
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCnapNotify:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 996
    return-void
.end method

.method public registerConnectedLineInformation(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 946
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 948
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mConnectedLineInformation:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 949
    return-void
.end method

.method public registerDialToneNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 902
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 904
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mDialToneNotify:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 905
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 724
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 725
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 726
    return-void
.end method

.method public registerFor3GIndicator(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1186
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1187
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->m3GIndicatorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1188
    return-void
.end method

.method public registerForAcdbTableChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1093
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1094
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mAcdbTableChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1095
    return-void
.end method

.method public registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 282
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 284
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 285
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 287
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 290
    :cond_0
    monitor-exit v2

    .line 291
    return-void

    .line 290
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForCWUWRegChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1283
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1285
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCWUWRegStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1286
    return-void
.end method

.method public registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 429
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 431
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 432
    return-void
.end method

.method public registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 662
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 663
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 664
    return-void
.end method

.method public registerForCallWaitingTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1075
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1076
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCallWaitingToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1077
    return-void
.end method

.method public registerForCdmaCTMccMncChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1311
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1312
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaCTMccMncChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1313
    return-void
.end method

.method public registerForCdmaCTModeChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1302
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1303
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaCTModeChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1304
    return-void
.end method

.method public registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 688
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 689
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 690
    return-void
.end method

.method public registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 772
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 773
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 774
    return-void
.end method

.method public registerForCdmaSubscriptionChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 761
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 762
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 763
    return-void
.end method

.method public registerForCdmaSubscriptionSourceChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 840
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 841
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 842
    return-void
.end method

.method public registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 460
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 462
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mDataNetworkStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 463
    return-void
.end method

.method public registerForDataStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 255
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 257
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mDataConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 258
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 653
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 654
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 655
    return-void
.end method

.method public registerForE911Status(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1150
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1151
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mE911CallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1152
    return-void
.end method

.method public registerForECallUSSD(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1111
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1112
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mECallUSSDRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1113
    return-void
.end method

.method public registerForERIInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1204
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1205
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mERIRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1206
    return-void
.end method

.method public registerForEhrpdDomainNameChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1340
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1341
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mEhrpdDomainNameChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1342
    return-void
.end method

.method public registerForEhrpdEmergencyCallBackModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1349
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1350
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mEhrpdEmergencyCallBackModeChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1351
    return-void
.end method

.method public registerForEnterLowPowerMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1048
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1049
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mEnterLowPowerModeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1050
    return-void
.end method

.method public registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 783
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 784
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 785
    return-void
.end method

.method public registerForHTCECCStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1386
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1387
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mHTCECCStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1388
    return-void
.end method

.method public registerForISIMReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 851
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 852
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 853
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mISIMReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 854
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isSIMReady()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isRUIMReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 855
    :cond_0
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 857
    :cond_1
    monitor-exit v2

    .line 858
    return-void

    .line 857
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 600
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 601
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 602
    return-void
.end method

.method public registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 479
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 480
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 481
    return-void
.end method

.method public registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 246
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 247
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 248
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 636
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 637
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 638
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 627
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 628
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 629
    return-void
.end method

.method public registerForLBS(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1274
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1275
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mLBSRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1276
    return-void
.end method

.method public registerForLineControl(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1084
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1085
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCTlineControlRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1086
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 715
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 716
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 717
    return-void
.end method

.method public registerForLoopBackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1159
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1160
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mLoopbackModeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1161
    return-void
.end method

.method public registerForMIPFailCause(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1231
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1232
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mMIPFailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1233
    return-void
.end method

.method public registerForManualState(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1120
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1121
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mManualStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1122
    return-void
.end method

.method public registerForModemLinkStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1012
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1013
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mModemLinkStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1014
    return-void
.end method

.method public registerForMsgWaitIndicator(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1195
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1196
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mMsgWaitIndicatorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1197
    return-void
.end method

.method public registerForNBPCDInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1266
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1267
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mNBPCDRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1268
    return-void
.end method

.method public registerForNVReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 375
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 377
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 378
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mNVReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 380
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mNvState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isNVReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 383
    :cond_0
    monitor-exit v2

    .line 384
    return-void

    .line 383
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForNetworkBusy(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1168
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1169
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkBusyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1170
    return-void
.end method

.method public registerForNetworkModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1331
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1332
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkModeChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1333
    return-void
.end method

.method public registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 439
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 441
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 442
    return-void
.end method

.method public registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 300
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 302
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 305
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 306
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 308
    :cond_0
    monitor-exit v2

    .line 309
    return-void

    .line 308
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 697
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 698
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 699
    return-void
.end method

.method public registerForOMADMTrigger(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1222
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1223
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mOMATriggerRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1224
    return-void
.end method

.method public registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 318
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 320
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 323
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 324
    :cond_0
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 326
    :cond_1
    monitor-exit v2

    .line 327
    return-void

    .line 326
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 265
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 267
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 270
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 273
    :cond_0
    monitor-exit v2

    .line 274
    return-void

    .line 273
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForPDSSInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1213
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1214
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mPDSSRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1215
    return-void
.end method

.method public registerForPhoneModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1322
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1323
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mPhoneModeChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1324
    return-void
.end method

.method public registerForRSSI_Report(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1129
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1130
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRssiReportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1131
    return-void
.end method

.method public registerForRUIMLockedOrAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 411
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 413
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 414
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRUIMLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 416
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRuimState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_0

    .line 417
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 419
    :cond_0
    monitor-exit v2

    .line 420
    return-void

    .line 419
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForRUIMReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 356
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 358
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRUIMReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 361
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRuimState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isRUIMReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 364
    :cond_0
    monitor-exit v2

    .line 365
    return-void

    .line 364
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 231
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 233
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 235
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 236
    monitor-exit v2

    .line 237
    return-void

    .line 236
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForRadioStateChangedExt(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 815
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 817
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 818
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioStateChangedExtRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 819
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 820
    monitor-exit v2

    .line 821
    return-void

    .line 820
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForRadioTechnologyChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 470
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 471
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioTechnologyChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 472
    return-void
.end method

.method public registerForRedirNumInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1257
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1258
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRedirNumRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1259
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 706
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 707
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 708
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 751
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 752
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 753
    return-void
.end method

.method public registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 797
    const-string v1, "RILB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerForRilConnected h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 799
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 800
    iget v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRilVersion:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 801
    const-string v1, "RILB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying: ril connected mRilVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/BaseCommands;->mRilVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    new-instance v1, Landroid/os/AsyncResult;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/android/internal/telephony/BaseCommands;->mRilVersion:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v1, v4, v2, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 804
    :cond_0
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 742
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 743
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 744
    return-void
.end method

.method public registerForSIMExpiredStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1030
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1031
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSIMExpiredStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1032
    return-void
.end method

.method public registerForSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1102
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1103
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSIMHotSwapRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1104
    return-void
.end method

.method public registerForSIMLockedOrAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 393
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 395
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 396
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSIMLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 398
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSimState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_0

    .line 399
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 401
    :cond_0
    monitor-exit v2

    .line 402
    return-void

    .line 401
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 337
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 339
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSIMReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 342
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSimState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isSIMReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 345
    :cond_0
    monitor-exit v2

    .line 346
    return-void

    .line 345
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForSIMSWAPStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1066
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1067
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSIMSWAPRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1068
    return-void
.end method

.method public registerForServiceDomainChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1293
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1294
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mServiceDomainChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1295
    return-void
.end method

.method public registerForSignalFade(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1240
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1241
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalFadeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1242
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 671
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 672
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 673
    return-void
.end method

.method public registerForSmartDataRoamingStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1021
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1022
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSmartDataRoamingStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1023
    return-void
.end method

.method public registerForSmartNetworkNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1138
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1139
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSmartNetworkRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1140
    return-void
.end method

.method public registerForSystemInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1177
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1178
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSystemInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1179
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 733
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 734
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 735
    return-void
.end method

.method public registerForTPMR(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1057
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1058
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mTPMRRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1059
    return-void
.end method

.method public registerForToneSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1249
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1250
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mToneSignalsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1251
    return-void
.end method

.method public registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 450
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 452
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 453
    return-void
.end method

.method public registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 831
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 832
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 833
    return-void
.end method

.method public registerHomezoneDCHNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1003
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1004
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mHomezoneDCHNotify:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1005
    return-void
.end method

.method public registerMMLUFailNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 966
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 968
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mMMLUFailNotify:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 969
    return-void
.end method

.method public registerPBReadyNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1039
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1040
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mPBReadyNotify:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1041
    return-void
.end method

.method public registerPUKLockNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 956
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 958
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mPUKLockNotify:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 959
    return-void
.end method

.method public registerPcscfNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 980
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 982
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mPcscfNotify:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 983
    return-void
.end method

.method public registerSMSFullNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 912
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 914
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSMSFullNotify:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 916
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1877
    return-void
.end method

.method public removePreferredOperatorList(ILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "response"

    .prologue
    .line 3007
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 0
    .parameter "available"
    .parameter "result"

    .prologue
    .line 2207
    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 2213
    return-void
.end method

.method public requestCAVE(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "randu"
    .parameter "response"

    .prologue
    .line 2828
    return-void
.end method

.method public requestCheckFDNStatus(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2561
    return-void
.end method

.method public requestEhrpdDomainNameChangeState(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2896
    return-void
.end method

.method public requestEnable3GInd(ILandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "response"

    .prologue
    .line 2749
    return-void
.end method

.method public requestExitPowerSaveMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2663
    return-void
.end method

.method public requestGetAKey(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2729
    return-void
.end method

.method public requestGetAppProfileMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2810
    return-void
.end method

.method public requestGetBCSMSServiceLabel(IILandroid/os/Message;)V
    .locals 0
    .parameter "funccode"
    .parameter "index"
    .parameter "response"

    .prologue
    .line 3094
    return-void
.end method

.method public requestGetBCSMSServiceNumber(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2822
    return-void
.end method

.method public requestGetBSInfo(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2745
    return-void
.end method

.method public requestGetCurrentServiceDomain(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2798
    return-void
.end method

.method public requestGetDDTM(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2715
    return-void
.end method

.method public requestGetEHRPDAPNParams(ILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "result"

    .prologue
    .line 3078
    return-void
.end method

.method public requestGetEhrpdDeviceCapability(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2914
    return-void
.end method

.method public requestGetEhrpdDisableCapability(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2908
    return-void
.end method

.method public requestGetGPSOneMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2679
    return-void
.end method

.method public requestGetHybridMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2707
    return-void
.end method

.method public requestGetLTEAPNParams(ILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "result"

    .prologue
    .line 3070
    return-void
.end method

.method public requestGetMSL(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2671
    return-void
.end method

.method public requestGetNAM(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2699
    return-void
.end method

.method public requestGetNBPCD(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2758
    return-void
.end method

.method public requestGetOMADMTrigger(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2770
    return-void
.end method

.method public requestGetOTKSL(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2675
    return-void
.end method

.method public requestGetPcscfAddresses(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "ifc_name"
    .parameter "response"

    .prologue
    .line 2609
    return-void
.end method

.method public requestGetRadioSysInfo(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2725
    return-void
.end method

.method public requestGetSectorID(ILandroid/os/Message;)V
    .locals 0
    .parameter "status"
    .parameter "response"

    .prologue
    .line 2641
    return-void
.end method

.method public requestGetSmartDataRoamingStatus(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2530
    return-void
.end method

.method public requestGetSystemGPSTime(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2695
    return-void
.end method

.method public requestGetSystemLocalTime(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2691
    return-void
.end method

.method public requestGetVolteSipRegFailure(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2603
    return-void
.end method

.method public requestGetWiMAXMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2762
    return-void
.end method

.method public requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "DmString"
    .parameter "response"

    .prologue
    .line 2659
    return-void
.end method

.method public requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "DmString"
    .parameter "modem_id"
    .parameter "response"

    .prologue
    .line 2776
    return-void
.end method

.method public requestISIMRead(IIIIILandroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "field"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "response"

    .prologue
    .line 2506
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "nonce"
    .parameter "response"

    .prologue
    .line 2579
    return-void
.end method

.method public requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "chapid"
    .parameter "chapchallengelength"
    .parameter "chpachallenge"
    .parameter "result"

    .prologue
    .line 2871
    return-void
.end method

.method public requestOTAProvisionStatus(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2667
    return-void
.end method

.method public requestPhoneClassChangeDone(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2890
    return-void
.end method

.method public requestQueryISIMSupported(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2512
    return-void
.end method

.method public requestQueryQmiUimAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "path"
    .parameter "context"
    .parameter "data"
    .parameter "response"

    .prologue
    .line 2635
    return-void
.end method

.method public requestReleaseAllVoiceCalls(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2518
    return-void
.end method

.method public requestResetWSIMState(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2573
    return-void
.end method

.method public requestSSDUpdate(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "randssd"
    .parameter "response"

    .prologue
    .line 2840
    return-void
.end method

.method public requestSSDUpdateConfirm(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "authbs"
    .parameter "response"

    .prologue
    .line 2852
    return-void
.end method

.method public requestSendECallUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "ussdString"
    .parameter "response"

    .prologue
    .line 2567
    return-void
.end method

.method public requestSetAKey(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aKey"
    .parameter "response"

    .prologue
    .line 2733
    return-void
.end method

.method public requestSetAppProfileMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "appProfileMode"
    .parameter "response"

    .prologue
    .line 2814
    return-void
.end method

.method public requestSetDDTM(ILandroid/os/Message;)V
    .locals 0
    .parameter "selectDDTM"
    .parameter "response"

    .prologue
    .line 2719
    return-void
.end method

.method public requestSetEHRPDAPNParams(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;)V
    .locals 0
    .parameter "apn"
    .parameter "result"

    .prologue
    .line 3074
    return-void
.end method

.method public requestSetEhrpdDisableCapability(ILandroid/os/Message;)V
    .locals 0
    .parameter "ehrpdmode"
    .parameter "response"

    .prologue
    .line 2902
    return-void
.end method

.method public requestSetEmergencyCallCategory(ILandroid/os/Message;)V
    .locals 0
    .parameter "escv"
    .parameter "response"

    .prologue
    .line 2555
    return-void
.end method

.method public requestSetFastDormancy(IILandroid/os/Message;)V
    .locals 0
    .parameter "module"
    .parameter "mode"
    .parameter "response"

    .prologue
    .line 2653
    return-void
.end method

.method public requestSetGPSOneMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "gpsOneMode"
    .parameter "response"

    .prologue
    .line 2683
    return-void
.end method

.method public requestSetHybridMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "hybridMode"
    .parameter "response"

    .prologue
    .line 2711
    return-void
.end method

.method public requestSetISIMAUTH(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "response"

    .prologue
    .line 2500
    return-void
.end method

.method public requestSetLBSNTFY(ILandroid/os/Message;)V
    .locals 0
    .parameter "lbsvalue"
    .parameter "response"

    .prologue
    .line 2782
    return-void
.end method

.method public requestSetLTEAPNParams(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;)V
    .locals 0
    .parameter "apn"
    .parameter "result"

    .prologue
    .line 3066
    return-void
.end method

.method public requestSetMIPProfile(ILandroid/os/Message;)V
    .locals 0
    .parameter "profile"
    .parameter "response"

    .prologue
    .line 2737
    return-void
.end method

.method public requestSetMultiRABTrafficThrottling(IILandroid/os/Message;)V
    .locals 0
    .parameter "module"
    .parameter "mode"
    .parameter "response"

    .prologue
    .line 2647
    return-void
.end method

.method public requestSetNAI(ILandroid/os/Message;)V
    .locals 0
    .parameter "naiMode"
    .parameter "response"

    .prologue
    .line 2741
    return-void
.end method

.method public requestSetNAM(ILandroid/os/Message;)V
    .locals 0
    .parameter "numAssignModule"
    .parameter "response"

    .prologue
    .line 2703
    return-void
.end method

.method public requestSetPscallEnterDormancy(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2687
    return-void
.end method

.method public requestSetPushMailDormantTime(IILandroid/os/Message;)V
    .locals 0
    .parameter "activate"
    .parameter "time"
    .parameter "response"

    .prologue
    .line 2754
    return-void
.end method

.method public requestSetSmartDataRoaming(ILandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "response"

    .prologue
    .line 2524
    return-void
.end method

.method public requestSetTTYMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "response"

    .prologue
    .line 2476
    return-void
.end method

.method public requestSetVoiceRoamingMode(IILandroid/os/Message;)V
    .locals 0
    .parameter "domestic"
    .parameter "international"
    .parameter "response"

    .prologue
    .line 2818
    return-void
.end method

.method public requestSetWiMAXMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "WiMAXMode"
    .parameter "response"

    .prologue
    .line 2766
    return-void
.end method

.method public requestVPM(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2858
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 2153
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "result"

    .prologue
    .line 1961
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "FeatureCode"
    .parameter "response"

    .prologue
    .line 2283
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 0
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1973
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 0
    .parameter "c"
    .parameter "result"

    .prologue
    .line 1943
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 2237
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 2241
    return-void
.end method

.method public sendImsCdmaSms([BLandroid/os/Message;)V
    .locals 0
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 3090
    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 3086
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1967
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;ZZ)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "response"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"

    .prologue
    .line 3062
    return-void
.end method

.method public sendSMSExtend(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 2416
    return-void
.end method

.method public sendSMSExtendMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 2422
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 2231
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "ussdString"
    .parameter "response"

    .prologue
    .line 2141
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 0
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    .line 1865
    return-void
.end method

.method public setAGPSHostName(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "hostName"
    .parameter "response"

    .prologue
    .line 2482
    return-void
.end method

.method public setAGPSServer([IILandroid/os/Message;)V
    .locals 0
    .parameter "ip"
    .parameter "port"
    .parameter "response"

    .prologue
    .line 2470
    return-void
.end method

.method public setATCSCB(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "mode"
    .parameter "mMsgId"
    .parameter "mDcs"
    .parameter "response"

    .prologue
    .line 3054
    return-void
.end method

.method public setBCSMS(IILandroid/os/Message;)V
    .locals 0
    .parameter "funccode"
    .parameter "index"
    .parameter "response"

    .prologue
    .line 2806
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "bandMode"
    .parameter "response"

    .prologue
    .line 2159
    return-void
.end method

.method public setCLIP(ZLandroid/os/Message;)V
    .locals 0
    .parameter "CLIP"
    .parameter "response"

    .prologue
    .line 2434
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 0
    .parameter "clirMode"
    .parameter "response"

    .prologue
    .line 2051
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "action"
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "timeSeconds"
    .parameter "response"

    .prologue
    .line 2070
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 2063
    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .parameter "activate"
    .parameter "result"

    .prologue
    .line 2344
    return-void
.end method

.method public setCdmaBroadcastConfig([ILandroid/os/Message;)V
    .locals 0
    .parameter "configValuesArray"
    .parameter "result"

    .prologue
    .line 2350
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 0
    .parameter "cdmaRoamingType"
    .parameter "response"

    .prologue
    .line 2301
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 0
    .parameter "cdmaSubscriptionType"
    .parameter "response"

    .prologue
    .line 2307
    return-void
.end method

.method public setCelluarPower(ZLandroid/os/Message;)V
    .locals 0
    .parameter "on"
    .parameter "response"

    .prologue
    .line 2585
    return-void
.end method

.method public setCurrentPreferredNetworkType()V
    .locals 0

    .prologue
    .line 1403
    return-void
.end method

.method public setDeviceMemoryFull(ZLandroid/os/Message;)V
    .locals 0
    .parameter "memoryFull"
    .parameter "response"

    .prologue
    .line 2410
    return-void
.end method

.method public setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 608
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    .line 609
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 2128
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "appId"
    .parameter "response"

    .prologue
    .line 2135
    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .parameter "activate"
    .parameter "result"

    .prologue
    .line 2253
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .parameter "config"
    .parameter "response"

    .prologue
    .line 2259
    return-void
.end method

.method public setHtcIccCardProxy(Lcom/android/internal/telephony/IccCardProxy;)V
    .locals 1
    .parameter "iccCardpxy"

    .prologue
    .line 2965
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2966
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->htcIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    .line 2968
    :cond_0
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "response"

    .prologue
    .line 2189
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enableMute"
    .parameter "response"

    .prologue
    .line 1907
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2083
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "operatorNumeric"
    .parameter "response"

    .prologue
    .line 2089
    return-void
.end method

.method public setNetworkSelectionModeManualAppendAcT(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "operatorNumeric"
    .parameter "act"
    .parameter "response"

    .prologue
    .line 2537
    return-void
.end method

.method public setNetworkSelectionModeManualExt(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "operatorNumeric"
    .parameter "act"
    .parameter "response"

    .prologue
    .line 3001
    return-void
.end method

.method public setOnCBOnIcc(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 885
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCBOnSimRegistrant:Landroid/os/Registrant;

    .line 886
    return-void
.end method

.method public setOnCREGStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1368
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCREGstateRegistrant:Landroid/os/Registrant;

    .line 1369
    return-void
.end method

.method public setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 619
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingRegistrant:Landroid/os/Registrant;

    .line 620
    return-void
.end method

.method public setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 584
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    .line 585
    return-void
.end method

.method public setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 576
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatEventRegistrant:Landroid/os/Registrant;

    .line 577
    return-void
.end method

.method public setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 568
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatProCmdRegistrant:Landroid/os/Registrant;

    .line 569
    return-void
.end method

.method public setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 560
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    .line 561
    return-void
.end method

.method public setOnIccAppRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 868
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccAppRefreshRegistrant:Landroid/os/Registrant;

    .line 869
    return-void
.end method

.method public setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 604
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 605
    return-void
.end method

.method public setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 592
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    .line 593
    return-void
.end method

.method public setOnMTCallRejected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1360
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mHTCRejectedMTCallRegistrant:Landroid/os/Registrant;

    .line 1361
    return-void
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 536
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNITZTimeRegistrant:Landroid/os/Registrant;

    .line 537
    return-void
.end method

.method public setOnNewCB(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 877
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCBRegistrant:Landroid/os/Registrant;

    .line 878
    return-void
.end method

.method public setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 496
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    .line 497
    return-void
.end method

.method public setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 504
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    .line 505
    return-void
.end method

.method public setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 488
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmSmsRegistrant:Landroid/os/Registrant;

    .line 489
    return-void
.end method

.method public setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 645
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    .line 646
    return-void
.end method

.method public setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 528
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    .line 529
    return-void
.end method

.method public setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 512
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    .line 513
    return-void
.end method

.method public setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 520
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    .line 521
    return-void
.end method

.method public setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 552
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    .line 553
    return-void
.end method

.method public setOnT3gPsdbg(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1377
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mT3gPsdbgRegistrant:Landroid/os/Registrant;

    .line 1378
    return-void
.end method

.method public setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 544
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    .line 545
    return-void
.end method

.method public setOnUnsolOemHookRaw(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 676
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    .line 677
    return-void
.end method

.method public setPhoneBookEntries(Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V
    .locals 0
    .parameter "entry"
    .parameter "response"

    .prologue
    .line 2392
    return-void
.end method

.method public setPhoneBookMemory(ILandroid/os/Message;)V
    .locals 0
    .parameter "phonebookType"
    .parameter "response"

    .prologue
    .line 3025
    return-void
.end method

.method public setPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 2289
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 0
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 2171
    return-void
.end method

.method public setPreferredNetworkType_wifi_call(ILandroid/os/Message;)V
    .locals 0
    .parameter "networkType"
    .parameter "result"

    .prologue
    .line 2925
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 1853
    return-void
.end method

.method public setRSSI_Logging(Ljava/lang/Boolean;Landroid/os/Message;)V
    .locals 0
    .parameter "isEnabled"
    .parameter "response"

    .prologue
    .line 2597
    return-void
.end method

.method public setRX_Diversity(IILandroid/os/Message;)V
    .locals 0
    .parameter "rxInterface"
    .parameter "enableFlage"
    .parameter "response"

    .prologue
    .line 2591
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 0
    .parameter "on"
    .parameter "response"

    .prologue
    .line 2003
    return-void
.end method

.method protected setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    .locals 6
    .parameter "newState"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1420
    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 1426
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 1427
    .local v0, oldState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 1429
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_0

    .line 1431
    monitor-exit v2

    .line 1538
    :goto_0
    return-void

    .line 1435
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioStateChangedExtRegistrants:Landroid/os/RegistrantList;

    iget-object v3, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1439
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->getType()I

    move-result v1

    if-nez v1, :cond_10

    .line 1440
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSimState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 1441
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRuimState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 1442
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mNvState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 1454
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1456
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1457
    const-string v1, "RILB"

    const-string v3, "Notifying: radio available"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1459
    invoke-virtual {p0}, Lcom/android/internal/telephony/BaseCommands;->onRadioAvailable()V

    .line 1462
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1463
    const-string v1, "RILB"

    const-string v3, "Notifying: radio not available"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1467
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isSIMReady()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isSIMReady()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1468
    const-string v1, "RILB"

    const-string v3, "Notifying: SIM ready"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSIMReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1472
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_5

    .line 1473
    const-string v1, "RILB"

    const-string v3, "Notifying: SIM locked or absent"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSIMLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1477
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isRUIMReady()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isRUIMReady()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1478
    const-string v1, "RILB"

    const-string v3, "Notifying: RUIM ready"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRUIMReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1482
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_7

    .line 1483
    const-string v1, "RILB"

    const-string v3, "Notifying: RUIM locked or absent"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRUIMLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1486
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isNVReady()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isNVReady()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1487
    const-string v1, "RILB"

    const-string v3, "Notifying: NV ready"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mNVReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1491
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1492
    const-string v1, "RILB"

    const-string v3, "Notifying: Radio On"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    iget v1, p0, Lcom/android/internal/telephony/BaseCommands;->mPreferredNetworkType:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/BaseCommands;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1501
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1504
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1507
    const-string v1, "RILB"

    const-string v3, "Notifying: radio off or not available"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1518
    :cond_b
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isCdma()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1519
    const-string v1, "RILB"

    const-string v3, "Notifying: radio technology change CDMA to GSM"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioTechnologyChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1523
    :cond_c
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-nez v1, :cond_d

    iget v1, p0, Lcom/android/internal/telephony/BaseCommands;->mPhoneType:I

    if-ne v1, v5, :cond_d

    .line 1524
    const-string v1, "RILB"

    const-string v3, "Notifying: radio technology change CDMA OFF to GSM"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioTechnologyChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1528
    :cond_d
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isCdma()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1529
    const-string v1, "RILB"

    const-string v3, "Notifying: radio technology change GSM to CDMA"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioTechnologyChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1533
    :cond_e
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isCdma()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-nez v1, :cond_f

    iget v1, p0, Lcom/android/internal/telephony/BaseCommands;->mPhoneType:I

    if-ne v1, v4, :cond_f

    .line 1534
    const-string v1, "RILB"

    const-string v3, "Notifying: radio technology change GSM OFF to CDMA"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioTechnologyChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1537
    :cond_f
    monitor-exit v2

    goto/16 :goto_0

    .end local v0           #oldState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1444
    .restart local v0       #oldState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_10
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->getType()I

    move-result v1

    if-ne v1, v4, :cond_11

    .line 1445
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSimState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    goto/16 :goto_1

    .line 1447
    :cond_11
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->getType()I

    move-result v1

    if-ne v1, v5, :cond_12

    .line 1448
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRuimState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    goto/16 :goto_1

    .line 1450
    :cond_12
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->getType()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 1451
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mNvState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public setSMSC(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "smscAddress"
    .parameter "response"

    .prologue
    .line 2464
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "result"

    .prologue
    .line 2201
    return-void
.end method

.method public setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "subsidyType"
    .parameter "Password"
    .parameter "response"

    .prologue
    .line 2452
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 1679
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "ttyMode"
    .parameter "response"

    .prologue
    .line 2319
    return-void
.end method

.method public setVTSimulatedMode(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2988
    iput-boolean p1, p0, Lcom/android/internal/telephony/BaseCommands;->mSimulatedVT:Z

    .line 2989
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "protocol"
    .parameter "result"

    .prologue
    .line 2332
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 0
    .parameter "c"
    .parameter "result"

    .prologue
    .line 1949
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1955
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 1685
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 1709
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin2"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 1715
    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 1691
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "puk"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 1697
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 1721
    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 1727
    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "puk"
    .parameter "newPin"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 1703
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "netpin"
    .parameter "result"

    .prologue
    .line 1763
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1841
    return-void
.end method

.method public uiccAkaAuthenticate(I[B[BLandroid/os/Message;)V
    .locals 0
    .parameter "sessionId"
    .parameter "rand"
    .parameter "autn"
    .parameter "response"

    .prologue
    .line 1647
    return-void
.end method

.method public uiccApplicationIO(IIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "sessionId"
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 1654
    return-void
.end method

.method public uiccDeactivateApplication(ILandroid/os/Message;)V
    .locals 0
    .parameter "sessionId"
    .parameter "response"

    .prologue
    .line 1641
    return-void
.end method

.method public uiccGbaAuthenticateBootstrap(I[B[BLandroid/os/Message;)V
    .locals 0
    .parameter "sessionId"
    .parameter "rand"
    .parameter "autn"
    .parameter "response"

    .prologue
    .line 1661
    return-void
.end method

.method public uiccGbaAuthenticateNaf(I[BLandroid/os/Message;)V
    .locals 0
    .parameter "sessionId"
    .parameter "nafId"
    .parameter "response"

    .prologue
    .line 1667
    return-void
.end method

.method public uiccSelectApplication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "response"

    .prologue
    .line 1635
    return-void
.end method

.method public uim3gContextAuthenticate(I[B[BLandroid/os/Message;)V
    .locals 0
    .parameter "sessionId"
    .parameter "rand"
    .parameter "autn"
    .parameter "response"

    .prologue
    .line 1673
    return-void
.end method

.method public unSetCBOnIcc(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 889
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCBOnSimRegistrant:Landroid/os/Registrant;

    .line 890
    return-void
.end method

.method public unSetOnCallRing(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 624
    return-void
.end method

.method public unSetOnCatCallSetUp(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 589
    return-void
.end method

.method public unSetOnCatEvent(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatEventRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 581
    return-void
.end method

.method public unSetOnCatProactiveCmd(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatProCmdRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 573
    return-void
.end method

.method public unSetOnCatSessionEnd(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 565
    return-void
.end method

.method public unSetOnIccSmsFull(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 597
    return-void
.end method

.method public unSetOnNITZTime(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNITZTimeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 541
    return-void
.end method

.method public unSetOnNewCB(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 881
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCBRegistrant:Landroid/os/Registrant;

    .line 882
    return-void
.end method

.method public unSetOnNewCdmaSms(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 501
    return-void
.end method

.method public unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 509
    return-void
.end method

.method public unSetOnNewGsmSms(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmSmsRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 493
    return-void
.end method

.method public unSetOnRestrictedStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 650
    return-void
.end method

.method public unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 533
    return-void
.end method

.method public unSetOnSmsOnSim(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 517
    return-void
.end method

.method public unSetOnSmsStatus(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 525
    return-void
.end method

.method public unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 557
    return-void
.end method

.method public unSetOnT3gPsdbg(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mT3gPsdbgRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 1383
    return-void
.end method

.method public unSetOnUSSD(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 549
    return-void
.end method

.method public unSetOnUnsolOemHookRaw(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 681
    return-void
.end method

.method public unregisterCLINotify(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCLINotify:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 899
    return-void
.end method

.method public unregisterCallWaitingInformation(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallWaitingInformation:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 936
    return-void
.end method

.method public unregisterCnapNotify(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 999
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCnapNotify:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1000
    return-void
.end method

.method public unregisterConnectedLineInformation(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 952
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mConnectedLineInformation:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 953
    return-void
.end method

.method public unregisterDialToneNotify(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDialToneNotify:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 909
    return-void
.end method

.method public unregisterFor3GIndicator(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->m3GIndicatorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1192
    return-void
.end method

.method public unregisterForAcdbTableChange(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mAcdbTableChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1099
    return-void
.end method

.method public unregisterForAvailable(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 294
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 296
    monitor-exit v1

    .line 297
    return-void

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForCWUWRegChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCWUWRegStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1290
    return-void
.end method

.method public unregisterForCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 436
    return-void
.end method

.method public unregisterForCallWaitingInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 668
    return-void
.end method

.method public unregisterForCallWaitingTone(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallWaitingToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1081
    return-void
.end method

.method public unregisterForCdmaCTMccMncChange(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaCTMccMncChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1316
    return-void
.end method

.method public unregisterForCdmaCTModeChange(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaCTModeChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1308
    return-void
.end method

.method public unregisterForCdmaOtaProvision(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 694
    return-void
.end method

.method public unregisterForCdmaPrlChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 779
    return-void
.end method

.method public unregisterForCdmaSubscriptionChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 768
    return-void
.end method

.method public unregisterForCdmaSubscriptionSourceChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 845
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 846
    return-void
.end method

.method public unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDataNetworkStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 467
    return-void
.end method

.method public unregisterForDataStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDataConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 262
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 659
    return-void
.end method

.method public unregisterForE911Status(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mE911CallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1156
    return-void
.end method

.method public unregisterForECallUSSD(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mECallUSSDRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1117
    return-void
.end method

.method public unregisterForERIInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mERIRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1210
    return-void
.end method

.method public unregisterForEhrpdDomainNameChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEhrpdDomainNameChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1346
    return-void
.end method

.method public unregisterForEhrpdEmergencyCallBackModeChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEhrpdEmergencyCallBackModeChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1355
    return-void
.end method

.method public unregisterForEnterLowPowerMode(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEnterLowPowerModeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1054
    return-void
.end method

.method public unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 790
    return-void
.end method

.method public unregisterForForLineControl(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCTlineControlRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1090
    return-void
.end method

.method public unregisterForHTCECCStatus(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mHTCECCStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1392
    return-void
.end method

.method public unregisterForISIMReady(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 861
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 862
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mISIMReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 863
    monitor-exit v1

    .line 864
    return-void

    .line 863
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForIccRefresh(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 613
    return-void
.end method

.method public unregisterForIccStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 485
    return-void
.end method

.method public unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 252
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 642
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 633
    return-void
.end method

.method public unregisterForLBS(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLBSRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1280
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 721
    return-void
.end method

.method public unregisterForLoopBackMode(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLoopbackModeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1165
    return-void
.end method

.method public unregisterForMIPFailCause(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mMIPFailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1237
    return-void
.end method

.method public unregisterForManualState(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mManualStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1126
    return-void
.end method

.method public unregisterForModemLinkStatus(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mModemLinkStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1018
    return-void
.end method

.method public unregisterForMsgWaitIndicator(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mMsgWaitIndicatorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1201
    return-void
.end method

.method public unregisterForNBPCDInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNBPCDRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1271
    return-void
.end method

.method public unregisterForNVReady(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 387
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNVReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 389
    monitor-exit v1

    .line 390
    return-void

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForNetworkBusy(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkBusyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1174
    return-void
.end method

.method public unregisterForNetworkModeChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkModeChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1337
    return-void
.end method

.method public unregisterForNetworkStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 446
    return-void
.end method

.method public unregisterForNotAvailable(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 312
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 314
    monitor-exit v1

    .line 315
    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 703
    return-void
.end method

.method public unregisterForOMADMTrigger(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mOMATriggerRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1228
    return-void
.end method

.method public unregisterForOffOrNotAvailable(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 329
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 331
    monitor-exit v1

    .line 332
    return-void

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForOn(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 276
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 278
    monitor-exit v1

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForPDSSInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPDSSRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1219
    return-void
.end method

.method public unregisterForPhoneModeChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPhoneModeChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1328
    return-void
.end method

.method public unregisterForRSSI_Report(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRssiReportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1135
    return-void
.end method

.method public unregisterForRUIMLockedOrAbsent(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 423
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 424
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRUIMLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 425
    monitor-exit v1

    .line 426
    return-void

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForRUIMReady(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 368
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRUIMReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 370
    monitor-exit v1

    .line 371
    return-void

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForRadioStateChanged(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 240
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 242
    monitor-exit v1

    .line 243
    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForRadioStateChangedExt(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 824
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 825
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioStateChangedExtRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 826
    monitor-exit v1

    .line 827
    return-void

    .line 826
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForRadioTechnologyChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioTechnologyChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 476
    return-void
.end method

.method public unregisterForRedirNumInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRedirNumRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1263
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 712
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 757
    return-void
.end method

.method public unregisterForRilConnected(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 809
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 748
    return-void
.end method

.method public unregisterForSIMExpiredStatus(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSIMExpiredStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1036
    return-void
.end method

.method public unregisterForSIMHotSwap(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSIMHotSwapRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1108
    return-void
.end method

.method public unregisterForSIMLockedOrAbsent(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 405
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSIMLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 407
    monitor-exit v1

    .line 408
    return-void

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForSIMReady(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 349
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSIMReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 351
    monitor-exit v1

    .line 352
    return-void

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForSIMSWAPStatus(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSIMSWAPRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1072
    return-void
.end method

.method public unregisterForServiceDomainChange(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mServiceDomainChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1299
    return-void
.end method

.method public unregisterForSignalFade(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalFadeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1246
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 685
    return-void
.end method

.method public unregisterForSmartDataRoamingStatus(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmartDataRoamingStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1027
    return-void
.end method

.method public unregisterForSmartNetworkNotify(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmartNetworkRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1144
    return-void
.end method

.method public unregisterForSystemInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSystemInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1183
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 739
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 730
    return-void
.end method

.method public unregisterForTPMR(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mTPMRRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1063
    return-void
.end method

.method public unregisterForToneSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mToneSignalsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1254
    return-void
.end method

.method public unregisterForVoiceNetworkStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 457
    return-void
.end method

.method public unregisterForVoiceRadioTechChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 837
    return-void
.end method

.method public unregisterHomezoneDCHNotify(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mHomezoneDCHNotify:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1009
    return-void
.end method

.method public unregisterMMLUFailNotify(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mMMLUFailNotify:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 973
    return-void
.end method

.method public unregisterPBReadyNotify(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPBReadyNotify:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1045
    return-void
.end method

.method public unregisterPUKLockNotify(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 962
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPUKLockNotify:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 963
    return-void
.end method

.method public unregisterPcscfNotify(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPcscfNotify:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 987
    return-void
.end method

.method public unregisterSMSFullNotify(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSMSFullNotify:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 919
    return-void
.end method

.method public unsetOnIccAppRefresh(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccAppRefreshRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 873
    return-void
.end method

.method public unsetOnIccRefresh(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 615
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/BaseCommands;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 616
    return-void
.end method

.method public usingHtcIccCardProxy(Ljava/lang/Boolean;)Z
    .locals 3
    .parameter "isUsing"

    .prologue
    const/4 v0, 0x0

    .line 2953
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2954
    if-eqz p1, :cond_0

    .line 2955
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->htcIccCardProxyInUse:Ljava/lang/Boolean;

    .line 2957
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->htcIccCardProxyInUse:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 2959
    :cond_1
    return v0
.end method

.method public vtAnswer(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 3049
    return-void
.end method

.method public vtCHUP(ILandroid/os/Message;)V
    .locals 0
    .parameter "cause"
    .parameter "result"

    .prologue
    .line 3037
    return-void
.end method

.method public vtDial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 3031
    return-void
.end method

.method public vtHangup(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 3043
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "status"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1997
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "status"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1991
    return-void
.end method
