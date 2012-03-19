.class public Lcom/android/internal/telephony/cdma/HtcRadio;
.super Landroid/os/Handler;
.source "HtcRadio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcRadio$1;,
        Lcom/android/internal/telephony/cdma/HtcRadio$AlarmIntentReceiver;,
        Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;
    }
.end annotation


# static fields
.field private static final DISABLE_MULTIPLE_FLIGHT_MODE_REQUEST:Z = false

.field public static final ERI_EMPTY_TEXT:Ljava/lang/String; = ""

.field private static final EVENT_3GIND:I = 0x0

.field private static final EVENT_ERI_UPDATE:I = 0x3

.field private static final EVENT_RADIO_OFF_REQUEST:I = 0x2

.field private static final EVENT_WAITING_PERIOD:I = 0x1

.field private static final FIX_FLIGHT_MODE:Z = true

.field private static final INTENT_FLIGHT_MODE_ALARM:Ljava/lang/String; = "com.android.internal.telephony.cdma-flight.mode"

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static SPRINT_CONFIG:Z = false

.field private static final TIMEOUT_FLIGHT_MODE_ALARM_MS:I = 0xbb8

.field private static VERIZON_CONFIG:Z


# instance fields
.field private alertSoundId:I

.field private bannerStyle:I

.field private callGuard:I

.field private carrierId:I

.field private dataRoamingGuard:I

.field private distinctiveRinger:I

.field private eriText:Ljava/lang/String;

.field private m3gindState:I

.field private mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mDataChannelReleased:Ljava/lang/Boolean;

.field private mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

.field private mFlightModeAlarmIntent:Landroid/app/PendingIntent;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPendingFlightModeRequest:Z

.field private mPerformingRadioOff:Z

.field private mRoamingType:I

.field private mWaitingTimerId:I

.field private roamingIconIndicator:I

.field private roamingIconMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 499
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/cdma/HtcRadio;->VERIZON_CONFIG:Z

    .line 502
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3a

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x91

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x40

    if-ne v0, v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    sput-boolean v2, Lcom/android/internal/telephony/cdma/HtcRadio;->SPRINT_CONFIG:Z

    return-void

    :cond_2
    move v0, v2

    .line 499
    goto :goto_0
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 5
    .parameter "p"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 66
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 69
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Idle:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    .line 70
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingFlightModeRequest:Z

    .line 71
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPerformingRadioOff:Z

    .line 72
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->init3GindStatus()V

    .line 73
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    .line 75
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->initEriInfo()V

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 78
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.telephony.cdma-flight.mode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    new-instance v1, Lcom/android/internal/telephony/cdma/HtcRadio$AlarmIntentReceiver;

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/cdma/HtcRadio$AlarmIntentReceiver;-><init>(Lcom/android/internal/telephony/cdma/HtcRadio;Lcom/android/internal/telephony/cdma/HtcRadio$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 82
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerFor3GIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 83
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForERIInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 84
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/HtcRadio;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWaitingTimerId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/HtcRadio;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/HtcRadio;->timeoutWaitingPerioid(IZ)V

    return-void
.end method

.method private change3GindState(I)V
    .locals 3
    .parameter "newValue"

    .prologue
    .line 184
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->m3gindState:I

    if-ltz v0, :cond_1

    .line 185
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio] Lower status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->m3gindState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", with state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_0
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->m3gindState:I

    .line 192
    if-nez p1, :cond_2

    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    sget-object v1, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Disconnected:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    if-ne v0, v1, :cond_0

    .line 194
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->ResourceReleaseWaiting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->sendoutWaitingRequest()V

    .line 202
    :goto_1
    return-void

    .line 188
    :cond_1
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio] Lower status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", with state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->stopWaitingRequest()V

    goto :goto_1
.end method

.method private clearWaitingAlarm(Landroid/app/AlarmManager;)V
    .locals 3
    .parameter "aMgr"

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 212
    move-object v0, p1

    .line 213
    .local v0, am:Landroid/app/AlarmManager;
    if-nez v0, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #am:Landroid/app/AlarmManager;
    check-cast v0, Landroid/app/AlarmManager;

    .line 216
    .restart local v0       #am:Landroid/app/AlarmManager;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 217
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 218
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeAlarmIntent:Landroid/app/PendingIntent;

    .line 220
    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_1
    return-void
.end method

.method private eriUpdate(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter "ar"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v10, 0x0

    const/4 v3, 0x1

    .line 509
    iget-object v11, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_0

    .line 510
    const-string v10, "CDMA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HtcRadio]: ERI exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :goto_0
    return-void

    .line 513
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaERIInfo;

    .line 514
    .local v1, htcEriUpdate:Lcom/android/internal/telephony/cdma/CdmaERIInfo;
    const/4 v5, 0x0

    .line 515
    .local v5, updateIcon:Z
    const/4 v4, 0x1

    .line 516
    .local v4, showPlmn:Z
    const/4 v0, 0x0

    .line 520
    .local v0, flashPlmn:Z
    iget v11, v1, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->carrier_id:I

    if-eq v11, v3, :cond_1

    iget v11, v1, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->carrier_id:I

    if-eq v11, v12, :cond_1

    iget v11, v1, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->carrier_id:I

    if-eq v11, v13, :cond_1

    .line 523
    iget v11, v1, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->icon_img_id:I

    packed-switch v11, :pswitch_data_0

    .line 539
    :cond_1
    :goto_1
    iget v11, v1, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->carrier_id:I

    if-ne v11, v3, :cond_2

    .line 540
    iget v11, v1, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->param3:I

    iput v11, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->alertSoundId:I

    .line 542
    iget v11, v1, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->icon_img_id:I

    packed-switch v11, :pswitch_data_1

    .line 554
    :goto_2
    iget v11, v1, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->param1:I

    packed-switch v11, :pswitch_data_2

    .line 564
    :cond_2
    :goto_3
    const/4 v7, -0x1

    .line 565
    .local v7, value_CallGuard:I
    const/4 v9, -0x1

    .line 566
    .local v9, value_DistinctiveRinger:I
    const/4 v8, -0x1

    .line 567
    .local v8, value_DataRoamingGuard:I
    const/4 v6, -0x1

    .line 568
    .local v6, value_BannerStyle:I
    iget v11, v1, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->carrier_id:I

    if-eq v11, v12, :cond_3

    iget v11, v1, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->carrier_id:I

    if-ne v11, v13, :cond_4

    .line 570
    :cond_3
    iget v7, v1, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->param1:I

    .line 571
    iget v9, v1, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->param2:I

    .line 572
    iget v6, v1, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->param3:I

    .line 573
    iget v8, v1, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->param4:I

    .line 575
    iget v11, v1, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->icon_img_id:I

    packed-switch v11, :pswitch_data_3

    .line 590
    :goto_4
    packed-switch v6, :pswitch_data_4

    .line 602
    :cond_4
    :goto_5
    :pswitch_0
    iget v11, v1, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->roaming_type:I

    iput v11, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mRoamingType:I

    .line 603
    iput v7, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->callGuard:I

    .line 604
    const-string v11, "CDMA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HtcRadio] eriUpdate, mRoamingType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mRoamingType:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " callGuard="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->callGuard:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriDistinctiveRinger(I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 610
    :cond_5
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriBannerStyle(I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 614
    :cond_6
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriDataRoamingGuard(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 620
    :cond_7
    iget v11, v1, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->carrier_id:I

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriCarrierId(I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 621
    sget-boolean v11, Lcom/android/internal/telephony/cdma/HtcRadio;->SPRINT_CONFIG:Z

    if-eqz v11, :cond_8

    .line 623
    new-instance v2, Landroid/content/Intent;

    const-string v11, "com.android.internal.telephony.cdma.EriManager.ERI"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 624
    .local v2, intent:Landroid/content/Intent;
    const-string v11, "carrier"

    iget v12, v1, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->carrier_id:I

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 625
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 629
    .end local v2           #intent:Landroid/content/Intent;
    :cond_8
    iget-object v11, v1, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->text:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriText(Ljava/lang/String;)V

    .line 631
    if-eqz v5, :cond_9

    .line 632
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v12, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v12, v12, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 637
    :cond_9
    iget v11, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconIndicator:I

    if-eq v11, v3, :cond_a

    .line 644
    .local v3, isRoamingIcon:Z
    :goto_6
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v10, v10, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    if-eqz v10, :cond_b

    .line 646
    const-string v10, "CDMA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HtcRadio] eriUpdate, dataRoamingGuard="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->dataRoamingGuard:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v10, v10, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    iget v11, v1, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->eri_id:I

    iget v12, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->dataRoamingGuard:I

    invoke-virtual {v10, v11, v12, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveERIupdate(IIZ)V

    goto/16 :goto_0

    .line 525
    .end local v3           #isRoamingIcon:Z
    .end local v6           #value_BannerStyle:I
    .end local v7           #value_CallGuard:I
    .end local v8           #value_DataRoamingGuard:I
    .end local v9           #value_DistinctiveRinger:I
    :pswitch_1
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v5

    .line 526
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v11

    or-int/2addr v5, v11

    .line 527
    goto/16 :goto_1

    .line 529
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v5

    .line 530
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v11

    or-int/2addr v5, v11

    .line 531
    goto/16 :goto_1

    .line 533
    :pswitch_3
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v5

    .line 534
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v11

    or-int/2addr v5, v11

    goto/16 :goto_1

    .line 544
    :pswitch_4
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v5

    .line 545
    goto/16 :goto_2

    .line 547
    :pswitch_5
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v5

    .line 548
    goto/16 :goto_2

    .line 550
    :pswitch_6
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v5

    goto/16 :goto_2

    .line 556
    :pswitch_7
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v11

    or-int/2addr v5, v11

    .line 557
    goto/16 :goto_3

    .line 559
    :pswitch_8
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v11

    or-int/2addr v5, v11

    goto/16 :goto_3

    .line 577
    .restart local v6       #value_BannerStyle:I
    .restart local v7       #value_CallGuard:I
    .restart local v8       #value_DataRoamingGuard:I
    .restart local v9       #value_DistinctiveRinger:I
    :pswitch_9
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v5

    .line 578
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v11

    or-int/2addr v5, v11

    .line 579
    goto/16 :goto_4

    .line 581
    :pswitch_a
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v5

    .line 582
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v11

    or-int/2addr v5, v11

    .line 583
    goto/16 :goto_4

    .line 585
    :pswitch_b
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v5

    .line 586
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v11

    or-int/2addr v5, v11

    goto/16 :goto_4

    .line 594
    :pswitch_c
    const/4 v4, 0x1

    .line 595
    goto/16 :goto_5

    .line 597
    :pswitch_d
    const/4 v0, 0x1

    goto/16 :goto_5

    :cond_a
    move v3, v10

    .line 637
    goto/16 :goto_6

    .line 651
    .restart local v3       #isRoamingIcon:Z
    :cond_b
    const-string v10, "CDMA"

    const-string v11, "[HtcRadio] Data Roaming guard should be not null "

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 523
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 542
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 554
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 575
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 590
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_c
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method private flightModeEnabled()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPerformingRadioOff:Z

    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcRadio;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 361
    const-string v0, "CDMA"

    const-string v1, "[HtcRadio] setRadioPower off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Idle:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    .line 363
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingFlightModeRequest:Z

    .line 364
    return-void
.end method

.method private init3GindStatus()V
    .locals 1

    .prologue
    .line 149
    monitor-enter p0

    .line 150
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->m3gindState:I

    .line 152
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->stopWaitingRequest()V

    .line 154
    monitor-exit p0

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initEriInfo()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 486
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconIndicator:I

    .line 487
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconMode:I

    .line 488
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->eriText:Ljava/lang/String;

    .line 490
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->carrierId:I

    .line 491
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mRoamingType:I

    .line 492
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->alertSoundId:I

    .line 493
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->callGuard:I

    .line 494
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->distinctiveRinger:I

    .line 495
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->bannerStyle:I

    .line 496
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->dataRoamingGuard:I

    .line 497
    return-void
.end method

.method private requestingRadioOffPeriod(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    .line 288
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 290
    monitor-enter p0

    .line 292
    :try_start_0
    const-string v0, "CDMA"

    const-string v1, "[HtcRadio], setRadioPower off successfully !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPerformingRadioOff:Z

    .line 294
    monitor-exit p0

    .line 300
    :goto_0
    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 298
    :cond_0
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio], setRadioPower, exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendoutWaitingRequest()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xbb8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 236
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    if-nez v3, :cond_0

    .line 238
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcRadio;->removeMessages(I)V

    .line 240
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 241
    .local v1, context:Landroid/content/Context;
    const-string v3, "alarm"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 242
    .local v0, am:Landroid/app/AlarmManager;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->clearWaitingAlarm(Landroid/app/AlarmManager;)V

    .line 244
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWaitingTimerId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWaitingTimerId:I

    .line 247
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWaitingTimerId:I

    invoke-virtual {p0, v4, v3, v5}, Lcom/android/internal/telephony/cdma/HtcRadio;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v6, v7}, Lcom/android/internal/telephony/cdma/HtcRadio;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 250
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.cdma-flight.mode"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v2, intent:Landroid/content/Intent;
    const-string/jumbo v3, "timerId"

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWaitingTimerId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeAlarmIntent:Landroid/app/PendingIntent;

    .line 253
    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 257
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    .line 259
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private setCdmaEriBannerStyle(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 698
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->bannerStyle:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 699
    .local v0, changed:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 700
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->bannerStyle:I

    .line 702
    :cond_0
    return v0

    .line 698
    .end local v0           #changed:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCdmaEriCarrierId(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 682
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->carrierId:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 683
    .local v0, changed:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 684
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->carrierId:I

    .line 686
    :cond_0
    return v0

    .line 682
    .end local v0           #changed:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCdmaEriDataRoamingGuard(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 706
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->dataRoamingGuard:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 707
    .local v0, changed:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 708
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->dataRoamingGuard:I

    .line 710
    :cond_0
    return v0

    .line 706
    .end local v0           #changed:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCdmaEriDistinctiveRinger(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 690
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->distinctiveRinger:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 691
    .local v0, changed:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 692
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->distinctiveRinger:I

    .line 694
    :cond_0
    return v0

    .line 690
    .end local v0           #changed:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCdmaEriRoamingIconMode(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 668
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconMode:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 669
    .local v0, changed:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 670
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconMode:I

    .line 672
    :cond_0
    return v0

    .line 668
    .end local v0           #changed:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCdmaEriRoamingIndicator(I)Z
    .locals 4
    .parameter "id"

    .prologue
    .line 658
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcRadio] setCdmaEriRoamingIndicator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconIndicator:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 661
    .local v0, changed:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 662
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconIndicator:I

    .line 664
    :cond_0
    return v0

    .line 660
    .end local v0           #changed:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCdmaEriText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 677
    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->eriText:Ljava/lang/String;

    .line 678
    return-void

    .line 677
    .restart local p1
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method private stopWaitingRequest()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 226
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->removeMessages(I)V

    .line 228
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcRadio;->clearWaitingAlarm(Landroid/app/AlarmManager;)V

    .line 229
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWaitingTimerId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWaitingTimerId:I

    .line 230
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    .line 232
    return-void
.end method

.method private timeoutWaitingPerioid(IZ)V
    .locals 3
    .parameter "timerId"
    .parameter "byEvent"

    .prologue
    .line 263
    monitor-enter p0

    .line 265
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWaitingTimerId:I

    if-eq v0, p1, :cond_0

    .line 266
    monitor-exit p0

    .line 283
    :goto_0
    return-void

    .line 268
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWaitingTimerId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWaitingTimerId:I

    .line 269
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    .line 270
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingFlightModeRequest:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    sget-object v1, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->ResourceReleaseWaiting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    if-eq v0, v1, :cond_2

    .line 271
    :cond_1
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio] Ready to release channel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    monitor-exit p0

    goto :goto_0

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 278
    :cond_2
    :try_start_1
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio] Turn off radio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ongoing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPerformingRadioOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->flightModeEnabled()V

    .line 282
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private update3GindState(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    .line 159
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    .line 160
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    .line 161
    .local v0, inds:[I
    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    .line 162
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 163
    .local v1, state:I
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcRadio] 3GIND:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-lez v1, :cond_0

    .line 165
    const/4 v1, 0x1

    .line 167
    :cond_0
    monitor-enter p0

    .line 168
    :try_start_0
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->m3gindState:I

    if-eq v2, v1, :cond_1

    .line 169
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcRadio;->change3GindState(I)V

    .line 171
    :cond_1
    monitor-exit p0

    .line 180
    .end local v0           #inds:[I
    .end local v1           #state:I
    :goto_0
    return-void

    .line 171
    .restart local v0       #inds:[I
    .restart local v1       #state:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 174
    .end local v1           #state:I
    :cond_2
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcRadio] 3GIND skip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    .end local v0           #inds:[I
    :cond_3
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcRadio] 3GIND exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->removeMessages(I)V

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->removeMessages(I)V

    .line 93
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->removeMessages(I)V

    .line 94
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->removeMessages(I)V

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterFor3GIndicator(Landroid/os/Handler;)V

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForERIInfo(Landroid/os/Handler;)V

    .line 99
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 87
    const-string v0, "CDMA"

    const-string v1, "[HtcRadio] finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method public flightModeRequest(Z)Z
    .locals 4
    .parameter "request"

    .prologue
    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, valueReturn:Z
    monitor-enter p0

    .line 312
    :try_start_0
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcRadio] Turn off radio request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requesting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPerformingRadioOff:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", released="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingFlightModeRequest:Z

    .line 319
    if-eqz p1, :cond_1

    .line 323
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->flightModeEnabled()V

    .line 326
    const/4 v0, 0x1

    .line 346
    :cond_0
    :goto_0
    monitor-exit p0

    .line 347
    return v0

    .line 337
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Connecting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Connected:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    if-eq v1, v2, :cond_0

    .line 339
    const/4 v0, 0x1

    goto :goto_0

    .line 346
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCdmaEriAlertSoundId(Z)I
    .locals 4
    .parameter "inService"

    .prologue
    .line 745
    const/4 v0, -0x1

    .line 746
    .local v0, soundId:I
    sget-boolean v1, Lcom/android/internal/telephony/cdma/HtcRadio;->VERIZON_CONFIG:Z

    if-eqz v1, :cond_0

    .line 747
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->alertSoundId:I

    .line 749
    :cond_0
    :goto_0
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcRadio] getCdmaEriAlertSoundId, soundId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return v0

    .line 747
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getCdmaEriBannerStyle()I
    .locals 1

    .prologue
    .line 772
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->bannerStyle:I

    return v0
.end method

.method public getCdmaEriCallGuard()I
    .locals 1

    .prologue
    .line 764
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->callGuard:I

    return v0
.end method

.method public getCdmaEriCarrierId()I
    .locals 1

    .prologue
    .line 741
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->carrierId:I

    return v0
.end method

.method public getCdmaEriDataRoamingGuard()I
    .locals 1

    .prologue
    .line 776
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->dataRoamingGuard:I

    return v0
.end method

.method public getCdmaEriDistinctiveRinger()I
    .locals 1

    .prologue
    .line 768
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->distinctiveRinger:I

    return v0
.end method

.method public getCdmaEriRoamingIconMode()I
    .locals 2

    .prologue
    .line 727
    const/4 v0, 0x0

    .line 728
    .local v0, value:I
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconMode:I

    if-ltz v1, :cond_0

    .line 729
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconMode:I

    .line 731
    :cond_0
    return v0
.end method

.method public getCdmaEriRoamingIndicator()I
    .locals 2

    .prologue
    .line 719
    const/4 v0, 0x1

    .line 720
    .local v0, value:I
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconIndicator:I

    if-ltz v1, :cond_0

    .line 721
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconIndicator:I

    .line 723
    :cond_0
    return v0
.end method

.method public getCdmaEriRoamingType()I
    .locals 3

    .prologue
    .line 757
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio] getCdmaEriRoamingType, mRoamingType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mRoamingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mRoamingType:I

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 736
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio] getCdmaEriText:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->eriText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->eriText:Ljava/lang/String;

    return-object v0
.end method

.method public getDataState()Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;
    .locals 1

    .prologue
    .line 371
    monitor-enter p0

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    monitor-exit p0

    return-object v0

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 109
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio] drop event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    return-void

    .line 114
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 116
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->update3GindState(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 119
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcRadio;->timeoutWaitingPerioid(IZ)V

    goto :goto_0

    .line 122
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->requestingRadioOffPeriod(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 125
    :pswitch_3
    const-string v0, "CDMA"

    const-string v1, "[HtcRadio], ERIInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->eriUpdate(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public hasFlightModeRequested()Z
    .locals 1

    .prologue
    .line 352
    monitor-enter p0

    .line 353
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingFlightModeRequest:Z

    monitor-exit p0

    return v0

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateDataState(Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;)V
    .locals 6
    .parameter "newState"

    .prologue
    .line 379
    move-object v0, p1

    .line 380
    .local v0, reqDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;
    monitor-enter p0

    .line 381
    :try_start_0
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcRadio] Data state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", released="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v1, 0x0

    .line 383
    .local v1, skipStateUpdate:Z
    sget-object v3, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Idle:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    if-ne v0, v3, :cond_0

    .line 384
    sget-object v3, Lcom/android/internal/telephony/cdma/HtcRadio$1;->$SwitchMap$com$android$internal$telephony$cdma$HtcRadio$DataConnectionState:[I

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 405
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 406
    .local v2, turnOffRequired:Z
    sget-object v3, Lcom/android/internal/telephony/cdma/HtcRadio$1;->$SwitchMap$com$android$internal$telephony$cdma$HtcRadio$DataConnectionState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 450
    :cond_1
    :goto_1
    :pswitch_0
    if-nez v1, :cond_2

    .line 451
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    .line 453
    :cond_2
    if-eqz v2, :cond_3

    .line 458
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcRadio] Turn off radio directly, ongoing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPerformingRadioOff:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->flightModeEnabled()V

    .line 462
    :cond_3
    monitor-exit p0

    .line 464
    return-void

    .line 389
    .end local v2           #turnOffRequired:Z
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->ResourceReleaseWaiting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    .line 391
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->sendoutWaitingRequest()V

    goto :goto_0

    .line 462
    .end local v1           #skipStateUpdate:Z
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 396
    .restart local v1       #skipStateUpdate:Z
    :pswitch_2
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Disconnected:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    .line 397
    goto :goto_0

    .line 401
    :pswitch_3
    const/4 v1, 0x1

    goto :goto_0

    .line 411
    .restart local v2       #turnOffRequired:Z
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->init3GindStatus()V

    goto :goto_1

    .line 414
    :pswitch_5
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    sget-object v4, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Connecting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    if-ne v3, v4, :cond_4

    .line 415
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->PendingDisconnecting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    goto :goto_1

    .line 417
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    sget-object v4, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Connected:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    if-ne v3, v4, :cond_5

    .line 418
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->init3GindStatus()V

    goto :goto_1

    .line 421
    :cond_5
    const/4 v1, 0x1

    .line 423
    goto :goto_1

    .line 425
    :pswitch_6
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    if-eqz v3, :cond_7

    .line 426
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 427
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Idle:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    .line 428
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingFlightModeRequest:Z

    goto :goto_1

    .line 431
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->ResourceReleaseWaiting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    goto :goto_1

    .line 434
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    sget-object v4, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->PendingDisconnecting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    if-ne v3, v4, :cond_1

    .line 437
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->ResourceReleaseWaiting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    .line 439
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->sendoutWaitingRequest()V

    goto :goto_1

    .line 444
    :pswitch_7
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->init3GindStatus()V

    .line 445
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    .line 446
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Idle:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    .line 447
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingFlightModeRequest:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 406
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
