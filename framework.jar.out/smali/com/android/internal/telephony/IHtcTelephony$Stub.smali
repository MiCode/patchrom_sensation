.class public abstract Lcom/android/internal/telephony/IHtcTelephony$Stub;
.super Landroid/os/Binder;
.source "IHtcTelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/IHtcTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IHtcTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IHtcTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IHtcTelephony"

.field static final TRANSACTION_akaAuthentication:I = 0x26

.field static final TRANSACTION_calculateAkaResponse:I = 0x22

.field static final TRANSACTION_calculateGbaBootstrappingResponse:I = 0x23

.field static final TRANSACTION_calculateNafExternalKey:I = 0x24

.field static final TRANSACTION_checkTestIcc:I = 0x57

.field static final TRANSACTION_closeIccLogicalChannel:I = 0x13

.field static final TRANSACTION_confirmFirstDataRoaming:I = 0x39

.field static final TRANSACTION_dialWithoutDelay:I = 0x3d

.field static final TRANSACTION_disableLocationUpdatesExt:I = 0x87

.field static final TRANSACTION_enableLocationUpdatesExt:I = 0x86

.field static final TRANSACTION_enableMpdp:I = 0x6c

.field static final TRANSACTION_enableRegistrationState_wifi_call:I = 0x82

.field static final TRANSACTION_getActiveCallConnectTime:I = 0x47

.field static final TRANSACTION_getActiveCallNumber:I = 0x45

.field static final TRANSACTION_getActivePDPList:I = 0x6d

.field static final TRANSACTION_getActivePhoneType:I = 0x8f

.field static final TRANSACTION_getBackgroundCallNumber:I = 0x46

.field static final TRANSACTION_getCFUNumber:I = 0x4b

.field static final TRANSACTION_getCFUNumberFromOperator:I = 0x4e

.field static final TRANSACTION_getCallStateExt:I = 0x8c

.field static final TRANSACTION_getCardCheckedState:I = 0x92

.field static final TRANSACTION_getCdmaMin:I = 0x34

.field static final TRANSACTION_getCellLocationExt:I = 0x85

.field static final TRANSACTION_getCurrentCallState:I = 0x59

.field static final TRANSACTION_getDataActivityExt:I = 0x8d

.field static final TRANSACTION_getDataStateExt:I = 0x8e

.field static final TRANSACTION_getDetailIccStatus:I = 0x38

.field static final TRANSACTION_getEsn:I = 0x33

.field static final TRANSACTION_getGlobalDataRoamingOption:I = 0x28

.field static final TRANSACTION_getGprsState:I = 0x3a

.field static final TRANSACTION_getGsmNetworkType:I = 0x56

.field static final TRANSACTION_getHtcDeviceId:I = 0x2b

.field static final TRANSACTION_getHtcDeviceSvn:I = 0x2c

.field static final TRANSACTION_getHtcIccSerialNumber:I = 0x2e

.field static final TRANSACTION_getHtcLine1AlphaTag:I = 0x30

.field static final TRANSACTION_getHtcLine1Number:I = 0x2f

.field static final TRANSACTION_getHtcNetworkType:I = 0x62

.field static final TRANSACTION_getHtcServiceStateExt:I = 0x91

.field static final TRANSACTION_getHtcSubscriberId:I = 0x2d

.field static final TRANSACTION_getHtcVoiceMailAlphaTag:I = 0x32

.field static final TRANSACTION_getHtcVoiceMailNumber:I = 0x31

.field static final TRANSACTION_getIncallRecordingFileName:I = 0x4f

.field static final TRANSACTION_getLastError:I = 0x14

.field static final TRANSACTION_getNeighboringCellInfoExt:I = 0x88

.field static final TRANSACTION_getNetworkTypeExt:I = 0x89

.field static final TRANSACTION_getPdnSettings:I = 0x5a

.field static final TRANSACTION_getPdnSettings2:I = 0x5d

.field static final TRANSACTION_getPhoneState:I = 0x7f

.field static final TRANSACTION_getPowerKeyFlag:I = 0x4a

.field static final TRANSACTION_getPreferredNetworkType:I = 0x60

.field static final TRANSACTION_getRejectAllCalls:I = 0x79

.field static final TRANSACTION_getSectorId:I = 0x1c

.field static final TRANSACTION_getServiceState:I = 0x3b

.field static final TRANSACTION_getSubsidyLockTypes:I = 0x36

.field static final TRANSACTION_getUSSDVerificationStatus:I = 0x67

.field static final TRANSACTION_getUSSDVerificationStrings:I = 0x69

.field static final TRANSACTION_getVTLoopBackMode:I = 0x55

.field static final TRANSACTION_getVTSimulatedMode:I = 0x53

.field static final TRANSACTION_getVoiceMessageCountExt:I = 0x8b

.field static final TRANSACTION_hasIccCardExt:I = 0x8a

.field static final TRANSACTION_hasVTCall:I = 0x58

.field static final TRANSACTION_hello_getDeviceId:I = 0x1

.field static final TRANSACTION_htcCdmaEndCall:I = 0x42

.field static final TRANSACTION_htcCdmaExitRadioPowerSaveMode:I = 0x40

.field static final TRANSACTION_htcModemLinkOn:I = 0x41

.field static final TRANSACTION_isCallWaiting:I = 0x4c

.field static final TRANSACTION_isFdnEnabled:I = 0x43

.field static final TRANSACTION_isInService:I = 0x90

.field static final TRANSACTION_isSimPinEnabled:I = 0x83

.field static final TRANSACTION_isUimPinEnabled:I = 0x84

.field static final TRANSACTION_launchCallForwardingSettings:I = 0x7a

.field static final TRANSACTION_notifyKeyEvent:I = 0x7e

.field static final TRANSACTION_notifyScreenBusy:I = 0x7d

.field static final TRANSACTION_openIccLogicalChannel:I = 0x12

.field static final TRANSACTION_performHtcPhoneAction:I = 0x6b

.field static final TRANSACTION_queryCAVE:I = 0x3

.field static final TRANSACTION_queryMD5:I = 0xa

.field static final TRANSACTION_querySSDUpdate:I = 0x5

.field static final TRANSACTION_queryUIMAUTH:I = 0xb

.field static final TRANSACTION_queryVPM:I = 0x8

.field static final TRANSACTION_requestCAVE:I = 0x2

.field static final TRANSACTION_requestCW_UW_DREG:I = 0x75

.field static final TRANSACTION_requestCW_UW_REG:I = 0x74

.field static final TRANSACTION_requestEhrpdDomainNameChangeState:I = 0x64

.field static final TRANSACTION_requestGetBtid:I = 0x20

.field static final TRANSACTION_requestGetDOMAIN:I = 0x16

.field static final TRANSACTION_requestGetEhrpdDeviceCapability:I = 0x66

.field static final TRANSACTION_requestGetEhrpdDisableCapability:I = 0x65

.field static final TRANSACTION_requestGetGID1:I = 0x27

.field static final TRANSACTION_requestGetHasISIM:I = 0x1d

.field static final TRANSACTION_requestGetIMPI:I = 0x15

.field static final TRANSACTION_requestGetIMPU:I = 0x17

.field static final TRANSACTION_requestGetIMSI:I = 0x19

.field static final TRANSACTION_requestGetIsGBASupported:I = 0x1e

.field static final TRANSACTION_requestGetKeyLifetime:I = 0x21

.field static final TRANSACTION_requestGetMobileNumber:I = 0x1a

.field static final TRANSACTION_requestGetPCSCF:I = 0x18

.field static final TRANSACTION_requestGetPCSCFAddress:I = 0xf

.field static final TRANSACTION_requestGetRand:I = 0x1f

.field static final TRANSACTION_requestGetSIMType:I = 0x7b

.field static final TRANSACTION_requestGetVolteSipRegFailure:I = 0xe

.field static final TRANSACTION_requestISIMRead:I = 0x70

.field static final TRANSACTION_requestImsAkaAuthentication:I = 0x1b

.field static final TRANSACTION_requestLtePermanentlyDetached:I = 0x76

.field static final TRANSACTION_requestMD5:I = 0x9

.field static final TRANSACTION_requestQueryISIMSupported:I = 0x6f

.field static final TRANSACTION_requestResetWSIMState:I = 0x72

.field static final TRANSACTION_requestSSDUpdate:I = 0x4

.field static final TRANSACTION_requestSSDUpdateConfirm:I = 0x6

.field static final TRANSACTION_requestSetEhrpdDisableCapability:I = 0x63

.field static final TRANSACTION_requestSetFastDormancy:I = 0x77

.field static final TRANSACTION_requestSetISIMAUTH:I = 0x71

.field static final TRANSACTION_requestSetLBSNTFY:I = 0x73

.field static final TRANSACTION_requestSetMultiRABTrafficThrottling:I = 0x2a

.field static final TRANSACTION_requestVPM:I = 0x7

.field static final TRANSACTION_resetPdnForSettingsChange:I = 0x5c

.field static final TRANSACTION_resetPdnForSettingsChange2:I = 0x5f

.field static final TRANSACTION_sendAT_BRIC:I = 0x3c

.field static final TRANSACTION_sendAT_PushMail:I = 0x3f

.field static final TRANSACTION_sendAllowedCSIMCommand:I = 0x44

.field static final TRANSACTION_sendCmmbAuth3GReq:I = 0x50

.field static final TRANSACTION_sendCmmbAuthGSMReq:I = 0x51

.field static final TRANSACTION_sendLanguageChange:I = 0x6e

.field static final TRANSACTION_setCFUNumber:I = 0x4d

.field static final TRANSACTION_setDataEnabled:I = 0x7c

.field static final TRANSACTION_setGbaBootstrappingParams:I = 0x25

.field static final TRANSACTION_setGlobalDataRoamingOption:I = 0x29

.field static final TRANSACTION_setPdnSettings:I = 0x5b

.field static final TRANSACTION_setPdnSettings2:I = 0x5e

.field static final TRANSACTION_setPowerKeyFlag:I = 0x49

.field static final TRANSACTION_setPreferredNetworkType:I = 0x61

.field static final TRANSACTION_setPreferredNetworkType_wifi_call:I = 0x81

.field static final TRANSACTION_setRejectAllCalls:I = 0x78

.field static final TRANSACTION_setTimeZone:I = 0x3e

.field static final TRANSACTION_setUSSDVerificationStatus:I = 0x68

.field static final TRANSACTION_setUSSDVerificationStrings:I = 0x6a

.field static final TRANSACTION_setVTLoopBackMode:I = 0x54

.field static final TRANSACTION_setVTSimulatedMode:I = 0x52

.field static final TRANSACTION_showIncallScreen:I = 0x80

.field static final TRANSACTION_supplySubsidyLockPin:I = 0x37

.field static final TRANSACTION_switchHoldAndActiveCall:I = 0x48

.field static final TRANSACTION_transmitIccBasicChannel:I = 0x11

.field static final TRANSACTION_transmitIccLogicalChannel:I = 0x10

.field static final TRANSACTION_unBlockPin:I = 0x35

.field static final TRANSACTION_updateRegDregState:I = 0xc

.field static final TRANSACTION_updateSipInviteState:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephony;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.android.internal.telephony.IHtcTelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IHtcTelephony;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/android/internal/telephony/IHtcTelephony;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/IHtcTelephony$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 1451
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :sswitch_0
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->hello_getDeviceId()Ljava/lang/String;

    move-result-object v8

    .line 54
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x1

    goto :goto_0

    .line 60
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_2
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestCAVE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 64
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x1

    goto :goto_0

    .line 70
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_3
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->queryCAVE()I

    move-result v8

    .line 72
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    const/4 v0, 0x1

    goto :goto_0

    .line 78
    .end local v8           #_result:I
    :sswitch_4
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSSDUpdate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 82
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x1

    goto :goto_0

    .line 88
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_5
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->querySSDUpdate()I

    move-result v8

    .line 90
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    const/4 v0, 0x1

    goto :goto_0

    .line 96
    .end local v8           #_result:I
    :sswitch_6
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSSDUpdateConfirm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 100
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_7
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestVPM()Ljava/lang/String;

    move-result-object v8

    .line 108
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 114
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_8
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->queryVPM()I

    move-result v8

    .line 116
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 122
    .end local v8           #_result:I
    :sswitch_9
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 126
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 130
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 136
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->queryMD5()I

    move-result v8

    .line 138
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 144
    .end local v8           #_result:I
    :sswitch_b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->queryUIMAUTH()I

    move-result v8

    .line 146
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 152
    .end local v8           #_result:I
    :sswitch_c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 155
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->updateRegDregState(I)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 161
    .end local v1           #_arg0:I
    :sswitch_d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 165
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 167
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 169
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->updateSipInviteState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 176
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    :sswitch_e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetVolteSipRegFailure()I

    move-result v8

    .line 178
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 184
    .end local v8           #_result:I
    :sswitch_f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetPCSCFAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 188
    .local v8, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 190
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 194
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:[Ljava/lang/String;
    :sswitch_10
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 198
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 200
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 202
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 204
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 206
    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 208
    .local v6, _arg5:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, _arg6:Ljava/lang/String;
    move-object v0, p0

    .line 209
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 210
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 216
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:I
    .end local v7           #_arg6:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_11
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 220
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 222
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 224
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 226
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 228
    .restart local v5       #_arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg5:Ljava/lang/String;
    move-object v0, p0

    .line 229
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 230
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 236
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_12
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->openIccLogicalChannel(Ljava/lang/String;)I

    move-result v8

    .line 240
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 246
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:I
    :sswitch_13
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 249
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->closeIccLogicalChannel(I)Z

    move-result v8

    .line 250
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    if-eqz v8, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 251
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 256
    .end local v1           #_arg0:I
    .end local v8           #_result:Z
    :sswitch_14
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getLastError()I

    move-result v8

    .line 258
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 264
    .end local v8           #_result:I
    :sswitch_15
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetIMPI()Ljava/lang/String;

    move-result-object v8

    .line 266
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 272
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_16
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetDOMAIN()Ljava/lang/String;

    move-result-object v8

    .line 274
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 280
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_17
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetIMPU()[Ljava/lang/String;

    move-result-object v8

    .line 282
    .local v8, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 284
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 288
    .end local v8           #_result:[Ljava/lang/String;
    :sswitch_18
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetPCSCF()Landroid/os/Bundle;

    move-result-object v8

    .line 290
    .local v8, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    if-eqz v8, :cond_1

    .line 292
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 298
    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 296
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 302
    .end local v8           #_result:Landroid/os/Bundle;
    :sswitch_19
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetIMSI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 306
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 312
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_1a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 315
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetMobileNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 316
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 322
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_1b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 325
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 326
    .local v8, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    if-eqz v8, :cond_2

    .line 328
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 334
    :goto_3
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 332
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 338
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Landroid/os/Bundle;
    :sswitch_1c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 341
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getSectorId(I)Ljava/lang/String;

    move-result-object v8

    .line 342
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 348
    .end local v1           #_arg0:I
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_1d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetHasISIM()Z

    move-result v8

    .line 350
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    if-eqz v8, :cond_3

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 351
    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    .line 356
    .end local v8           #_result:Z
    :sswitch_1e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetIsGBASupported()Z

    move-result v8

    .line 358
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    if-eqz v8, :cond_4

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 359
    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    .line 364
    .end local v8           #_result:Z
    :sswitch_1f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetRand()[B

    move-result-object v8

    .line 366
    .local v8, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 368
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 372
    .end local v8           #_result:[B
    :sswitch_20
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetBtid()Ljava/lang/String;

    move-result-object v8

    .line 374
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 376
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 380
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_21
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetKeyLifetime()Ljava/lang/String;

    move-result-object v8

    .line 382
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 384
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 388
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_22
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 392
    .local v1, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 393
    .local v2, _arg1:[B
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->calculateAkaResponse([B[B)Landroid/os/Bundle;

    move-result-object v8

    .line 394
    .local v8, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    if-eqz v8, :cond_5

    .line 396
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 402
    :goto_6
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 400
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 406
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v8           #_result:Landroid/os/Bundle;
    :sswitch_23
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 410
    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 411
    .restart local v2       #_arg1:[B
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;

    move-result-object v8

    .line 412
    .restart local v8       #_result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    if-eqz v8, :cond_6

    .line 414
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 420
    :goto_7
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 418
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 424
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v8           #_result:Landroid/os/Bundle;
    :sswitch_24
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 427
    .restart local v1       #_arg0:[B
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->calculateNafExternalKey([B)[B

    move-result-object v8

    .line 428
    .local v8, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 430
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 434
    .end local v1           #_arg0:[B
    .end local v8           #_result:[B
    :sswitch_25
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 438
    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 441
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 447
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_26
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 451
    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 452
    .local v2, _arg1:[B
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->akaAuthentication([B[B)Landroid/os/Bundle;

    move-result-object v8

    .line 453
    .local v8, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    if-eqz v8, :cond_7

    .line 455
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 461
    :goto_8
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 459
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 465
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v8           #_result:Landroid/os/Bundle;
    :sswitch_27
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetGID1()Ljava/lang/String;

    move-result-object v8

    .line 467
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 469
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 473
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_28
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getGlobalDataRoamingOption()I

    move-result v8

    .line 475
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 481
    .end local v8           #_result:I
    :sswitch_29
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 484
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setGlobalDataRoamingOption(I)V

    .line 485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 490
    .end local v1           #_arg0:I
    :sswitch_2a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 494
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 495
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSetMultiRABTrafficThrottling(II)V

    .line 496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 501
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_2b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 505
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 507
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 511
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_2c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 514
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcDeviceSvn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 515
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 517
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 521
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_2d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 524
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 525
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 527
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 531
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_2e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 534
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 535
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 537
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 541
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_2f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 544
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcLine1Number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 545
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 547
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 551
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_30
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 554
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 555
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 557
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 561
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_31
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 564
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 565
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 567
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 571
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_32
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 574
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 575
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 577
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 581
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_33
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getEsn()Ljava/lang/String;

    move-result-object v8

    .line 583
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 585
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 589
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_34
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCdmaMin()Ljava/lang/String;

    move-result-object v8

    .line 591
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 593
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 597
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_35
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 601
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 602
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 603
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    if-eqz v8, :cond_8

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 604
    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    .line 609
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_36
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getSubsidyLockTypes()I

    move-result v8

    .line 611
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 617
    .end local v8           #_result:I
    :sswitch_37
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 621
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 622
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 623
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    if-eqz v8, :cond_9

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 624
    :cond_9
    const/4 v0, 0x0

    goto :goto_a

    .line 629
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_38
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getDetailIccStatus()[I

    move-result-object v8

    .line 631
    .local v8, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 633
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 637
    .end local v8           #_result:[I
    :sswitch_39
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->confirmFirstDataRoaming()V

    .line 639
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 644
    :sswitch_3a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getGprsState()I

    move-result v8

    .line 646
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 648
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 652
    .end local v8           #_result:I
    :sswitch_3b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getServiceState()I

    move-result v8

    .line 654
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 656
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 660
    .end local v8           #_result:I
    :sswitch_3c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->sendAT_BRIC()V

    .line 662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 667
    :sswitch_3d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 670
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 675
    .local v1, _arg0:Landroid/content/Intent;
    :goto_b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->dialWithoutDelay(Landroid/content/Intent;)Z

    move-result v8

    .line 676
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    if-eqz v8, :cond_b

    const/4 v0, 0x1

    :goto_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 673
    .end local v1           #_arg0:Landroid/content/Intent;
    .end local v8           #_result:Z
    :cond_a
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/Intent;
    goto :goto_b

    .line 677
    .restart local v8       #_result:Z
    :cond_b
    const/4 v0, 0x0

    goto :goto_c

    .line 682
    .end local v1           #_arg0:Landroid/content/Intent;
    .end local v8           #_result:Z
    :sswitch_3e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    .line 686
    .local v1, _arg0:Z
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 687
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setTimeZone(ZI)V

    .line 688
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 684
    .end local v1           #_arg0:Z
    .end local v2           #_arg1:I
    :cond_c
    const/4 v1, 0x0

    goto :goto_d

    .line 693
    :sswitch_3f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 697
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 698
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->sendAT_PushMail(II)V

    .line 699
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 704
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_40
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->htcCdmaExitRadioPowerSaveMode()V

    .line 706
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 711
    :sswitch_41
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->htcModemLinkOn()Z

    move-result v8

    .line 713
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    if-eqz v8, :cond_d

    const/4 v0, 0x1

    :goto_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 714
    :cond_d
    const/4 v0, 0x0

    goto :goto_e

    .line 719
    .end local v8           #_result:Z
    :sswitch_42
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->htcCdmaEndCall()Z

    move-result v8

    .line 721
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    if-eqz v8, :cond_e

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 723
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 722
    :cond_e
    const/4 v0, 0x0

    goto :goto_f

    .line 727
    .end local v8           #_result:Z
    :sswitch_43
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->isFdnEnabled()Z

    move-result v8

    .line 729
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    if-eqz v8, :cond_f

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 731
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 730
    :cond_f
    const/4 v0, 0x0

    goto :goto_10

    .line 735
    .end local v8           #_result:Z
    :sswitch_44
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 738
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 739
    .local v8, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 741
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 745
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:[Ljava/lang/String;
    :sswitch_45
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getActiveCallNumber()Ljava/lang/String;

    move-result-object v8

    .line 747
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 749
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 753
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_46
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 754
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getBackgroundCallNumber()Ljava/lang/String;

    move-result-object v8

    .line 755
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 757
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 761
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_47
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getActiveCallConnectTime()J

    move-result-wide v8

    .line 763
    .local v8, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 765
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 769
    .end local v8           #_result:J
    :sswitch_48
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->switchHoldAndActiveCall()V

    .line 771
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 776
    :sswitch_49
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setPowerKeyFlag()V

    .line 778
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 783
    :sswitch_4a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getPowerKeyFlag()Z

    move-result v8

    .line 785
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    if-eqz v8, :cond_10

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 786
    :cond_10
    const/4 v0, 0x0

    goto :goto_11

    .line 791
    .end local v8           #_result:Z
    :sswitch_4b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCFUNumber()Ljava/lang/String;

    move-result-object v8

    .line 793
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 795
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 799
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_4c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->isCallWaiting()Z

    move-result v8

    .line 801
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    if-eqz v8, :cond_11

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 803
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 802
    :cond_11
    const/4 v0, 0x0

    goto :goto_12

    .line 807
    .end local v8           #_result:Z
    :sswitch_4d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 809
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x1

    .line 811
    .local v1, _arg0:Z
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 812
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setCFUNumber(ZLjava/lang/String;)Z

    move-result v8

    .line 813
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    if-eqz v8, :cond_13

    const/4 v0, 0x1

    :goto_14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 809
    .end local v1           #_arg0:Z
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v8           #_result:Z
    :cond_12
    const/4 v1, 0x0

    goto :goto_13

    .line 814
    .restart local v1       #_arg0:Z
    .restart local v2       #_arg1:Ljava/lang/String;
    .restart local v8       #_result:Z
    :cond_13
    const/4 v0, 0x0

    goto :goto_14

    .line 819
    .end local v1           #_arg0:Z
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_4e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCFUNumberFromOperator()Ljava/lang/String;

    move-result-object v8

    .line 821
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 823
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 827
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_4f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getIncallRecordingFileName()Ljava/lang/String;

    move-result-object v8

    .line 829
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 831
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 835
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_50
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 837
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 839
    .local v1, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 840
    .local v2, _arg1:[B
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->sendCmmbAuth3GReq([B[B)[B

    move-result-object v8

    .line 841
    .local v8, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 843
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 847
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v8           #_result:[B
    :sswitch_51
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 849
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 850
    .restart local v1       #_arg0:[B
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->sendCmmbAuthGSMReq([B)[B

    move-result-object v8

    .line 851
    .restart local v8       #_result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 853
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 857
    .end local v1           #_arg0:[B
    .end local v8           #_result:[B
    :sswitch_52
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    .line 860
    .local v1, _arg0:Z
    :goto_15
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setVTSimulatedMode(Z)V

    .line 861
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 859
    .end local v1           #_arg0:Z
    :cond_14
    const/4 v1, 0x0

    goto :goto_15

    .line 866
    :sswitch_53
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getVTSimulatedMode()Z

    move-result v8

    .line 868
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    if-eqz v8, :cond_15

    const/4 v0, 0x1

    :goto_16
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 870
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 869
    :cond_15
    const/4 v0, 0x0

    goto :goto_16

    .line 874
    .end local v8           #_result:Z
    :sswitch_54
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 876
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    .line 877
    .restart local v1       #_arg0:Z
    :goto_17
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setVTLoopBackMode(Z)V

    .line 878
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 879
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 876
    .end local v1           #_arg0:Z
    :cond_16
    const/4 v1, 0x0

    goto :goto_17

    .line 883
    :sswitch_55
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 884
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getVTLoopBackMode()Z

    move-result v8

    .line 885
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    if-eqz v8, :cond_17

    const/4 v0, 0x1

    :goto_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 887
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 886
    :cond_17
    const/4 v0, 0x0

    goto :goto_18

    .line 891
    .end local v8           #_result:Z
    :sswitch_56
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 892
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getGsmNetworkType()Ljava/lang/String;

    move-result-object v8

    .line 893
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 895
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 899
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_57
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->checkTestIcc()Z

    move-result v8

    .line 901
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    if-eqz v8, :cond_18

    const/4 v0, 0x1

    :goto_19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 903
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 902
    :cond_18
    const/4 v0, 0x0

    goto :goto_19

    .line 907
    .end local v8           #_result:Z
    :sswitch_58
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->hasVTCall()Z

    move-result v8

    .line 909
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    if-eqz v8, :cond_19

    const/4 v0, 0x1

    :goto_1a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 911
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 910
    :cond_19
    const/4 v0, 0x0

    goto :goto_1a

    .line 915
    .end local v8           #_result:Z
    :sswitch_59
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCurrentCallState()I

    move-result v8

    .line 917
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 919
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 923
    .end local v8           #_result:I
    :sswitch_5a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 925
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 926
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getPdnSettings(I)Ljava/lang/String;

    move-result-object v8

    .line 927
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 929
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 933
    .end local v1           #_arg0:I
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_5b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 935
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 937
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 938
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setPdnSettings(ILjava/lang/String;)V

    .line 939
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 944
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_5c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->resetPdnForSettingsChange()V

    .line 946
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 947
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 951
    :sswitch_5d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 953
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 954
    .local v1, _arg0:[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getPdnSettings2([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 955
    .local v8, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 956
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 957
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 961
    .end local v1           #_arg0:[Ljava/lang/String;
    .end local v8           #_result:[Ljava/lang/String;
    :sswitch_5e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 963
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 964
    .restart local v1       #_arg0:[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setPdnSettings2([Ljava/lang/String;)V

    .line 965
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 970
    .end local v1           #_arg0:[Ljava/lang/String;
    :sswitch_5f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 971
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->resetPdnForSettingsChange2()V

    .line 972
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 977
    :sswitch_60
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 978
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getPreferredNetworkType()I

    move-result v8

    .line 979
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 981
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 985
    .end local v8           #_result:I
    :sswitch_61
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 987
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 988
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setPreferredNetworkType(I)V

    .line 989
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 990
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 994
    .end local v1           #_arg0:I
    :sswitch_62
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 997
    .local v1, _arg0:[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcNetworkType([Ljava/lang/String;)I

    move-result v8

    .line 998
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 999
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1000
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1004
    .end local v1           #_arg0:[Ljava/lang/String;
    .end local v8           #_result:I
    :sswitch_63
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1007
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSetEhrpdDisableCapability(I)V

    .line 1008
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1013
    .end local v1           #_arg0:I
    :sswitch_64
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestEhrpdDomainNameChangeState()I

    move-result v8

    .line 1015
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1017
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1021
    .end local v8           #_result:I
    :sswitch_65
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetEhrpdDisableCapability()I

    move-result v8

    .line 1023
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1025
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1029
    .end local v8           #_result:I
    :sswitch_66
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetEhrpdDeviceCapability()I

    move-result v8

    .line 1031
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1032
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1033
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1037
    .end local v8           #_result:I
    :sswitch_67
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getUSSDVerificationStatus()Ljava/lang/String;

    move-result-object v8

    .line 1039
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1040
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1041
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1045
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_68
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1048
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setUSSDVerificationStatus(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1050
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1054
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_69
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getUSSDVerificationStrings()[Ljava/lang/String;

    move-result-object v8

    .line 1056
    .local v8, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1057
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1058
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1062
    .end local v8           #_result:[Ljava/lang/String;
    :sswitch_6a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1066
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1068
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1069
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1071
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1075
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_6b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1078
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->performHtcPhoneAction(I)V

    .line 1079
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1080
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1084
    .end local v1           #_arg0:I
    :sswitch_6c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    .line 1087
    .local v1, _arg0:Z
    :goto_1b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->enableMpdp(Z)V

    .line 1088
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1086
    .end local v1           #_arg0:Z
    :cond_1a
    const/4 v1, 0x0

    goto :goto_1b

    .line 1093
    :sswitch_6d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getActivePDPList()[Ljava/lang/String;

    move-result-object v8

    .line 1095
    .restart local v8       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1096
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1097
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1101
    .end local v8           #_result:[Ljava/lang/String;
    :sswitch_6e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1104
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->sendLanguageChange(I)V

    .line 1105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1106
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1110
    .end local v1           #_arg0:I
    :sswitch_6f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestQueryISIMSupported()Z

    move-result v8

    .line 1112
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    if-eqz v8, :cond_1b

    const/4 v0, 0x1

    :goto_1c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1114
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1113
    :cond_1b
    const/4 v0, 0x0

    goto :goto_1c

    .line 1118
    .end local v8           #_result:Z
    :sswitch_70
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1122
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1124
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1126
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1128
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg4:I
    move-object v0, p0

    .line 1129
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestISIMRead(IIIII)Ljava/lang/String;

    move-result-object v8

    .line 1130
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1132
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1136
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_71
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1139
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1140
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1141
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1142
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1146
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_72
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestResetWSIMState()Z

    move-result v8

    .line 1148
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1149
    if-eqz v8, :cond_1c

    const/4 v0, 0x1

    :goto_1d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1150
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1149
    :cond_1c
    const/4 v0, 0x0

    goto :goto_1d

    .line 1154
    .end local v8           #_result:Z
    :sswitch_73
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1157
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSetLBSNTFY(I)V

    .line 1158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1159
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1163
    .end local v1           #_arg0:I
    :sswitch_74
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestCW_UW_REG()V

    .line 1165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1166
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1170
    :sswitch_75
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1171
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestCW_UW_DREG()V

    .line 1172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1177
    :sswitch_76
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1178
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestLtePermanentlyDetached()Z

    move-result v8

    .line 1179
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    if-eqz v8, :cond_1d

    const/4 v0, 0x1

    :goto_1e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1181
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1180
    :cond_1d
    const/4 v0, 0x0

    goto :goto_1e

    .line 1185
    .end local v8           #_result:Z
    :sswitch_77
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1189
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1190
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSetFastDormancy(II)V

    .line 1191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1196
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_78
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    .line 1199
    .local v1, _arg0:Z
    :goto_1f
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setRejectAllCalls(Z)V

    .line 1200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1198
    .end local v1           #_arg0:Z
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1f

    .line 1205
    :sswitch_79
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1206
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getRejectAllCalls()Z

    move-result v8

    .line 1207
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1208
    if-eqz v8, :cond_1f

    const/4 v0, 0x1

    :goto_20
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1209
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1208
    :cond_1f
    const/4 v0, 0x0

    goto :goto_20

    .line 1213
    .end local v8           #_result:Z
    :sswitch_7a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1214
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->launchCallForwardingSettings()V

    .line 1215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1216
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1220
    :sswitch_7b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetSIMType()I

    move-result v8

    .line 1222
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1223
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1224
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1228
    .end local v8           #_result:I
    :sswitch_7c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    const/4 v1, 0x1

    .line 1231
    .restart local v1       #_arg0:Z
    :goto_21
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setDataEnabled(Z)Z

    move-result v8

    .line 1232
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1233
    if-eqz v8, :cond_21

    const/4 v0, 0x1

    :goto_22
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1234
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1230
    .end local v1           #_arg0:Z
    .end local v8           #_result:Z
    :cond_20
    const/4 v1, 0x0

    goto :goto_21

    .line 1233
    .restart local v1       #_arg0:Z
    .restart local v8       #_result:Z
    :cond_21
    const/4 v0, 0x0

    goto :goto_22

    .line 1238
    .end local v1           #_arg0:Z
    .end local v8           #_result:Z
    :sswitch_7d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    const/4 v1, 0x1

    .line 1241
    .restart local v1       #_arg0:Z
    :goto_23
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->notifyScreenBusy(Z)V

    .line 1242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1243
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1240
    .end local v1           #_arg0:Z
    :cond_22
    const/4 v1, 0x0

    goto :goto_23

    .line 1247
    :sswitch_7e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1250
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->notifyKeyEvent(I)V

    .line 1251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1252
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1256
    .end local v1           #_arg0:I
    :sswitch_7f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1257
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getPhoneState()Landroid/os/Bundle;

    move-result-object v8

    .line 1258
    .local v8, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1259
    if-eqz v8, :cond_23

    .line 1260
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1261
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1266
    :goto_24
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1264
    :cond_23
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    .line 1270
    .end local v8           #_result:Landroid/os/Bundle;
    :sswitch_80
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1271
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->showIncallScreen()V

    .line 1272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1273
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1277
    :sswitch_81
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1280
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setPreferredNetworkType_wifi_call(I)Z

    move-result v8

    .line 1281
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1282
    if-eqz v8, :cond_24

    const/4 v0, 0x1

    :goto_25
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1283
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1282
    :cond_24
    const/4 v0, 0x0

    goto :goto_25

    .line 1287
    .end local v1           #_arg0:I
    .end local v8           #_result:Z
    :sswitch_82
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_25

    const/4 v1, 0x1

    .line 1290
    .local v1, _arg0:Z
    :goto_26
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->enableRegistrationState_wifi_call(Z)V

    .line 1291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1292
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1289
    .end local v1           #_arg0:Z
    :cond_25
    const/4 v1, 0x0

    goto :goto_26

    .line 1296
    :sswitch_83
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1297
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->isSimPinEnabled()Z

    move-result v8

    .line 1298
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    if-eqz v8, :cond_26

    const/4 v0, 0x1

    :goto_27
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1300
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1299
    :cond_26
    const/4 v0, 0x0

    goto :goto_27

    .line 1304
    .end local v8           #_result:Z
    :sswitch_84
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1305
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->isUimPinEnabled()Z

    move-result v8

    .line 1306
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1307
    if-eqz v8, :cond_27

    const/4 v0, 0x1

    :goto_28
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1308
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1307
    :cond_27
    const/4 v0, 0x0

    goto :goto_28

    .line 1312
    .end local v8           #_result:Z
    :sswitch_85
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1315
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCellLocationExt(I)Landroid/os/Bundle;

    move-result-object v8

    .line 1316
    .local v8, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1317
    if-eqz v8, :cond_28

    .line 1318
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1319
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1324
    :goto_29
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1322
    :cond_28
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29

    .line 1328
    .end local v1           #_arg0:I
    .end local v8           #_result:Landroid/os/Bundle;
    :sswitch_86
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1331
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->enableLocationUpdatesExt(I)V

    .line 1332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1333
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1337
    .end local v1           #_arg0:I
    :sswitch_87
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1340
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->disableLocationUpdatesExt(I)V

    .line 1341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1342
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1346
    .end local v1           #_arg0:I
    :sswitch_88
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1349
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getNeighboringCellInfoExt(I)Ljava/util/List;

    move-result-object v10

    .line 1350
    .local v10, _result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1351
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1352
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1356
    .end local v1           #_arg0:I
    .end local v10           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_89
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1358
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1359
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getNetworkTypeExt(I)I

    move-result v8

    .line 1360
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1361
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1362
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1366
    .end local v1           #_arg0:I
    .end local v8           #_result:I
    :sswitch_8a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1369
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->hasIccCardExt(I)Z

    move-result v8

    .line 1370
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1371
    if-eqz v8, :cond_29

    const/4 v0, 0x1

    :goto_2a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1372
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1371
    :cond_29
    const/4 v0, 0x0

    goto :goto_2a

    .line 1376
    .end local v1           #_arg0:I
    .end local v8           #_result:Z
    :sswitch_8b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1379
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getVoiceMessageCountExt(I)I

    move-result v8

    .line 1380
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1381
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1382
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1386
    .end local v1           #_arg0:I
    .end local v8           #_result:I
    :sswitch_8c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1389
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCallStateExt(I)I

    move-result v8

    .line 1390
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1391
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1392
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1396
    .end local v1           #_arg0:I
    .end local v8           #_result:I
    :sswitch_8d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1398
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1399
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getDataActivityExt(I)I

    move-result v8

    .line 1400
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1401
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1402
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1406
    .end local v1           #_arg0:I
    .end local v8           #_result:I
    :sswitch_8e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1408
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1409
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getDataStateExt(I)I

    move-result v8

    .line 1410
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1411
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1412
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1416
    .end local v1           #_arg0:I
    .end local v8           #_result:I
    :sswitch_8f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1417
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getActivePhoneType()I

    move-result v8

    .line 1418
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1419
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1420
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1424
    .end local v8           #_result:I
    :sswitch_90
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1426
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1427
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->isInService(I)Z

    move-result v8

    .line 1428
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1429
    if-eqz v8, :cond_2a

    const/4 v0, 0x1

    :goto_2b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1430
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1429
    :cond_2a
    const/4 v0, 0x0

    goto :goto_2b

    .line 1434
    .end local v1           #_arg0:I
    .end local v8           #_result:Z
    :sswitch_91
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1436
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1437
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcServiceStateExt(I)I

    move-result v8

    .line 1438
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1439
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1440
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1444
    .end local v1           #_arg0:I
    .end local v8           #_result:I
    :sswitch_92
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1445
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCardCheckedState()I

    move-result v8

    .line 1446
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1447
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1448
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_8e
        0x8f -> :sswitch_8f
        0x90 -> :sswitch_90
        0x91 -> :sswitch_91
        0x92 -> :sswitch_92
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
