.class public Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;
.super Landroid/os/Handler;
.source "HtcCdmaProfileSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$1;,
        Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$AlarmIntentReceiver;,
        Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;
    }
.end annotation


# static fields
.field private static final EVENT_3GIND:I = 0xa

.field private static final EVENT_DATA_PROFILE_CONFIRM:I = 0x4

.field private static final EVENT_DATA_PROFILE_DOUBLE_CHECK:I = 0x3

.field private static final EVENT_DATA_PROFILE_REQUEST:I = 0x1

.field private static final EVENT_DATA_PROFILE_SWITCH:I = 0x2

.field private static final EVENT_PENDING_REQUEST_DELAY:I = 0xb

.field private static final FIX_RADIO_ISSUE_FOR_SWITCHING_PROFILE:Z = true

.field public static final HTC_DATA_PROFILE_HI_PRIORITY:I = 0x4

.field public static final HTC_DATA_PROFILE_NET_SHARING:I = 0x2

.field public static final HTC_DATA_PROFILE_NORMAL:I = 0x1

.field public static final HTC_DATA_PROFILE_UNKNOWN:I = 0x0

.field private static final INTENT_SWITCH_PROFILE_ALARM:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final ISSUE_NET_SHARING_CMD:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final MAX_DATA_PROFILE_CONFIRM_TRY:I = 0xa

.field private static final MAX_DATA_PROFILE_SWITCH_TRY:I = 0xf

.field public static final SWITCHING_MODE_NONE:I = 0x0

.field public static final SWITCHING_MODE_SPRINT:I = 0x1

.field private static final TIMEOUT_3GIND_WAITING_MS:I = 0xbb8

.field private static final profileProperty:Ljava/lang/String; = "ril.cdma.profile"


# instance fields
.field private m3GIND:Ljava/lang/Boolean;

.field private mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mDataOffAlarmIntent:Landroid/app/PendingIntent;

.field private mDataProfile:I

.field private mDataProfileConfirmRetry:I

.field private mDataProfileSwitchRetry:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mProfileSwitchingMode:Ljava/lang/Integer;

.field private mProfileSwitchingRequestTransaction:Z

.field private mRequestRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitingChannelClosed:Z

.field private mWaitingTimerId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 44
    const-string v0, "com.android.internal.telephony.cdma-switch.profile"

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->INTENT_SWITCH_PROFILE_ALARM:Ljava/lang/String;

    .line 505
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v2, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eqz v0, :cond_1

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v2, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v1, 0x30

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->ISSUE_NET_SHARING_CMD:Z

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 5
    .parameter "p"

    .prologue
    const/4 v4, 0x0

    .line 49
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mRequestRecords:Ljava/util/ArrayList;

    .line 50
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 52
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    .line 56
    const-string/jumbo v1, "ril.cdma.profile"

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 61
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->INTENT_SWITCH_PROFILE_ALARM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    new-instance v1, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$AlarmIntentReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$AlarmIntentReceiver;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v4, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 65
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xa

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerFor3GIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->INTENT_SWITCH_PROFILE_ALARM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingTimerId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->timeoutWaitingPerioid(IZ)V

    return-void
.end method

.method private clearWaitingAlarm(Landroid/app/AlarmManager;)V
    .locals 3
    .parameter "aMgr"

    .prologue
    .line 752
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataOffAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 754
    move-object v0, p1

    .line 755
    .local v0, am:Landroid/app/AlarmManager;
    if-nez v0, :cond_0

    .line 756
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #am:Landroid/app/AlarmManager;
    check-cast v0, Landroid/app/AlarmManager;

    .line 758
    .restart local v0       #am:Landroid/app/AlarmManager;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataOffAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 759
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataOffAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 760
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataOffAlarmIntent:Landroid/app/PendingIntent;

    .line 762
    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_1
    return-void
.end method

.method private dataProfileConfirm(Landroid/os/AsyncResult;II)V
    .locals 12
    .parameter "ar"
    .parameter "netSharing"
    .parameter "hiPriority"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 341
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_3

    .line 342
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    if-nez v5, :cond_0

    .line 343
    const-string v5, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HtcCdmaProfile]: confirm profile:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    .line 347
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->sendEmptyMessage(I)Z

    .line 399
    :cond_1
    :goto_0
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    if-nez v5, :cond_f

    .line 400
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileSwitchRetry:I

    if-lez v5, :cond_2

    .line 401
    const-string v5, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HtcCdmaProfile]: switch profile try:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileSwitchRetry:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iput v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileSwitchRetry:I

    .line 404
    :cond_2
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->sendEmptyMessage(I)Z

    .line 429
    :goto_1
    return-void

    .line 350
    :cond_3
    if-ltz p2, :cond_5

    .line 351
    iput v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    .line 352
    if-eqz p2, :cond_4

    :goto_2
    invoke-direct {p0, v10, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->setupProfileSwitch(IZ)V

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_2

    .line 354
    :cond_5
    if-ltz p3, :cond_1

    .line 357
    :try_start_0
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, command:Ljava/lang/String;
    const/16 v7, 0x9

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    add-int/lit8 v4, v7, -0x30

    .line 362
    .end local v1           #command:Ljava/lang/String;
    .local v4, mipValue:I
    :goto_3
    if-ltz v4, :cond_d

    .line 363
    const/4 v3, 0x0

    .line 364
    .local v3, matchProfile:Z
    if-eqz p3, :cond_8

    .line 365
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getDataProfileHiPriority()I

    move-result v7

    if-ne v4, v7, :cond_7

    move v3, v5

    .line 370
    :goto_4
    if-eqz v3, :cond_b

    .line 371
    iget v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    if-lez v7, :cond_6

    .line 372
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HtcCdmaProfile]: confirm profile try:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iput v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    .line 375
    :cond_6
    const/4 v7, 0x4

    if-eqz p3, :cond_a

    :goto_5
    invoke-direct {p0, v7, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->setupProfileSwitch(IZ)V

    goto :goto_0

    .line 359
    .end local v3           #matchProfile:Z
    .end local v4           #mipValue:I
    :catch_0
    move-exception v2

    .line 360
    .local v2, ex:Ljava/lang/Exception;
    const/4 v4, -0x1

    .restart local v4       #mipValue:I
    goto :goto_3

    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v3       #matchProfile:Z
    :cond_7
    move v3, v6

    .line 365
    goto :goto_4

    .line 368
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getDataProfileNormal()I

    move-result v7

    if-ne v4, v7, :cond_9

    move v3, v5

    :goto_6
    goto :goto_4

    :cond_9
    move v3, v6

    goto :goto_6

    :cond_a
    move v5, v6

    .line 375
    goto :goto_5

    .line 378
    :cond_b
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    if-nez v5, :cond_c

    .line 379
    const-string v5, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HtcCdmaProfile]: confirm profile not match:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_c
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    .line 383
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    or-int/lit8 v5, v5, 0x5

    iput v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    .line 385
    const-string/jumbo v5, "ril.cdma.profile"

    new-instance v7, Ljava/lang/Integer;

    iget v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v5, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HtcCdmaProfile]: profile mode (not match):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 391
    .end local v3           #matchProfile:Z
    :cond_d
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    if-nez v5, :cond_e

    .line 392
    const-string v5, "CDMA"

    const-string v7, "[HtcCdmaProfile]: confirm profile DM fail"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_e
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    goto/16 :goto_0

    .line 406
    .end local v4           #mipValue:I
    :cond_f
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    const/16 v7, 0xa

    if-ge v5, v7, :cond_10

    .line 408
    const/4 v5, 0x3

    invoke-virtual {p0, v5, p2, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 409
    .local v0, checkMsg:Landroid/os/Message;
    invoke-static {v0, v11, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 410
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 414
    .end local v0           #checkMsg:Landroid/os/Message;
    :cond_10
    iput v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileConfirmRetry:I

    .line 415
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileSwitchRetry:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileSwitchRetry:I

    .line 416
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    .line 417
    if-ltz p2, :cond_11

    .line 418
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    .line 420
    :cond_11
    if-ltz p3, :cond_12

    .line 421
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    .line 424
    :cond_12
    const-string/jumbo v5, "ril.cdma.profile"

    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HtcCdmaProfile]: profile mode (confirm fail):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->sendEmptyMessage(I)Z

    goto/16 :goto_1
.end method

.method private dataProfileDoubleCheck(Landroid/os/AsyncResult;II)V
    .locals 8
    .parameter "ar"
    .parameter "netSharing"
    .parameter "hiPriority"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 297
    const/4 v1, 0x0

    .line 298
    .local v1, handleException:Z
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 299
    if-gez p2, :cond_2

    .line 300
    const/4 v1, 0x1

    .line 306
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 307
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileSwitchRetry:I

    if-nez v4, :cond_1

    .line 308
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcCdmaProfile]: switch profile:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_1
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileSwitchRetry:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileSwitchRetry:I

    .line 312
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->sendEmptyMessage(I)Z

    .line 335
    :goto_1
    return-void

    .line 302
    :cond_2
    sget-boolean v4, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->ISSUE_NET_SHARING_CMD:Z

    if-eqz v4, :cond_0

    if-gez p3, :cond_0

    .line 303
    const/4 v1, 0x1

    goto :goto_0

    .line 315
    :cond_3
    const/4 v4, 0x4

    invoke-virtual {p0, v4, p2, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 316
    .local v0, confirmMsg:Landroid/os/Message;
    if-ltz p2, :cond_4

    .line 317
    invoke-static {v0, v6, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 318
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 320
    :cond_4
    if-ltz p3, :cond_6

    .line 321
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getDataProfileNormal()I

    move-result v2

    .line 322
    .local v2, profileIdNormal:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getDataProfileHiPriority()I

    move-result v4

    if-eq v4, v2, :cond_5

    .line 323
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v5, "C826D00100"

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 326
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C826D0010"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, result:Ljava/lang/String;
    invoke-static {v0, v3, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 328
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 332
    .end local v2           #profileIdNormal:I
    .end local v3           #result:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method private dataProfileRequest(ILandroid/os/Message;)V
    .locals 4
    .parameter "profile"
    .parameter "onCompleted"

    .prologue
    .line 147
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$1;)V

    .line 148
    .local v0, record:Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;
    iput p1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;->profile:I

    .line 149
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;->onCompleted:Landroid/os/Message;

    .line 150
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mRequestRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->m3GIND:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->m3GIND:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingChannelClosed:Z

    .line 155
    const-string v1, "CDMA"

    const-string v2, "[HtcCdmaProfile]: pending for switching"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->startPendingRequestTimer()V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_1
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcCdmaProfile]: dataProfileRequest:profile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->triggerDataProfileRequest()V

    goto :goto_0
.end method

.method private dataProfileResultReport(Ljava/lang/String;)V
    .locals 5
    .parameter "errorString"

    .prologue
    const/4 v4, 0x0

    .line 432
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mRequestRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 433
    .local v0, lenRecords:I
    :goto_0
    if-lez v0, :cond_1

    .line 434
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mRequestRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;

    .line 435
    .local v1, record:Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;
    iget v2, v1, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;->profile:I

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    if-ne v2, v3, :cond_0

    .line 436
    iget-object v2, v1, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;->onCompleted:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->dataProfileSwitchResult(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 441
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 442
    goto :goto_0

    .line 439
    :cond_0
    iget-object v2, v1, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;->onCompleted:Landroid/os/Message;

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->dataProfileSwitchResult(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 444
    .end local v1           #record:Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;
    :cond_1
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mProfileSwitchingRequestTransaction:Z

    .line 445
    iput v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileSwitchRetry:I

    .line 446
    return-void
.end method

.method private dataProfileSwitch()V
    .locals 13

    .prologue
    .line 178
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mRequestRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 179
    .local v3, lenRecords:I
    if-nez v3, :cond_0

    .line 181
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mProfileSwitchingRequestTransaction:Z

    .line 182
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileSwitchRetry:I

    .line 268
    :goto_0
    return-void

    .line 187
    :cond_0
    iget v10, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfileSwitchRetry:I

    const/16 v11, 0xf

    if-lt v10, v11, :cond_1

    .line 188
    const-string v10, "CDMA"

    const-string v11, "[HtcCdmaProfile]: switch profile fail"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v10, "ProfileSwitchOverLimit"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->dataProfileResultReport(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mRequestRecords:Ljava/util/ArrayList;

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;

    .line 195
    .local v8, record:Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;
    const/4 v2, 0x0

    .line 196
    .local v2, issueNetSharingCmd:Ljava/lang/Boolean;
    const/4 v1, 0x0

    .line 197
    .local v1, issueHiPriorityCmd:Ljava/lang/Boolean;
    const-string v10, "CDMA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dataProfileSwitch mDataProfile="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",record.profile="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget v10, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    iget v11, v8, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;->profile:I

    if-eq v10, v11, :cond_2

    .line 199
    iget v10, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    iget v11, v8, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;->profile:I

    xor-int/lit8 v11, v11, -0x1

    and-int v9, v10, v11

    .line 200
    .local v9, switchProfile:I
    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 202
    iget v10, v8, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;->profile:I

    packed-switch v10, :pswitch_data_0

    .line 210
    :pswitch_0
    const-string v10, "CDMA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HtcCdmaProfile] active profile:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local v9           #switchProfile:I
    :cond_2
    :goto_1
    if-eqz v2, :cond_9

    .line 230
    const/4 v11, 0x3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    :goto_2
    const/4 v12, -0x1

    invoke-virtual {p0, v11, v10, v12}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 232
    .local v0, cmdResponse:Landroid/os/Message;
    sget-boolean v10, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->ISSUE_NET_SHARING_CMD:Z

    if-eqz v10, :cond_8

    .line 239
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v4, 0x3

    .line 241
    .local v4, nai:I
    :goto_3
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v10, v10, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v10, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->requestSetNAI(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 204
    .end local v0           #cmdResponse:Landroid/os/Message;
    .end local v4           #nai:I
    .restart local v9       #switchProfile:I
    :pswitch_1
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 205
    goto :goto_1

    .line 207
    :pswitch_2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 208
    goto :goto_1

    .line 216
    :cond_3
    and-int/lit8 v10, v9, 0x2

    if-eqz v10, :cond_4

    .line 217
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 219
    :cond_4
    and-int/lit8 v10, v9, 0x4

    if-eqz v10, :cond_5

    .line 220
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 223
    :cond_5
    const-string v10, "CDMA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HtcCdmaProfile] deactive profile:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 230
    .end local v9           #switchProfile:I
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 239
    .restart local v0       #cmdResponse:Landroid/os/Message;
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 244
    :cond_8
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v0, v10, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 245
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 248
    .end local v0           #cmdResponse:Landroid/os/Message;
    :cond_9
    if-eqz v1, :cond_d

    .line 249
    const/4 v11, 0x3

    const/4 v12, -0x1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v10, 0x1

    :goto_4
    invoke-virtual {p0, v11, v12, v10}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 251
    .restart local v0       #cmdResponse:Landroid/os/Message;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getDataProfileHiPriority()I

    move-result v6

    .line 252
    .local v6, profileIdHiPri:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getDataProfileNormal()I

    move-result v7

    .line 253
    .local v7, profileIdNormal:I
    const-string v10, "CDMA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "profileIdHiPri="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",profileIdNormal="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    if-eq v6, v7, :cond_c

    .line 255
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_b

    move v5, v6

    .line 256
    .local v5, profile:I
    :goto_5
    const-string v10, "CDMA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "requestSetMIPProfile="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v10, v10, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v10, v5, v0}, Lcom/android/internal/telephony/CommandsInterface;->requestSetMIPProfile(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 249
    .end local v0           #cmdResponse:Landroid/os/Message;
    .end local v5           #profile:I
    .end local v6           #profileIdHiPri:I
    .end local v7           #profileIdNormal:I
    :cond_a
    const/4 v10, 0x0

    goto :goto_4

    .restart local v0       #cmdResponse:Landroid/os/Message;
    .restart local v6       #profileIdHiPri:I
    .restart local v7       #profileIdNormal:I
    :cond_b
    move v5, v7

    .line 255
    goto :goto_5

    .line 260
    :cond_c
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v0, v10, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 261
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 266
    .end local v0           #cmdResponse:Landroid/os/Message;
    .end local v6           #profileIdHiPri:I
    .end local v7           #profileIdNormal:I
    :cond_d
    const-string v10, "ProfileSwitchOverTaken"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->dataProfileResultReport(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private dataProfileSwitchResult(Landroid/os/Message;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "onCompleted"
    .parameter "ex"

    .prologue
    .line 449
    if-eqz p1, :cond_0

    .line 450
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 451
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 453
    :cond_0
    return-void
.end method

.method private getDataProfileHiPriority()I
    .locals 2

    .prologue
    .line 456
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->IS_VM_OMADM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    const-string v0, "CDMA"

    const-string v1, "VM OMA DM profile: 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v0, 0x2

    .line 460
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDataProfileNormal()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 465
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getProfileSwitchingMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDataProfileKnown(I)Z
    .locals 2
    .parameter "profileRecord"

    .prologue
    const/4 v0, 0x1

    .line 469
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 474
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupProfileSwitch(IZ)V
    .locals 5
    .parameter "profileUpdate"
    .parameter "isEnable"

    .prologue
    const/4 v2, 0x1

    .line 478
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    .line 479
    .local v1, profileBeforeChange:I
    or-int/lit8 v3, p1, 0x1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v1

    if-nez v3, :cond_0

    move v0, v2

    .line 480
    .local v0, isProfileKnown:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 481
    if-eqz p2, :cond_1

    .line 482
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    .line 497
    :goto_1
    const-string/jumbo v2, "ril.cdma.profile"

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcCdmaProfile]: profile mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return-void

    .line 479
    .end local v0           #isProfileKnown:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 485
    .restart local v0       #isProfileKnown:Z
    :cond_1
    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    goto :goto_1

    .line 489
    :cond_2
    if-eqz p2, :cond_3

    .line 490
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    or-int/lit8 v3, p1, 0x1

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    goto :goto_1

    .line 493
    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    xor-int/lit8 v3, p1, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    goto :goto_1
.end method

.method private startPendingRequestTimer()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xbb8

    const/16 v4, 0xb

    const/4 v5, 0x0

    .line 767
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->removeMessages(I)V

    .line 769
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 770
    .local v1, context:Landroid/content/Context;
    const-string v3, "alarm"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 771
    .local v0, am:Landroid/app/AlarmManager;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->clearWaitingAlarm(Landroid/app/AlarmManager;)V

    .line 773
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingTimerId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingTimerId:I

    .line 776
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingTimerId:I

    invoke-virtual {p0, v4, v3, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v6, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 779
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->INTENT_SWITCH_PROFILE_ALARM:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 780
    .local v2, intent:Landroid/content/Intent;
    const-string/jumbo v3, "timerId"

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingTimerId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 781
    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataOffAlarmIntent:Landroid/app/PendingIntent;

    .line 782
    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataOffAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 786
    return-void
.end method

.method private timeoutWaitingPerioid(IZ)V
    .locals 4
    .parameter "timerId"
    .parameter "byEvent"

    .prologue
    .line 790
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-nez v1, :cond_2

    .line 791
    :cond_0
    const-string v1, "CDMA"

    const-string v2, "[HtcCdmaProfile]: cdma phone object is null, return "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_1
    :goto_0
    return-void

    .line 795
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingTimerId:I

    if-ne v1, p1, :cond_1

    .line 798
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingTimerId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingTimerId:I

    .line 799
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingChannelClosed:Z

    if-eqz v1, :cond_1

    .line 800
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingChannelClosed:Z

    .line 801
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->m3GIND:Ljava/lang/Boolean;

    .line 802
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    .line 803
    .local v0, connectionStatus:Lcom/android/internal/telephony/DataConnectionTracker$State;
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcCdmaProfile]: pending for switching timeout - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v1, :cond_1

    .line 807
    const-string v1, "CDMA"

    const-string v2, "[HtcCdmaProfile]: timeoutWaitingPerioid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->triggerDataProfileRequest()V

    goto :goto_0
.end method

.method private triggerDataProfileRequest()V
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mProfileSwitchingRequestTransaction:Z

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mProfileSwitchingRequestTransaction:Z

    .line 167
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->sendEmptyMessage(I)Z

    .line 169
    :cond_0
    return-void
.end method

.method private update3GindState(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    .line 711
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 713
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    .line 714
    .local v0, inds:[I
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 715
    aget v1, v0, v3

    .line 716
    .local v1, state:I
    new-instance v4, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-direct {v4, v2}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->m3GIND:Ljava/lang/Boolean;

    .line 717
    if-nez v1, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingChannelClosed:Z

    if-eqz v2, :cond_0

    .line 718
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingChannelClosed:Z

    .line 720
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingTimerId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mWaitingTimerId:I

    .line 722
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->removeMessages(I)V

    .line 724
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->clearWaitingAlarm(Landroid/app/AlarmManager;)V

    .line 725
    const-string v2, "CDMA"

    const-string v3, "[HtcCdmaProfile]: update3GindState triggerDataProfileRequest"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->triggerDataProfileRequest()V

    .line 730
    .end local v0           #inds:[I
    .end local v1           #state:I
    :cond_0
    return-void

    .restart local v0       #inds:[I
    .restart local v1       #state:I
    :cond_1
    move v2, v3

    .line 716
    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterFor3GIndicator(Landroid/os/Handler;)V

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->removeMessages(I)V

    .line 78
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->removeMessages(I)V

    .line 79
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->removeMessages(I)V

    .line 80
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->removeMessages(I)V

    .line 81
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->removeMessages(I)V

    .line 82
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->removeMessages(I)V

    .line 84
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "CDMA"

    const-string v1, "HtcCdmaProfileSwitch finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method public getCurrentDataProfile()I
    .locals 2

    .prologue
    .line 614
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    .line 615
    .local v0, profileReturn:I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->isDataProfileKnown(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 616
    const/4 v0, 0x0

    .line 618
    :cond_0
    return v0
.end method

.method public getProfileSwitchingMode()I
    .locals 3

    .prologue
    .line 825
    const/4 v0, 0x0

    .line 827
    .local v0, mode:I
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x94

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->IS_VM_OMADM()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 829
    :cond_0
    const/4 v0, 0x1

    .line 831
    :cond_1
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 100
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " HtcCdmaProfileSwitch drop event "

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

    .line 105
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 107
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->dataProfileRequest(ILandroid/os/Message;)V

    goto :goto_0

    .line 110
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->dataProfileSwitch()V

    goto :goto_0

    .line 113
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->dataProfileDoubleCheck(Landroid/os/AsyncResult;II)V

    goto :goto_0

    .line 116
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->dataProfileConfirm(Landroid/os/AsyncResult;II)V

    goto :goto_0

    .line 120
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->update3GindState(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 125
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->timeoutWaitingPerioid(IZ)V

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public isProfileAllowSwitch(I)Z
    .locals 6
    .parameter "profile"

    .prologue
    const/4 v2, 0x1

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, allow:Z
    packed-switch p1, :pswitch_data_0

    .line 293
    :goto_0
    :pswitch_0
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcCdmaProfile]: profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isProfileAllowSwitch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return v0

    .line 275
    :pswitch_1
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x91

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x40

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x94

    if-eq v3, v4, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->IS_VM_OMADM()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getProfileSwitchingMode()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 281
    const-string v3, "dm.hfa"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 282
    .local v1, provision:I
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dm.hfa provision="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    if-eqz v1, :cond_1

    move v0, v2

    .line 284
    :goto_1
    goto :goto_0

    .line 283
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 286
    .end local v1           #provision:I
    :cond_2
    const/4 v0, 0x1

    .line 288
    goto :goto_0

    .line 290
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public needDisconnectForSwitchingTo(I)Z
    .locals 3
    .parameter "toProfile"

    .prologue
    const/4 v2, 0x1

    .line 546
    const/4 v0, 0x1

    .line 547
    .local v0, required:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getCurrentDataProfile()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 610
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 556
    :pswitch_1
    packed-switch p1, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 558
    :pswitch_3
    const/4 v0, 0x0

    .line 559
    goto :goto_0

    .line 561
    :pswitch_4
    sget-boolean v0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->ISSUE_NET_SHARING_CMD:Z

    .line 562
    goto :goto_0

    .line 564
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getProfileSwitchingMode()I

    move-result v1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 576
    :pswitch_6
    packed-switch p1, :pswitch_data_2

    :pswitch_7
    goto :goto_0

    .line 578
    :pswitch_8
    sget-boolean v0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->ISSUE_NET_SHARING_CMD:Z

    .line 579
    goto :goto_0

    .line 581
    :pswitch_9
    const/4 v0, 0x0

    .line 582
    goto :goto_0

    .line 584
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getProfileSwitchingMode()I

    move-result v1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 596
    :pswitch_b
    packed-switch p1, :pswitch_data_3

    :pswitch_c
    goto :goto_0

    .line 598
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getProfileSwitchingMode()I

    move-result v1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 601
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getProfileSwitchingMode()I

    move-result v1

    if-eq v1, v2, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->ISSUE_NET_SHARING_CMD:Z

    goto :goto_0

    .line 604
    :pswitch_f
    const/4 v0, 0x0

    goto :goto_0

    .line 547
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_b
    .end packed-switch

    .line 556
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 576
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_a
    .end packed-switch

    .line 596
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_d
        :pswitch_e
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public onGoingSwitchingToDataProfile()I
    .locals 4

    .prologue
    .line 622
    const/4 v0, 0x0

    .line 623
    .local v0, profile:I
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mRequestRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 624
    .local v1, szRequests:I
    if-lez v1, :cond_0

    .line 625
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mRequestRecords:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;

    iget v0, v2, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch$DataProfileRecord;->profile:I

    .line 627
    :cond_0
    return v0
.end method

.method public profileAllowDataConnection()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 671
    const/4 v0, 0x0

    .line 672
    .local v0, allow:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getCurrentDataProfile()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 693
    :goto_0
    :pswitch_0
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcCdmaProfile]: profileAllowDataConnection()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",getCurrentDataProfile()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getCurrentDataProfile()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return v0

    .line 675
    :pswitch_1
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x91

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x40

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x94

    if-eq v3, v4, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->IS_VM_OMADM()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getProfileSwitchingMode()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 681
    const-string v3, "dm.hfa"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 682
    .local v1, provision:I
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcCdmaProfile]: dm.hfa provision="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    if-eqz v1, :cond_1

    move v0, v2

    .line 684
    :goto_1
    goto :goto_0

    .line 683
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 686
    .end local v1           #provision:I
    :cond_2
    const/4 v0, 0x1

    .line 688
    goto :goto_0

    .line 690
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 672
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setDataProfileTo(Landroid/os/Message;)V
    .locals 3
    .parameter "onCompleted"

    .prologue
    .line 660
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->isDataProfileKnown(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "ProfileNotAllowed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->dataProfileSwitchResult(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 666
    :goto_0
    return-void

    .line 665
    :cond_0
    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setupCarrierId(I)V
    .locals 1
    .parameter "carrierId"

    .prologue
    .line 699
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mProfileSwitchingMode:Ljava/lang/Integer;

    .line 700
    return-void
.end method

.method public switchToDataProfileDirectly(I)Z
    .locals 5
    .parameter "profile"

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getCurrentDataProfile()I

    move-result v0

    .line 632
    .local v0, currentProfile:I
    if-ne v0, p1, :cond_1

    .line 633
    const/4 v1, 0x1

    .line 656
    :cond_0
    :goto_0
    return v1

    .line 635
    :cond_1
    const/4 v1, 0x0

    .line 642
    .local v1, directSwitch:Z
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->needDisconnectForSwitchingTo(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 644
    const/4 v1, 0x1

    .line 645
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcCdmaProfile]: profile mode (d):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    .line 648
    const-string/jumbo v2, "ril.cdma.profile"

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->mDataProfile:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :cond_2
    if-nez v1, :cond_0

    .line 652
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->onGoingSwitchingToDataProfile()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method
