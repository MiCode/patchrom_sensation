.class public Lcom/android/phone/NotificationMgr;
.super Ljava/lang/Object;
.source "NotificationMgr.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NotificationMgr$1;,
        Lcom/android/phone/NotificationMgr$StateListener;,
        Lcom/android/phone/NotificationMgr$WorkingHandler;,
        Lcom/android/phone/NotificationMgr$QueryHandler;,
        Lcom/android/phone/NotificationMgr$NotifyMissedCall;,
        Lcom/android/phone/NotificationMgr$StatusBarMgr;
    }
.end annotation


# static fields
.field private static final ACTION_UPDATE_MISSCALL_COUNT:Ljava/lang/String; = "com.android.phone.action.update_misscall_count"

.field static final CALL_FORWARD_NOTIFICATION:I = 0x6

.field private static final CALL_LOG_PROJECTION:[Ljava/lang/String; = null

.field private static final CALL_LOG_TOKEN:I = -0x1

.field private static final CLOSE_CURSOR_MSG:I = 0x2

.field private static final CONTACT_TOKEN:I = -0x2

.field static final DATA_DISCONNECTED_ROAMING_NOTIFICATION:I = 0x7

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field static final IN_CALL_NOTIFICATION:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "NotificationMgr"

.field private static final MAX_VM_NUMBER_RETRIES:I = 0x5

.field private static final MISSCALL_COUNT:Ljava/lang/String; = "misscall_count"

.field static final MISSED_CALL_NOTIFICATION:I = 0x1

.field static final MMI_NOTIFICATION:I = 0x3

.field static final MOBILE_DATA_CONNECTED_NOTIFICATION:I = 0xc

.field static final NETWORK_SELECTION_NOTIFICATION:I = 0x4

.field private static final NOTIFICATION_MSG:I = 0x1

.field static final PHONES_PROJECTION:[Ljava/lang/String; = null

.field static final SELECTED_OPERATOR_FAIL_NOTIFICATION:I = 0x8

.field static final SMART_DATA_ROAMING_CONNECTED_NOTIFICATION:I = 0x9

.field static final SMART_DATA_ROAMING_SEARCH_NO_NETWORK_NOTIFICATION:I = 0xa

#the value of this static final field might be set in the static constructor
.field private static final SUPPORT_INCALL_LEFT_STATUS:Z = false

#the value of this static final field might be set in the static constructor
.field private static final SUPPORT_INCALL_TOP_EVENT:Z = false

#the value of this static final field might be set in the static constructor
.field private static final SUPPORT_MWI_VIBRATION:Z = false

#the value of this static final field might be set in the static constructor
.field private static final SUPPORT_NOTIFICATION_END_CALL:Z = false

.field private static final VM_NUMBER_RETRY_DELAY_MILLIS:I = 0x2710

.field static final VOICEMAIL_NOTIFICATION:I = 0x5

.field private static final VVM_ENGING_DB_URI_SETTING:Ljava/lang/String; = "content://com.tmobile.vvm.application.settingprovider"

.field private static mWorkingHandler:Landroid/os/Handler;

.field private static sMe:Lcom/android/phone/NotificationMgr;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentGlowMode:I

.field private mInCallResId:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNumberMissedCalls:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

.field private mRejectCall:Z

.field private mSelectedUnavailableNotify:Z

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mShowingMuteIcon:Z

.field private mShowingSpeakerphoneIcon:Z

.field private mStateListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/NotificationMgr$StateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mStatusBarMgr:Lcom/android/phone/NotificationMgr$StatusBarMgr;

.field private mToast:Landroid/widget/Toast;

.field private mVmNumberRetriesRemaining:I

.field private mWorkingThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    sput-boolean v2, Lcom/android/phone/NotificationMgr;->DBG:Z

    .line 108
    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "number"

    aput-object v3, v0, v1

    const-string v3, "date"

    aput-object v3, v0, v5

    const-string v3, "duration"

    aput-object v3, v0, v4

    const-string v3, "type"

    aput-object v3, v0, v6

    const/4 v3, 0x5

    const-string v4, "photo_id"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "contact_id"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "display_name"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    :goto_0
    sput-object v0, Lcom/android/phone/NotificationMgr;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 142
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x18

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x19

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x39

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3a

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3b

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x60

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x90

    if-eq v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/phone/NotificationMgr;->SUPPORT_NOTIFICATION_END_CALL:Z

    .line 151
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/NotificationMgr;->sMe:Lcom/android/phone/NotificationMgr;

    .line 189
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/NotificationMgr;->mWorkingHandler:Landroid/os/Handler;

    .line 194
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x30

    if-ne v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x9b

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/phone/NotificationMgr;->SUPPORT_INCALL_LEFT_STATUS:Z

    .line 199
    invoke-static {}, Lcom/htc/util/phone/ProjectUtils;->getVersion()F

    move-result v0

    const/high16 v3, 0x4000

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_3

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/phone/NotificationMgr;->SUPPORT_INCALL_TOP_EVENT:Z

    .line 226
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xab

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/phone/NotificationMgr;->SUPPORT_MWI_VIBRATION:Z

    .line 372
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "number"

    aput-object v3, v0, v2

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/NotificationMgr;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void

    .line 108
    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "number"

    aput-object v3, v0, v1

    const-string v3, "date"

    aput-object v3, v0, v5

    const-string v3, "duration"

    aput-object v3, v0, v4

    const-string v3, "type"

    aput-object v3, v0, v6

    const/4 v3, 0x5

    const-string v4, "photo_id"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "contact_id"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "display_name"

    aput-object v4, v0, v3

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 142
    goto :goto_1

    :cond_2
    move v0, v2

    .line 194
    goto :goto_2

    :cond_3
    move v0, v2

    .line 199
    goto :goto_3

    :cond_4
    move v0, v2

    .line 226
    goto :goto_4
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 230
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput v1, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 175
    iput-boolean v1, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    .line 180
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    .line 183
    iput-object v2, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    .line 188
    iput-object v2, p0, Lcom/android/phone/NotificationMgr;->mWorkingThread:Landroid/os/HandlerThread;

    .line 202
    const/16 v1, 0x10

    iput v1, p0, Lcom/android/phone/NotificationMgr;->mCurrentGlowMode:I

    .line 231
    iput-object p1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    .line 232
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    .line 235
    const-string v1, "statusbar"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 237
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 238
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 239
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 240
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->htcConstructor()V

    .line 242
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 103
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/NotificationMgr;)Landroid/app/StatusBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/NotificationMgr;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    return v0
.end method

.method static synthetic access$412(Lcom/android/phone/NotificationMgr;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/NotificationMgr;)Lcom/android/phone/NotificationMgr$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/NotificationMgr;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr;->closeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$700()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/phone/NotificationMgr;->mWorkingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private appendCityId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cityIdIn"
    .parameter "number"

    .prologue
    .line 2365
    move-object v2, p2

    .line 2366
    .local v2, resultNumber:Ljava/lang/String;
    sget-boolean v4, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v4, :cond_1

    .line 2367
    move-object v0, p1

    .line 2368
    .local v0, cityId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2369
    new-instance v1, Lcom/htc/util/phone/CityIdInfo;

    invoke-direct {v1}, Lcom/htc/util/phone/CityIdInfo;-><init>()V

    .line 2370
    .local v1, info:Lcom/htc/util/phone/CityIdInfo;
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p2, v5}, Lcom/htc/util/phone/CityIdInfo;->doLookup(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    .line 2371
    const/4 v4, 0x0

    invoke-static {v4, v1}, Lcom/htc/util/phone/CityIdInfo;->getCityIdDisplay(Landroid/widget/TextView;Lcom/htc/util/phone/CityIdInfo;)Ljava/lang/String;

    move-result-object v0

    .line 2373
    .end local v1           #info:Lcom/htc/util/phone/CityIdInfo;
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2375
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2376
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2377
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2378
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2381
    .end local v0           #cityId:Ljava/lang/String;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return-object v2
.end method

.method private cancelHtcNotification(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 2346
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/htc/lockscreen/HtcLSUtility;->removeNotification(Landroid/content/Context;I)V

    .line 2347
    sget-boolean v0, Lcom/android/phone/util/BuildUtils;->NEW_NOTIFICATION:Z

    if-eqz v0, :cond_0

    .line 2348
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->notifyNewHTCLockScreen()V

    .line 2350
    :cond_0
    return-void
.end method

.method private cancelInCall()V
    .locals 2

    .prologue
    .line 1157
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    .line 1158
    const-string v0, "cancelInCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1159
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    .line 1160
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    .line 1161
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1162
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    .line 1165
    sget-boolean v0, Lcom/android/phone/util/Constants;->SUPPORT_INCALL_GLOW:Z

    if-eqz v0, :cond_1

    .line 1166
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->updateGlow(I)V

    .line 1169
    :cond_1
    return-void
.end method

.method private cancelLSNotification()V
    .locals 2

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/htc/lockscreen/HtcLSUtility;->removeNotification(Landroid/content/Context;I)V

    .line 1433
    return-void
.end method

.method private cancelNetworkSelection()V
    .locals 2

    .prologue
    .line 1729
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    .line 1730
    const-string v0, "cancelNetworkSelection()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1731
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1732
    return-void
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 1788
    sget-object v1, Lcom/android/phone/NotificationMgr;->mWorkingHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1790
    .local v0, msg:Landroid/os/Message;
    sget-object v1, Lcom/android/phone/NotificationMgr;->mWorkingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1791
    return-void
.end method

.method private static configureLedNotification(Landroid/app/Notification;)V
    .locals 1
    .parameter "note"

    .prologue
    .line 562
    iget v0, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/Notification;->flags:I

    .line 563
    iget v0, p0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/app/Notification;->defaults:I

    .line 564
    return-void
.end method

.method private createBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "drawable"

    .prologue
    .line 1898
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1899
    .local v1, width:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 1900
    .local v0, height:I
    invoke-direct {p0, p1, v0, v1}, Lcom/android/phone/NotificationMgr;->createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "drawable"
    .parameter "height"
    .parameter "width"

    .prologue
    const/4 v10, 0x0

    .line 1905
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1908
    .local v7, res:Landroid/content/res/Resources;
    const v9, 0x2080702

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1910
    .local v2, dFrame:Landroid/graphics/drawable/Drawable;
    const v9, 0x7f0c00ed

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v3, v9

    .line 1911
    .local v3, fl:I
    const v9, 0x7f0c00ee

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v6, v9

    .line 1912
    .local v6, pl:I
    sub-int v9, v3, v6

    div-int/lit8 v8, v9, 0x2

    .line 1915
    .local v8, sl:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v10, v10, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1916
    .local v4, frameRect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    sub-int v9, v3, v8

    sub-int v10, v3, v8

    invoke-direct {v5, v8, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1918
    .local v5, photoRect:Landroid/graphics/Rect;
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1919
    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1921
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1922
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1923
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1924
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1926
    invoke-direct {p0, v7, v5, v4, v1}, Lcom/android/phone/NotificationMgr;->getMaskedCanvas(Landroid/content/res/Resources;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Canvas;)V

    .line 1927
    return-object v0
.end method

.method private createViewCallHistoyPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 2386
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x28

    if-ne v1, v2, :cond_0

    .line 2387
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2388
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.htccontacts"

    const-string v2, "com.android.htccontacts.MultipleActivitiesMain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2390
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.htccontacts"

    const-string v3, "com.android.htccontacts.ViewCallHistory"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2397
    :goto_0
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1

    .line 2393
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2394
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2395
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getApplyMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "res"
    .parameter "bmSrc"
    .parameter "nMaskID"

    .prologue
    const/4 v9, 0x0

    .line 1939
    invoke-static {p1, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1940
    .local v1, bmMask:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1941
    .local v0, bmAlpha:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1943
    .local v2, bmRet:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1944
    .local v3, c:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    invoke-virtual {v3, p2, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1946
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 1947
    .local v4, p:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1948
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v0, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1950
    if-eqz v1, :cond_0

    .line 1951
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1952
    const/4 v1, 0x0

    .line 1954
    :cond_0
    if-eqz v0, :cond_1

    .line 1955
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1956
    const/4 v0, 0x0

    .line 1958
    :cond_1
    if-eqz p2, :cond_2

    .line 1959
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1961
    :cond_2
    return-object v2
.end method

.method public static getDefault()Lcom/android/phone/NotificationMgr;
    .locals 1

    .prologue
    .line 255
    sget-object v0, Lcom/android/phone/NotificationMgr;->sMe:Lcom/android/phone/NotificationMgr;

    return-object v0
.end method

.method private getMaskedCanvas(Landroid/content/res/Resources;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "res"
    .parameter "photoRect"
    .parameter "frameRect"
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 2401
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 2402
    .local v2, erasePaint:Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2403
    const v4, 0x2080703

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2404
    .local v1, dMask:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2405
    .local v0, bMask:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2406
    .local v3, maskCanvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2407
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2408
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2409
    invoke-virtual {p4, v0, v7, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2410
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2411
    return-void
.end method

.method private getReflectedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "resource"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 1931
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1932
    .local v5, matrix:Landroid/graphics/Matrix;
    const/high16 v0, 0x3f80

    const/high16 v2, -0x4080

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1933
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int v2, v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move-object v0, p1

    move v4, p2

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1935
    .local v7, bitmap:Landroid/graphics/Bitmap;
    return-object v7
.end method

.method private getSmallReflectionPhoto(Landroid/graphics/Bitmap;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "photo"
    .parameter "res"

    .prologue
    .line 2048
    const v2, 0x7f0c00ec

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 2049
    .local v0, reflectHeight:I
    invoke-direct {p0, p1, v0}, Lcom/android/phone/NotificationMgr;->getReflectedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    const v3, 0x7f0200ac

    invoke-direct {p0, p2, v2, v3}, Lcom/android/phone/NotificationMgr;->getApplyMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2051
    .local v1, reflection:Landroid/graphics/Bitmap;
    return-object v1
.end method

.method private getVVMEnabled()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 1190
    const-string v0, "content://com.tmobile.vvm.application.settingprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1191
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 1192
    .local v7, result:Z
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "ENABLED"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1194
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1195
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1196
    const-string v0, "ENABLED"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-ne v0, v8, :cond_3

    move v7, v8

    .line 1198
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1201
    :cond_1
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_2

    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VVM setting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1203
    :cond_2
    return v7

    :cond_3
    move v7, v9

    .line 1196
    goto :goto_0
.end method

.method private glow(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 2160
    packed-switch p1, :pswitch_data_0

    .line 2173
    const-string v0, "NotificationMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected glow mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->glow(I)V

    .line 2179
    :cond_0
    :goto_0
    return-void

    .line 2164
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 2165
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, p1}, Landroid/app/StatusBarManager;->glow(I)V

    goto :goto_0

    .line 2160
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private htcConstructor()V
    .locals 3

    .prologue
    .line 2187
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NotificationMgrThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mWorkingThread:Landroid/os/HandlerThread;

    .line 2189
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2190
    new-instance v0, Lcom/android/phone/NotificationMgr$WorkingHandler;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NotificationMgr$WorkingHandler;-><init>(Lcom/android/phone/NotificationMgr;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/phone/NotificationMgr;->mWorkingHandler:Landroid/os/Handler;

    .line 2192
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mStateListener:Ljava/util/ArrayList;

    .line 2193
    return-void
.end method

.method static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 245
    new-instance v0, Lcom/android/phone/NotificationMgr;

    invoke-direct {v0, p0}, Lcom/android/phone/NotificationMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/NotificationMgr;->sMe:Lcom/android/phone/NotificationMgr;

    .line 248
    sget-object v0, Lcom/android/phone/NotificationMgr;->sMe:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateNotificationsAtStartup()V

    .line 249
    return-void
.end method

.method private isPhoneInUsed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2272
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v1, :cond_0

    .line 2273
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 2276
    :cond_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1780
    const-string v0, "NotificationMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NotificationMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    return-void
.end method

.method private notifyHTCLockScreen(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "date"
    .parameter "title"
    .parameter "description"
    .parameter "id"
    .parameter "missedname"
    .parameter "cityId"
    .parameter "missedCount"
    .parameter "photo"

    .prologue
    .line 2300
    new-instance v0, Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-direct {v0, p1, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;-><init>(J)V

    .line 2301
    .local v0, htcLsNtf:Lcom/htc/lockscreen/ntf/HtcLSNotification;
    invoke-virtual {v0, p3}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setTitle(Ljava/lang/String;)V

    .line 2302
    invoke-virtual {v0, p4}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setDescript(Ljava/lang/String;)V

    .line 2307
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020057

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2309
    .local v2, largeIcon:Landroid/graphics/Bitmap;
    if-eqz p9, :cond_0

    .line 2310
    instance-of v3, p9, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_4

    .line 2311
    check-cast p9, Landroid/graphics/drawable/BitmapDrawable;

    .end local p9
    invoke-virtual {p9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2312
    const v3, 0x7f020059

    invoke-virtual {v0, v3}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setIcon(I)V

    .line 2317
    :cond_0
    :goto_0
    invoke-virtual {v0, v2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setLargeIcon(Landroid/graphics/Bitmap;)V

    .line 2323
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->createViewCallHistoyPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 2324
    .local v1, intent:Landroid/app/PendingIntent;
    if-eqz v1, :cond_5

    .line 2325
    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setDropPendingIntent(Landroid/app/PendingIntent;)V

    .line 2331
    :goto_1
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v3, :cond_1

    .line 2332
    const-string v3, "NotificationMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "missedDescription: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", missedname: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    :cond_1
    invoke-virtual {v0, p6}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setFrom(Ljava/lang/String;)V

    .line 2335
    invoke-static {p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setContent(Ljava/lang/String;)V

    .line 2336
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2337
    invoke-virtual {v0, p7}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setLocation(Ljava/lang/String;)V

    .line 2339
    :cond_2
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v3, p5, v0}, Lcom/htc/lockscreen/HtcLSUtility;->setNotification(Landroid/content/Context;ILcom/htc/lockscreen/ntf/HtcLSNotification;)V

    .line 2340
    sget-boolean v3, Lcom/android/phone/util/BuildUtils;->NEW_NOTIFICATION:Z

    if-eqz v3, :cond_3

    .line 2341
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->notifyNewHTCLockScreen()V

    .line 2343
    :cond_3
    return-void

    .line 2314
    .end local v1           #intent:Landroid/app/PendingIntent;
    .restart local p9
    :cond_4
    const-string v3, "NotificationMgr"

    const-string v4, "notifyHTCLockScreen() photo is not a instance of BitmapDrawable"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2327
    .end local p9
    .restart local v1       #intent:Landroid/app/PendingIntent;
    :cond_5
    const-string v3, "NotificationMgr"

    const-string v4, "notifyHTCLockScreen() createViewCallHistoyPendingIntent = null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private notifyMuteStateChange(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 1858
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mStateListener:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1859
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mStateListener:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1860
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1861
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mStateListener:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/NotificationMgr$StateListener;

    .line 1862
    .local v1, listener:Lcom/android/phone/NotificationMgr$StateListener;
    if-eqz v1, :cond_0

    .line 1863
    invoke-interface {v1, p1}, Lcom/android/phone/NotificationMgr$StateListener;->muteStateChange(Z)V

    .line 1860
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1867
    .end local v0           #index:I
    .end local v1           #listener:Lcom/android/phone/NotificationMgr$StateListener;
    .end local v2           #size:I
    :cond_1
    return-void
.end method

.method private notifySpeakerStateChange(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 1846
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mStateListener:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1847
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mStateListener:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1848
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1849
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mStateListener:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/NotificationMgr$StateListener;

    .line 1850
    .local v1, listener:Lcom/android/phone/NotificationMgr$StateListener;
    if-eqz v1, :cond_0

    .line 1851
    invoke-interface {v1, p1}, Lcom/android/phone/NotificationMgr$StateListener;->speakerStateChange(Z)V

    .line 1848
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1855
    .end local v0           #index:I
    .end local v1           #listener:Lcom/android/phone/NotificationMgr$StateListener;
    .end local v2           #size:I
    :cond_1
    return-void
.end method

.method private sendMuteBroadcast(Z)V
    .locals 2
    .parameter "muteOn"

    .prologue
    .line 2202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_MUTE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2203
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "mute"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2204
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2205
    return-void
.end method

.method private setLSNotification(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "resId"
    .parameter "notificationTitle"
    .parameter "notificationText"

    .prologue
    .line 1439
    const/4 v0, 0x1

    .line 1440
    .local v0, displayTextOnLS:Z
    sget-boolean v4, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "setLSNotification with voicemail"

    invoke-direct {p0, v4}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1442
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "htc_new_message_notification"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1449
    :goto_0
    if-eqz v0, :cond_1

    .line 1450
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020058

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1452
    .local v3, largeIcon:Landroid/graphics/Bitmap;
    new-instance v2, Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/htc/lockscreen/ntf/HtcLSNotification;-><init>(J)V

    .line 1454
    .local v2, htcLsNtf:Lcom/htc/lockscreen/ntf/HtcLSNotification;
    invoke-virtual {v2, v3}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setLargeIcon(Landroid/graphics/Bitmap;)V

    .line 1455
    invoke-virtual {v2, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setTitle(Ljava/lang/String;)V

    .line 1456
    invoke-virtual {v2, p3}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setDescript(Ljava/lang/String;)V

    .line 1457
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v5, 0x5

    invoke-static {v4, v5, v2}, Lcom/htc/lockscreen/HtcLSUtility;->setNotification(Landroid/content/Context;ILcom/htc/lockscreen/ntf/HtcLSNotification;)V

    .line 1459
    .end local v2           #htcLsNtf:Lcom/htc/lockscreen/ntf/HtcLSNotification;
    .end local v3           #largeIcon:Landroid/graphics/Bitmap;
    :cond_1
    return-void

    .line 1444
    :catch_0
    move-exception v1

    .line 1445
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "NotificationMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private setupInCallNotificationEndCall(Landroid/widget/RemoteViews;Landroid/app/Notification;)V
    .locals 5
    .parameter "contentView"
    .parameter "notification"

    .prologue
    const/4 v4, 0x0

    .line 2245
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->isPhoneInUsed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2246
    const v3, 0x7f080113

    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2248
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.util.contacts.Intent.ACTION_END_CALL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2249
    .local v1, endCallIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2253
    .local v2, pi:Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/NotificationButtonAction;

    invoke-direct {v0}, Landroid/app/NotificationButtonAction;-><init>()V

    .line 2254
    .local v0, btnAction:Landroid/app/NotificationButtonAction;
    const v3, 0x7f080114

    invoke-virtual {v0, v3, v2}, Landroid/app/NotificationButtonAction;->add(ILandroid/app/PendingIntent;)Z

    .line 2255
    iput-object v0, p2, Landroid/app/Notification;->buttonAction:Landroid/app/NotificationButtonAction;

    .line 2257
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->SUPPORT_INCALL_TOP_EVENT:Z

    if-eqz v3, :cond_0

    .line 2258
    iget v3, p2, Landroid/app/Notification;->flags:I

    const/high16 v4, 0x2

    or-int/2addr v3, v4

    iput v3, p2, Landroid/app/Notification;->flags:I

    .line 2261
    .end local v0           #btnAction:Landroid/app/NotificationButtonAction;
    .end local v1           #endCallIntent:Landroid/content/Intent;
    .end local v2           #pi:Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method private showNetworkSelection(Ljava/lang/String;)V
    .locals 9
    .parameter "operator"

    .prologue
    const/4 v8, 0x0

    .line 1699
    sget-boolean v5, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v5, :cond_0

    .line 1700
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showNetworkSelection("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1702
    :cond_0
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v6, 0x7f0e03a7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1703
    .local v4, titleText:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v6, 0x7f0e03a8

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1706
    .local v0, expandedText:Ljava/lang/String;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 1707
    .local v2, notification:Landroid/app/Notification;
    const v5, 0x108008a

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 1708
    const-wide/16 v5, 0x0

    iput-wide v5, v2, Landroid/app/Notification;->when:J

    .line 1709
    const/4 v5, 0x2

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 1710
    const/4 v5, 0x0

    iput-object v5, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1713
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1714
    .local v1, intent:Landroid/content/Intent;
    const/high16 v5, 0x1020

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1716
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.phone"

    const-string v7, "com.android.phone.NetworkSetting"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1718
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1720
    .local v3, pi:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5, v4, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1722
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v6, 0x8

    invoke-virtual {v5, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1723
    return-void
.end method

.method private updateContactPhoto(Lcom/android/phone/PhoneUtils$CallerInfoToken;Landroid/widget/RemoteViews;)V
    .locals 7
    .parameter "cit"
    .parameter "contentView"

    .prologue
    const/4 v6, 0x0

    .line 2003
    if-eqz p1, :cond_2

    iget-object v5, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v5, :cond_2

    .line 2005
    iget-object v5, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v5, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoSmall:Landroid/graphics/Bitmap;

    .line 2006
    .local v1, photo:Landroid/graphics/Bitmap;
    iget-object v5, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v5, Lcom/android/internal/telephony/CallerInfo;->cachedRefPhotoSmall:Landroid/graphics/Bitmap;

    .line 2007
    .local v3, reflection:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2009
    .local v4, res:Landroid/content/res/Resources;
    if-nez v1, :cond_0

    .line 2011
    iget-object v5, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    .line 2013
    iget-object v5, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v5, v6, v6}, Lcom/android/phone/NotificationMgr;->createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2016
    invoke-direct {p0, v1, v4}, Lcom/android/phone/NotificationMgr;->getSmallReflectionPhoto(Landroid/graphics/Bitmap;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2019
    iget-object v5, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v1, v5, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoSmall:Landroid/graphics/Bitmap;

    .line 2020
    iget-object v5, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v3, v5, Lcom/android/internal/telephony/CallerInfo;->cachedRefPhotoSmall:Landroid/graphics/Bitmap;

    .line 2036
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 2037
    const v5, 0x7f08005d

    invoke-virtual {p2, v5, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2039
    :cond_1
    if-eqz v3, :cond_2

    .line 2040
    const v5, 0x7f080112

    invoke-virtual {p2, v5, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2043
    .end local v1           #photo:Landroid/graphics/Bitmap;
    .end local v3           #reflection:Landroid/graphics/Bitmap;
    .end local v4           #res:Landroid/content/res/Resources;
    :cond_2
    return-void

    .line 2023
    .restart local v1       #photo:Landroid/graphics/Bitmap;
    .restart local v3       #reflection:Landroid/graphics/Bitmap;
    .restart local v4       #res:Landroid/content/res/Resources;
    :cond_3
    const-string v5, "com.anddroid.contacts.sim"

    iget-object v6, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/CallerInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2025
    .local v0, isSim:Z
    if-eqz v0, :cond_4

    const v2, 0x208025a

    .line 2028
    .local v2, photoRes:I
    :goto_1
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/NotificationMgr;->createBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2030
    invoke-direct {p0, v1, v4}, Lcom/android/phone/NotificationMgr;->getSmallReflectionPhoto(Landroid/graphics/Bitmap;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 2025
    .end local v2           #photoRes:I
    :cond_4
    const v2, 0x20800c2

    goto :goto_1
.end method

.method private updateGlow(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 2099
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    .line 2100
    const-string v0, "NotificationMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update glow from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NotificationMgr;->mCurrentGlowMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    :cond_0
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mCurrentGlowMode:I

    if-eq v0, p1, :cond_1

    .line 2103
    iput p1, p0, Lcom/android/phone/NotificationMgr;->mCurrentGlowMode:I

    .line 2104
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mCurrentGlowMode:I

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->glow(I)V

    .line 2106
    :cond_1
    return-void
.end method

.method private updateHtcIncallNotification(Ljava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 13
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 2280
    const/4 v12, 0x0

    .line 2281
    .local v12, updated:Z
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v10, 0x1

    .line 2282
    .local v10, hasActiveCall:Z
    :goto_0
    if-eqz v10, :cond_2

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 2283
    .local v8, currentCall:Lcom/android/internal/telephony/Call;
    :goto_1
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    .line 2284
    .local v9, currentConn:Lcom/android/internal/telephony/Connection;
    if-eqz v9, :cond_0

    if-eqz v10, :cond_0

    .line 2285
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v6

    .line 2286
    .local v6, callDurationMsec:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, v0, v6

    .line 2287
    .local v2, chronometerBaseTime:J
    const-wide/16 v0, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v5, 0x0

    .line 2288
    .local v5, start:Z
    :goto_2
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 2289
    .local v11, name:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (%s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v0, p1

    .line 2290
    check-cast v0, Landroid/widget/RemoteViews;

    const v1, 0x7f080111

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {p2, v4}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 2292
    const/4 v12, 0x1

    .line 2295
    .end local v2           #chronometerBaseTime:J
    .end local v5           #start:Z
    .end local v6           #callDurationMsec:J
    .end local v11           #name:Ljava/lang/String;
    :cond_0
    return v12

    .line 2281
    .end local v8           #currentCall:Lcom/android/internal/telephony/Call;
    .end local v9           #currentConn:Lcom/android/internal/telephony/Connection;
    .end local v10           #hasActiveCall:Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 2282
    .restart local v10       #hasActiveCall:Z
    :cond_2
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    goto :goto_1

    .line 2287
    .restart local v2       #chronometerBaseTime:J
    .restart local v6       #callDurationMsec:J
    .restart local v8       #currentCall:Lcom/android/internal/telephony/Call;
    .restart local v9       #currentConn:Lcom/android/internal/telephony/Connection;
    :cond_3
    const/4 v5, 0x1

    goto :goto_2
.end method

.method private updateHtcNotificationLine2(Landroid/widget/RemoteViews;J)V
    .locals 7
    .parameter "contentView"
    .parameter "chronometerBaseTimeResult"

    .prologue
    const v1, 0x7f080111

    .line 2217
    const/4 v4, 0x0

    .line 2218
    .local v4, expandedViewLine2:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 2219
    .local v6, foregroundCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2220
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e0390

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2221
    invoke-virtual {p1, v1, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2231
    :goto_0
    return-void

    .line 2223
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, v2, p2

    if-nez v0, :cond_1

    const/4 v5, 0x0

    .line 2226
    .local v5, start:Z
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (%s)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-wide v2, p2

    .line 2228
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    goto :goto_0

    .line 2223
    .end local v5           #start:Z
    :cond_1
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private updateIncallGlow(ZZ)V
    .locals 2
    .parameter "hasActiveCall"
    .parameter "hasHoldingCall"

    .prologue
    .line 2085
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 2086
    .local v1, onlyHoldingCall:Z
    :goto_0
    if-eqz v1, :cond_1

    const/16 v0, 0x12

    .line 2087
    .local v0, glowMode:I
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->updateGlow(I)V

    .line 2088
    return-void

    .line 2085
    .end local v0           #glowMode:I
    .end local v1           #onlyHoldingCall:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2086
    .restart local v1       #onlyHoldingCall:Z
    :cond_1
    const/16 v0, 0x11

    goto :goto_1
.end method


# virtual methods
.method addStateListener(Lcom/android/phone/NotificationMgr$StateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStateListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1878
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStateListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1879
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStateListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1882
    :cond_0
    return-void
.end method

.method cancelCallInProgressNotification()V
    .locals 2

    .prologue
    .line 1172
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    .line 1173
    const-string v0, "cancelCallInProgressNotification()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1174
    :cond_0
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    if-nez v0, :cond_1

    .line 1181
    :goto_0
    return-void

    .line 1178
    :cond_1
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_2

    .line 1179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelCallInProgressNotification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1180
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    goto :goto_0
.end method

.method cancelMissedCallNotification()V
    .locals 2

    .prologue
    const/16 v1, 0x1771

    .line 711
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 714
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 715
    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->cancelHtcNotification(I)V

    .line 716
    return-void
.end method

.method cancelMute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 769
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "mute"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 771
    iput-boolean v2, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    .line 773
    invoke-direct {p0, v2}, Lcom/android/phone/NotificationMgr;->sendMuteBroadcast(Z)V

    .line 777
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/phone/NotificationMgr;->notifyMuteStateChange(Z)V

    .line 778
    return-void
.end method

.method cancelSpeakerphone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 729
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "speakerphone"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 731
    iput-boolean v2, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    .line 734
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/phone/NotificationMgr;->notifySpeakerStateChange(Z)V

    .line 735
    return-void
.end method

.method cleanGlow()V
    .locals 2

    .prologue
    .line 2145
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    .line 2146
    const-string v0, "NotificationMgr"

    const-string v1, "clean glow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    :cond_0
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->glow(I)V

    .line 2149
    return-void
.end method

.method clearSDRNotfication()V
    .locals 2

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1672
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1673
    return-void
.end method

.method getNumberMissedCalls()I
    .locals 1

    .prologue
    .line 704
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    return v0
.end method

.method getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarMgr:Lcom/android/phone/NotificationMgr$StatusBarMgr;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Lcom/android/phone/NotificationMgr$StatusBarMgr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NotificationMgr$StatusBarMgr;-><init>(Lcom/android/phone/NotificationMgr;Lcom/android/phone/NotificationMgr$1;)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarMgr:Lcom/android/phone/NotificationMgr$StatusBarMgr;

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarMgr:Lcom/android/phone/NotificationMgr$StatusBarMgr;

    return-object v0
.end method

.method handleInCallGlow(Z)V
    .locals 7
    .parameter "isPhoneForeground"

    .prologue
    const/16 v6, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2058
    sget-boolean v4, Lcom/android/phone/util/Constants;->SUPPORT_INCALL_GLOW:Z

    if-eqz v4, :cond_0

    .line 2059
    if-eqz p1, :cond_1

    .line 2060
    invoke-direct {p0, v6}, Lcom/android/phone/NotificationMgr;->updateGlow(I)V

    .line 2071
    :cond_0
    :goto_0
    return-void

    .line 2062
    :cond_1
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_4

    .line 2063
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    .line 2064
    .local v0, hasActiveCall:Z
    :goto_1
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v2

    .line 2065
    .local v1, hasHoldingCall:Z
    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/android/phone/NotificationMgr;->updateIncallGlow(ZZ)V

    goto :goto_0

    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    :cond_2
    move v0, v3

    .line 2063
    goto :goto_1

    .restart local v0       #hasActiveCall:Z
    :cond_3
    move v1, v3

    .line 2064
    goto :goto_2

    .line 2067
    .end local v0           #hasActiveCall:Z
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/phone/NotificationMgr;->updateGlow(I)V

    goto :goto_0
.end method

.method hideDataDisconnectedRoaming()V
    .locals 2

    .prologue
    .line 1586
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    .line 1587
    const-string v0, "hideDataDisconnectedRoaming()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1588
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1589
    return-void
.end method

.method hideMobileDataConnected()V
    .locals 2

    .prologue
    .line 1612
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    .line 1613
    const-string v0, "hideMobileDataConnected()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1614
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1615
    return-void
.end method

.method hideSmartDataRoamingConnected()V
    .locals 2

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1668
    return-void
.end method

.method hideSmartDataRoamingNoNetwork()V
    .locals 2

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1689
    return-void
.end method

.method notifyMissedCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .parameter "totalNumber"
    .parameter "name"
    .parameter "number"
    .parameter "label"
    .parameter "date"

    .prologue
    .line 572
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    .line 573
    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 574
    return-void
.end method

.method notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .parameter "name"
    .parameter "number"
    .parameter "label"
    .parameter "date"

    .prologue
    const/4 v6, 0x0

    .line 588
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 589
    return-void
.end method

.method notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 26
    .parameter "name"
    .parameter "number"
    .parameter "label"
    .parameter "date"
    .parameter "cityId"
    .parameter "photo"

    .prologue
    .line 595
    invoke-static {}, Lcom/android/phone/PhoneApp;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v11

    .line 600
    .local v11, callLogIntent:Landroid/content/Intent;
    sget-boolean v4, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v4, :cond_1

    .line 601
    sget-boolean v4, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "notifyMissedCall: non-voice-capable device, not posting notification"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "htc_phone_notification_preview"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v23

    .line 607
    .local v23, preview:Z
    if-eqz v23, :cond_0

    .line 618
    const/16 v24, 0x0

    .line 621
    .local v24, showCityId:Z
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 625
    if-eqz p1, :cond_3

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 626
    move-object/from16 v22, p1

    .line 637
    .local v22, callName:Ljava/lang/String;
    :goto_1
    if-eqz v24, :cond_5

    move-object/from16 v18, p2

    .line 642
    .local v18, missedName:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 643
    const v25, 0x7f0e039c

    .line 644
    .local v25, titleResId:I
    move-object/from16 v10, v22

    .line 652
    .local v10, expandedText:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 653
    .local v9, title:Ljava/lang/CharSequence;
    new-instance v3, Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x108007f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0e039f

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v22, v8, v12

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-wide/from16 v7, p4

    invoke-direct/range {v3 .. v11}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 664
    .local v3, note:Landroid/app/Notification;
    const-string v4, "NotificationMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-- mRejectCall = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/phone/NotificationMgr;->mRejectCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/phone/NotificationMgr;->mRejectCall:Z

    if-nez v4, :cond_2

    .line 668
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/phone/PhoneUtils;->setupFlashForMissedCall(Landroid/content/Context;Landroid/app/Notification;)V

    .line 671
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    iput v4, v3, Landroid/app/Notification;->number:I

    .line 672
    iget-object v4, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "lockscreen_title"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v4, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "lockscreen_text"

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v5, 0x1771

    invoke-virtual {v4, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 679
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x1771

    if-eqz v24, :cond_7

    move-object/from16 v19, p6

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    move/from16 v20, v0

    move-object/from16 v12, p0

    move-wide/from16 v13, p4

    move-object/from16 v16, v10

    move-object/from16 v21, p7

    invoke-direct/range {v12 .. v21}, Lcom/android/phone/NotificationMgr;->notifyHTCLockScreen(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 627
    .end local v3           #note:Landroid/app/Notification;
    .end local v9           #title:Ljava/lang/CharSequence;
    .end local v10           #expandedText:Ljava/lang/String;
    .end local v18           #missedName:Ljava/lang/String;
    .end local v22           #callName:Ljava/lang/String;
    .end local v25           #titleResId:I
    :cond_3
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 630
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/phone/NotificationMgr;->appendCityId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 631
    .restart local v22       #callName:Ljava/lang/String;
    const/16 v24, 0x1

    goto/16 :goto_1

    .line 635
    .end local v22           #callName:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0222

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    .restart local v22       #callName:Ljava/lang/String;
    goto/16 :goto_1

    :cond_5
    move-object/from16 v18, v22

    .line 637
    goto/16 :goto_2

    .line 646
    .restart local v18       #missedName:Ljava/lang/String;
    :cond_6
    const v25, 0x7f0e039d

    .line 647
    .restart local v25       #titleResId:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0e039e

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10       #expandedText:Ljava/lang/String;
    goto/16 :goto_3

    .line 679
    .restart local v3       #note:Landroid/app/Notification;
    .restart local v9       #title:Ljava/lang/CharSequence;
    :cond_7
    const-string v19, ""

    goto :goto_4
.end method

.method notifyMute()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 756
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    if-nez v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "mute"

    const v2, 0x1080076

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0472

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 759
    iput-boolean v6, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    .line 761
    invoke-direct {p0, v6}, Lcom/android/phone/NotificationMgr;->sendMuteBroadcast(Z)V

    .line 765
    :cond_0
    invoke-direct {p0, v6}, Lcom/android/phone/NotificationMgr;->notifyMuteStateChange(Z)V

    .line 766
    return-void
.end method

.method public notifyNewHTCLockScreen()V
    .locals 5

    .prologue
    .line 2353
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.phone.action.update_misscall_count"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2354
    .local v0, countIntent:Landroid/content/Intent;
    iget v1, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 2355
    .local v1, missedCallCount:I
    const-string v2, "misscall_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2356
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2357
    sget-boolean v2, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v2, :cond_0

    .line 2358
    const-string v2, "NotificationMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcast missed call count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    :cond_0
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/phone/notification/PhoneNotification;->updatePhoneShortcutWithMissedCall(Landroid/content/Context;I)V

    .line 2362
    return-void
.end method

.method notifyRejectMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "name"
    .parameter "number"
    .parameter "label"
    .parameter "date"
    .parameter "cityId"
    .parameter "photo"

    .prologue
    .line 690
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mRejectCall:Z

    .line 692
    invoke-virtual/range {p0 .. p7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 694
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mRejectCall:Z

    .line 695
    return-void
.end method

.method notifySpeakerphone()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 719
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    if-nez v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "speakerphone"

    const v2, 0x1080087

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0471

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 722
    iput-boolean v6, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    .line 725
    :cond_0
    invoke-direct {p0, v6}, Lcom/android/phone/NotificationMgr;->notifySpeakerStateChange(Z)V

    .line 726
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 1123
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_0

    .line 1124
    const-string v1, "CallerInfo query complete (for NotificationMgr), updating in-call notification.."

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1126
    :cond_0
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_1

    .line 1127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- cookie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1128
    :cond_1
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_2

    .line 1129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- ci: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1131
    :cond_2
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->SUPPORT_NOTIFICATION_END_CALL:Z

    if-eqz v1, :cond_6

    invoke-direct {p0, p2, p3}, Lcom/android/phone/NotificationMgr;->updateHtcIncallNotification(Ljava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    .line 1132
    .local v0, updated:Z
    :goto_0
    if-nez v0, :cond_5

    .line 1133
    if-ne p2, p0, :cond_7

    .line 1139
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_3

    .line 1140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- compactName is now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {p3, v2}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1145
    :cond_3
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_4

    .line 1146
    const-string v1, "- updating notification after query complete..."

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1147
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 1154
    :cond_5
    :goto_1
    return-void

    .line 1131
    .end local v0           #updated:Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 1149
    .restart local v0       #updated:Z
    :cond_7
    const-string v1, "NotificationMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQueryComplete: caller-id query from unknown source! cookie = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method pauseGlow()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 2114
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mCurrentGlowMode:I

    if-eq v2, v0, :cond_1

    .line 2115
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_1

    .line 2116
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    .line 2117
    const-string v0, "NotificationMgr"

    const-string v1, "pauseGlow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->glow(I)V

    .line 2122
    :cond_1
    return-void
.end method

.method postTransientNotification(ILjava/lang/CharSequence;)V
    .locals 2
    .parameter "notifyId"
    .parameter "msg"

    .prologue
    .line 1771
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1772
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1775
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    .line 1776
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1777
    return-void
.end method

.method removeStateListener(Lcom/android/phone/NotificationMgr$StateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStateListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1893
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStateListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1895
    :cond_0
    return-void
.end method

.method resumeGlow()V
    .locals 3

    .prologue
    .line 2130
    const/16 v0, 0x10

    iget v1, p0, Lcom/android/phone/NotificationMgr;->mCurrentGlowMode:I

    if-eq v0, v1, :cond_1

    .line 2131
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    .line 2132
    const-string v0, "NotificationMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeGlow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NotificationMgr;->mCurrentGlowMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    :cond_0
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mCurrentGlowMode:I

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->glow(I)V

    .line 2136
    :cond_1
    return-void
.end method

.method showCWDataConnected()V
    .locals 8

    .prologue
    const v7, 0x7f0200ba

    .line 1618
    const-string v4, "showCWDataConnected()..."

    invoke-direct {p0, v4}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1620
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1621
    .local v1, intent:Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.wifi.WifiSettings"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1623
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1632
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1634
    .local v3, pi:Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 1635
    .local v2, notification:Landroid/app/Notification;
    iput v7, v2, Landroid/app/Notification;->icon:I

    .line 1636
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x10900c9

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1638
    .local v0, contentView:Landroid/widget/RemoteViews;
    const v4, 0x1020006

    invoke-virtual {v0, v4, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1640
    const v4, 0x1020064

    const/16 v5, 0x8

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1641
    const v4, 0x1020016

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v6, 0x7f0e0196

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1643
    const v4, 0x1020046

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v6, 0x7f0e0197

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1645
    iput-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1646
    iput-object v3, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1647
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 1648
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1649
    return-void
.end method

.method showDataDisconnectedRoaming()V
    .locals 10

    .prologue
    .line 1566
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_0

    .line 1567
    const-string v1, "showDataDisconnectedRoaming()..."

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1569
    :cond_0
    new-instance v8, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1570
    .local v8, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.Settings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1572
    new-instance v0, Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x108008a

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0e02d2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v9, 0x7f0e02d5

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 1579
    .local v0, notification:Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1580
    return-void
.end method

.method showMobileDataConnected(Ljava/lang/String;)V
    .locals 9
    .parameter "apnName"

    .prologue
    .line 1593
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_0

    .line 1594
    const-string v1, "showMobileDataConnected()..."

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1596
    :cond_0
    new-instance v8, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1597
    .local v8, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.ApnSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1600
    new-instance v0, Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x7f0200b9

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0096

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 1607
    .local v0, notification:Landroid/app/Notification;
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1608
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1609
    return-void
.end method

.method showSmartDataRoamingConnected()V
    .locals 10

    .prologue
    .line 1655
    new-instance v8, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v2, Landroid/provider/Settings;

    invoke-direct {v8, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1657
    .local v8, intent:Landroid/content/Intent;
    new-instance v0, Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x108008a

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0096

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v9, 0x7f0e0097

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 1662
    .local v0, notification:Landroid/app/Notification;
    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1663
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1664
    return-void
.end method

.method showSmartDataRoamingNoNetwork()V
    .locals 10

    .prologue
    .line 1677
    new-instance v8, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v2, Landroid/provider/Settings;

    invoke-direct {v8, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1679
    .local v8, intent:Landroid/content/Intent;
    new-instance v0, Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x108008a

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0098

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v9, 0x7f0e0099

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 1684
    .local v0, notification:Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1685
    return-void
.end method

.method updateCfi(Z)V
    .locals 16
    .parameter "visible"

    .prologue
    .line 1469
    sget-boolean v12, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v12, :cond_0

    .line 1470
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateCfi(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1471
    :cond_0
    if-eqz p1, :cond_2

    .line 1484
    const/4 v9, 0x1

    .line 1486
    .local v9, showExpandedNotification:Z
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1487
    .local v5, intent:Landroid/content/Intent;
    const/high16 v12, 0x1000

    invoke-virtual {v5, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1488
    const-string v12, "com.android.phone"

    const-string v13, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1492
    new-instance v6, Landroid/app/Notification;

    const v12, 0x7f0200be

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    invoke-direct {v6, v12, v13, v14, v15}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1497
    .local v6, notification:Landroid/app/Notification;
    new-instance v12, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f030058

    invoke-direct {v12, v13, v14}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v12, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1499
    iget-object v12, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v13, 0x1020006

    const v14, 0x1080085

    invoke-virtual {v12, v13, v14}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1501
    iget-object v12, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v13, 0x7f080051

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e0293

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1503
    iget-object v12, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v13, 0x7f08014d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e0296

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1505
    iget-object v12, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v13, 0x7f080114

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e00b2

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1508
    :try_start_0
    const-string v12, "phone"

    invoke-static {v12}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    .line 1510
    .local v8, phoneInterface:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v8}, Lcom/android/internal/telephony/ITelephony;->getCFUNumber()Ljava/lang/String;

    move-result-object v4

    .line 1511
    .local v4, cfuNumberString:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_1

    .line 1513
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/phone/PhoneUtils;->updatePhoneNumber(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1515
    const/4 v12, 0x1

    new-array v3, v12, [Ljava/lang/CharSequence;

    .line 1516
    .local v3, cfuNumber:[Ljava/lang/CharSequence;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v3, v12

    .line 1517
    const/4 v12, 0x1

    new-array v1, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "{0}"

    aput-object v13, v1, v12

    .line 1518
    .local v1, SRC_TAGS:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e00b1

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1520
    .local v10, template:Ljava/lang/CharSequence;
    invoke-static {v10, v1, v3}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1521
    .local v11, text:Ljava/lang/CharSequence;
    iget-object v12, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v13, 0x7f08014d

    invoke-virtual {v12, v13, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1525
    .end local v1           #SRC_TAGS:[Ljava/lang/String;
    .end local v3           #cfuNumber:[Ljava/lang/CharSequence;
    .end local v4           #cfuNumberString:Ljava/lang/String;
    .end local v8           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    .end local v10           #template:Ljava/lang/CharSequence;
    .end local v11           #text:Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v5, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    iput-object v12, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1527
    new-instance v12, Landroid/app/NotificationButtonAction;

    invoke-direct {v12}, Landroid/app/NotificationButtonAction;-><init>()V

    iput-object v12, v6, Landroid/app/Notification;->buttonAction:Landroid/app/NotificationButtonAction;

    .line 1528
    new-instance v2, Landroid/content/Intent;

    const-string v12, "com.htc.phone.callforwarding"

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1529
    .local v2, bi:Landroid/content/Intent;
    const-string v12, "ACTION"

    const/4 v13, 0x4

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1532
    const-string v12, "ENABLE"

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1533
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v2, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 1534
    .local v7, pbi:Landroid/app/PendingIntent;
    iget-object v12, v6, Landroid/app/Notification;->buttonAction:Landroid/app/NotificationButtonAction;

    const v13, 0x7f080114

    invoke-virtual {v12, v13, v7}, Landroid/app/NotificationButtonAction;->add(ILandroid/app/PendingIntent;)Z

    .line 1553
    iget v12, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v12, v12, 0x2

    iput v12, v6, Landroid/app/Notification;->flags:I

    .line 1555
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v13, 0x6

    invoke-virtual {v12, v13, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1559
    .end local v2           #bi:Landroid/content/Intent;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #notification:Landroid/app/Notification;
    .end local v7           #pbi:Landroid/app/PendingIntent;
    .end local v9           #showExpandedNotification:Z
    :goto_1
    return-void

    .line 1557
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v13, 0x6

    invoke-virtual {v12, v13}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1

    .line 1523
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v6       #notification:Landroid/app/Notification;
    .restart local v9       #showExpandedNotification:Z
    :catch_0
    move-exception v12

    goto :goto_0
.end method

.method updateInCallNotification()V
    .locals 3

    .prologue
    .line 802
    sget-boolean v2, Lcom/android/phone/util/VoiceRecorderHelper;->IS_INCALL_RECORDING_ENABLE:Z

    if-eqz v2, :cond_1

    .line 803
    const/4 v1, 0x0

    .line 804
    .local v1, isRecording:Z
    invoke-static {}, Lcom/android/phone/util/VoiceRecorderHelper;->getInstance()Lcom/android/phone/util/VoiceRecorderHelper;

    move-result-object v0

    .line 805
    .local v0, helper:Lcom/android/phone/util/VoiceRecorderHelper;
    if-eqz v0, :cond_0

    .line 806
    invoke-virtual {v0}, Lcom/android/phone/util/VoiceRecorderHelper;->isRecording()Z

    move-result v1

    .line 808
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/phone/NotificationMgr;->updateInCallNotification(Z)V

    .line 812
    .end local v0           #helper:Lcom/android/phone/util/VoiceRecorderHelper;
    .end local v1           #isRecording:Z
    :goto_0
    return-void

    .line 810
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/phone/NotificationMgr;->updateInCallNotification(Z)V

    goto :goto_0
.end method

.method public updateInCallNotification(Z)V
    .locals 26
    .parameter "isRecording"

    .prologue
    .line 820
    sget-boolean v3, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v3, :cond_1

    .line 821
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "- non-voice-capable device; suppressing notification."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1116
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v3, :cond_2

    .line 827
    const-string v3, "updateInCallNotification()..."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 829
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v7, :cond_3

    .line 830
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    goto :goto_0

    .line 834
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v20

    .line 836
    .local v20, hasRingingCall:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v18

    .line 837
    .local v18, hasActiveCall:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v19

    .line 842
    .local v19, hasHoldingCall:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->getVoicePrivacyState()Z

    move-result v15

    .line 843
    .local v15, enhancedVoicePrivacy:Z
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v3, :cond_4

    .line 844
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateInCallNotification: enhancedVoicePrivacy = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 849
    :cond_4
    if-nez v18, :cond_11

    if-eqz v19, :cond_11

    .line 852
    if-eqz v15, :cond_10

    .line 853
    const v23, 0x7f0200c4

    .line 878
    .local v23, resId:I
    :goto_1
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v3, :cond_5

    .line 879
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- Updating status bar icon: resId = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 880
    :cond_5
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    .line 883
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    move/from16 v16, v0

    .line 897
    .local v16, expandedViewIcon:I
    if-eqz v18, :cond_15

    .line 899
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    .line 903
    .local v13, currentCall:Lcom/android/internal/telephony/Call;
    :goto_2
    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v14

    .line 905
    .local v14, currentConn:Lcom/android/internal/telephony/Connection;
    new-instance v22, Landroid/app/Notification;

    invoke-direct/range {v22 .. v22}, Landroid/app/Notification;-><init>()V

    .line 906
    .local v22, notification:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    move-object/from16 v0, v22

    iput v3, v0, Landroid/app/Notification;->icon:I

    .line 907
    move-object/from16 v0, v22

    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v22

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 914
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v3, v7, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v21

    .line 916
    .local v21, inCallPendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 926
    const/4 v2, 0x0

    .line 927
    .local v2, contentView:Landroid/widget/RemoteViews;
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->SUPPORT_INCALL_TOP_EVENT:Z

    if-eqz v3, :cond_16

    .line 928
    new-instance v2, Landroid/widget/RemoteViews;

    .end local v2           #contentView:Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f030046

    invoke-direct {v2, v3, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 939
    .restart local v2       #contentView:Landroid/widget/RemoteViews;
    :goto_3
    const v3, 0x7f0800b1

    move/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 944
    const-wide/16 v10, 0x0

    .line 948
    .local v10, chronometerBaseTimeResult:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-static {v3, v13, v0, v2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v12

    .line 951
    .local v12, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->SUPPORT_NOTIFICATION_END_CALL:Z

    if-eqz v3, :cond_6

    .line 952
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/android/phone/NotificationMgr;->updateContactPhoto(Lcom/android/phone/PhoneUtils$CallerInfoToken;Landroid/widget/RemoteViews;)V

    .line 959
    :cond_6
    if-eqz v14, :cond_1b

    .line 969
    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v8

    .line 970
    .local v8, callDurationMsec:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    sub-long v4, v24, v8

    .line 971
    .local v4, chronometerBaseTime:J
    move-wide v10, v4

    .line 984
    if-eqz v19, :cond_18

    if-nez v18, :cond_18

    .line 988
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0e03a1

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1007
    .local v6, expandedViewLine1:Ljava/lang/String;
    :goto_4
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v3, :cond_7

    .line 1008
    const-string v3, "- Updating expanded view: line 1 \'xxxxxxx\'"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1015
    :cond_7
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->SUPPORT_NOTIFICATION_END_CALL:Z

    if-eqz v3, :cond_1a

    .line 1016
    const v3, 0x7f080110

    invoke-virtual {v2, v3, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1032
    .end local v4           #chronometerBaseTime:J
    .end local v6           #expandedViewLine1:Ljava/lang/String;
    .end local v8           #callDurationMsec:J
    :cond_8
    :goto_5
    const-string v17, ""

    .line 1037
    .local v17, expandedViewLine2:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1039
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0395

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1055
    :goto_6
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v3, :cond_9

    .line 1056
    const-string v3, "- Updating expanded view: line 2 \'xxxxxxx\'"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1058
    :cond_9
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->SUPPORT_NOTIFICATION_END_CALL:Z

    if-eqz v3, :cond_1d

    if-eqz v18, :cond_1d

    .line 1059
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10, v11}, Lcom/android/phone/NotificationMgr;->updateHtcNotificationLine2(Landroid/widget/RemoteViews;J)V

    .line 1064
    :goto_7
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->SUPPORT_NOTIFICATION_END_CALL:Z

    if-eqz v3, :cond_a

    .line 1065
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v2, v1}, Lcom/android/phone/NotificationMgr;->setupInCallNotificationEndCall(Landroid/widget/RemoteViews;Landroid/app/Notification;)V

    .line 1068
    :cond_a
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->SUPPORT_INCALL_LEFT_STATUS:Z

    if-eqz v3, :cond_b

    if-eqz v18, :cond_b

    .line 1071
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v7, :cond_b

    .line 1072
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "chronometer_basetime"

    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v3, v7, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1078
    :cond_b
    move-object/from16 v0, v22

    iput-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1088
    if-eqz v20, :cond_e

    .line 1089
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v3, :cond_c

    const-string v3, "- Using hi-pri notification for ringing call!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1093
    :cond_c
    move-object/from16 v0, v22

    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v3, v3, 0x80

    move-object/from16 v0, v22

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 1100
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- Setting fullScreenIntent: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1101
    :cond_d
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 1102
    sget-boolean v3, Lcom/android/phone/util/BuildUtils$CharmIndicator;->ENABLED:Z

    if-eqz v3, :cond_e

    .line 1103
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v7, 0x6

    move-object/from16 v0, v22

    invoke-static {v3, v0, v7}, Lcom/android/phone/PhoneUtils;->flashCharmIndicator(Landroid/content/Context;Landroid/app/Notification;I)V

    .line 1107
    :cond_e
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v3, :cond_f

    .line 1108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying IN_CALL_NOTIFICATION: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1109
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v7, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v3, v7, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1114
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->updateSpeakerNotification()V

    .line 1115
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->updateMuteNotification()V

    goto/16 :goto_0

    .line 855
    .end local v2           #contentView:Landroid/widget/RemoteViews;
    .end local v10           #chronometerBaseTimeResult:J
    .end local v12           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v13           #currentCall:Lcom/android/internal/telephony/Call;
    .end local v14           #currentConn:Lcom/android/internal/telephony/Connection;
    .end local v16           #expandedViewIcon:I
    .end local v17           #expandedViewLine2:Ljava/lang/String;
    .end local v21           #inCallPendingIntent:Landroid/app/PendingIntent;
    .end local v22           #notification:Landroid/app/Notification;
    .end local v23           #resId:I
    :cond_10
    const v23, 0x7f0200bf

    .restart local v23       #resId:I
    goto/16 :goto_1

    .line 857
    .end local v23           #resId:I
    :cond_11
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 859
    if-eqz v15, :cond_12

    .line 860
    const v23, 0x7f0200c3

    .restart local v23       #resId:I
    goto/16 :goto_1

    .line 862
    .end local v23           #resId:I
    :cond_12
    const v23, 0x7f0200bc

    .restart local v23       #resId:I
    goto/16 :goto_1

    .line 865
    .end local v23           #resId:I
    :cond_13
    if-eqz v15, :cond_14

    .line 866
    const v23, 0x7f0200c2

    .restart local v23       #resId:I
    goto/16 :goto_1

    .line 868
    .end local v23           #resId:I
    :cond_14
    const v23, 0x7f0200bb

    .restart local v23       #resId:I
    goto/16 :goto_1

    .line 901
    .restart local v16       #expandedViewIcon:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    .restart local v13       #currentCall:Lcom/android/internal/telephony/Call;
    goto/16 :goto_2

    .line 930
    .restart local v2       #contentView:Landroid/widget/RemoteViews;
    .restart local v14       #currentConn:Lcom/android/internal/telephony/Connection;
    .restart local v21       #inCallPendingIntent:Landroid/app/PendingIntent;
    .restart local v22       #notification:Landroid/app/Notification;
    :cond_16
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->SUPPORT_NOTIFICATION_END_CALL:Z

    if-eqz v3, :cond_17

    .line 931
    new-instance v2, Landroid/widget/RemoteViews;

    .end local v2           #contentView:Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f030045

    invoke-direct {v2, v3, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v2       #contentView:Landroid/widget/RemoteViews;
    goto/16 :goto_3

    .line 934
    :cond_17
    new-instance v2, Landroid/widget/RemoteViews;

    .end local v2           #contentView:Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f030044

    invoke-direct {v2, v3, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v2       #contentView:Landroid/widget/RemoteViews;
    goto/16 :goto_3

    .line 993
    .restart local v4       #chronometerBaseTime:J
    .restart local v8       #callDurationMsec:J
    .restart local v10       #chronometerBaseTimeResult:J
    .restart local v12       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_18
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->SUPPORT_NOTIFICATION_END_CALL:Z

    if-eqz v3, :cond_19

    .line 997
    iget-object v3, v12, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #expandedViewLine1:Ljava/lang/String;
    goto/16 :goto_4

    .line 1001
    .end local v6           #expandedViewLine1:Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0e03a0

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #expandedViewLine1:Ljava/lang/String;
    goto/16 :goto_4

    .line 1019
    :cond_1a
    const v3, 0x7f080110

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    goto/16 :goto_5

    .line 1023
    .end local v4           #chronometerBaseTime:J
    .end local v6           #expandedViewLine1:Ljava/lang/String;
    .end local v8           #callDurationMsec:J
    :cond_1b
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v3, :cond_8

    .line 1024
    const-string v3, "NotificationMgr"

    const-string v7, "updateInCallNotification: null connection, can\'t set exp view line 1."

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1047
    .restart local v17       #expandedViewLine2:Ljava/lang/String;
    :cond_1c
    iget-object v3, v12, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_6

    .line 1061
    :cond_1d
    const v3, 0x7f080111

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_7
.end method

.method updateMuteNotification()V
    .locals 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 786
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    .line 787
    const-string v0, "updateMuteNotification: MUTED"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 788
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->notifyMute()V

    .line 794
    :goto_0
    return-void

    .line 790
    :cond_1
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_2

    .line 791
    const-string v0, "updateMuteNotification: not muted (or not offhook)"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 792
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    goto :goto_0
.end method

.method updateMwi(I)V
    .locals 16
    .parameter "count"

    .prologue
    .line 1216
    sget-boolean v12, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v12, :cond_0

    .line 1217
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateMwi(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1219
    :cond_0
    if-eqz p1, :cond_17

    .line 1221
    const v8, 0x108007e

    .line 1234
    .local v8, resId:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v13, 0x7f0e03a3

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1238
    .local v4, notificationString:Ljava/lang/String;
    if-ltz p1, :cond_1

    const/16 v12, 0xff

    move/from16 v0, p1

    if-ne v0, v12, :cond_6

    :cond_1
    const-string v12, "VIRGI001"

    const-string v13, "ro.cid"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1242
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v13, 0x7f0e00dc

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1255
    .local v6, notificationTitle:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v11

    .line 1256
    .local v11, vmNumber:Ljava/lang/String;
    sget-boolean v12, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v12, :cond_2

    .line 1257
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "- got vm number: \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1274
    :cond_2
    if-nez v11, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v12

    if-nez v12, :cond_a

    .line 1275
    sget-boolean v12, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v12, :cond_3

    .line 1276
    const-string v12, "- Null vm number: SIM records not loaded (yet)..."

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1289
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    add-int/lit8 v13, v12, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    if-lez v12, :cond_9

    .line 1290
    sget-boolean v12, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v12, :cond_4

    .line 1291
    const-string v12, "  - Retrying in 10000 msec..."

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1292
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v12

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    const-wide/16 v13, 0x2710

    invoke-virtual {v12, v13, v14}, Lcom/android/phone/CallNotifier;->sendMwiChangedDelayed(J)V

    .line 1428
    .end local v4           #notificationString:Ljava/lang/String;
    .end local v6           #notificationTitle:Ljava/lang/String;
    .end local v8           #resId:I
    .end local v11           #vmNumber:Ljava/lang/String;
    :cond_5
    :goto_1
    return-void

    .line 1244
    .restart local v4       #notificationString:Ljava/lang/String;
    .restart local v8       #resId:I
    :cond_6
    if-gez p1, :cond_8

    .line 1245
    const-string v12, "HTC__001"

    const-string v13, "ro.cid"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1246
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v13, 0x7f0e00dc

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #notificationTitle:Ljava/lang/String;
    goto :goto_0

    .line 1249
    .end local v6           #notificationTitle:Ljava/lang/String;
    :cond_7
    move-object v6, v4

    .restart local v6       #notificationTitle:Ljava/lang/String;
    goto/16 :goto_0

    .line 1251
    .end local v6           #notificationTitle:Ljava/lang/String;
    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #notificationTitle:Ljava/lang/String;
    goto/16 :goto_0

    .line 1296
    .restart local v11       #vmNumber:Ljava/lang/String;
    :cond_9
    const-string v12, "NotificationMgr"

    const-string v13, "NotificationMgr.updateMwi: getVoiceMailNumber() failed after 5 retries; giving up."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v12}, Lcom/android/phone/TelephonyCapabilities;->supportsVoiceMessageCount(Lcom/android/internal/telephony/Phone;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1304
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v10

    .line 1305
    .local v10, vmCount:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v13, 0x7f0e03a4

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1307
    .local v9, titleFormat:Ljava/lang/String;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v9, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1311
    .end local v9           #titleFormat:Ljava/lang/String;
    .end local v10           #vmCount:I
    :cond_b
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 1312
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v13, 0x7f0e03a6

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1319
    .local v5, notificationText:Ljava/lang/String;
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v12, "android.intent.action.CALL"

    const-string v13, "voicemail"

    const-string v14, ""

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v1, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1320
    .local v1, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v1, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 1322
    .local v7, pendingIntent:Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification;

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-direct {v3, v8, v12, v13, v14}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1328
    .local v3, notification:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12, v6, v5, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1333
    iget v12, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v12, v12, 0x1

    iput v12, v3, Landroid/app/Notification;->defaults:I

    .line 1334
    iget v12, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v12, v12, 0x20

    iput v12, v3, Landroid/app/Notification;->flags:I

    .line 1336
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/htc/util/settings/NotificationFlashLightUtility;->getVoiceMail(Landroid/content/Context;)Z

    move-result v2

    .line 1337
    .local v2, needFlash:Z
    if-eqz v2, :cond_c

    .line 1338
    sget-boolean v12, Lcom/android/phone/PhoneUtils;->SUPPORT_JOGBALL:Z

    if-eqz v12, :cond_11

    .line 1339
    iget v12, v3, Landroid/app/Notification;->flags:I

    const/high16 v13, 0x1

    or-int/2addr v12, v13

    iput v12, v3, Landroid/app/Notification;->flags:I

    .line 1340
    const/4 v12, 0x7

    iput v12, v3, Landroid/app/Notification;->jogMode:I

    .line 1353
    :cond_c
    :goto_3
    const/4 v12, -0x1

    move/from16 v0, p1

    if-eq v0, v12, :cond_d

    .line 1354
    move/from16 v0, p1

    iput v0, v3, Landroid/app/Notification;->number:I

    .line 1356
    :cond_d
    iget-object v12, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "lockscreen_title"

    invoke-virtual {v12, v13, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    iget-object v13, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v14, "lockscreen_text"

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_12

    const-string v12, ""

    :goto_4
    invoke-virtual {v13, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    sget-boolean v12, Lcom/android/phone/NotificationMgr;->SUPPORT_MWI_VIBRATION:Z

    if-eqz v12, :cond_e

    .line 1365
    const-string v12, "Support MWI with vibration"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1366
    iget v12, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v12, v12, 0x2

    iput v12, v3, Landroid/app/Notification;->defaults:I

    .line 1368
    :cond_e
    sget-boolean v12, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v12, :cond_f

    .line 1369
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "project flag: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", lan falg "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1375
    :cond_f
    sget-boolean v12, Lcom/android/phone/VvmBroadcastReceiver;->mIsSupportToggleMwi:Z

    if-eqz v12, :cond_15

    .line 1379
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->getVVMEnabled()Z

    move-result v12

    if-eqz v12, :cond_13

    .line 1380
    sget-boolean v12, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v12, :cond_5

    .line 1381
    const-string v12, "VVM is enabled, don\'t show notification"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1314
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #needFlash:Z
    .end local v3           #notification:Landroid/app/Notification;
    .end local v5           #notificationText:Ljava/lang/String;
    .end local v7           #pendingIntent:Landroid/app/PendingIntent;
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v13, 0x7f0e03a5

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #notificationText:Ljava/lang/String;
    goto/16 :goto_2

    .line 1343
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #needFlash:Z
    .restart local v3       #notification:Landroid/app/Notification;
    .restart local v7       #pendingIntent:Landroid/app/PendingIntent;
    :cond_11
    iget v12, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v12, v12, 0x1

    iput v12, v3, Landroid/app/Notification;->flags:I

    .line 1344
    const v12, -0xff0100

    iput v12, v3, Landroid/app/Notification;->ledARGB:I

    .line 1345
    const/16 v12, 0x1f4

    iput v12, v3, Landroid/app/Notification;->ledOnMS:I

    .line 1346
    const/16 v12, 0x7d0

    iput v12, v3, Landroid/app/Notification;->ledOffMS:I

    goto/16 :goto_3

    :cond_12
    move-object v12, v5

    .line 1358
    goto/16 :goto_4

    .line 1386
    :cond_13
    sget-object v13, Lcom/android/phone/VvmBroadcastReceiver;->mSyncObj:Ljava/lang/Object;

    monitor-enter v13

    .line 1387
    :try_start_0
    invoke-static {v3}, Lcom/android/phone/VvmBroadcastReceiver;->SetMwiNotification(Landroid/app/Notification;)V

    .line 1388
    invoke-static {}, Lcom/android/phone/VvmBroadcastReceiver;->IsVvmOn()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 1389
    const-string v12, "If VVM is on, Do not show MWI notification"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1390
    monitor-exit v13

    goto/16 :goto_1

    .line 1399
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 1393
    :cond_14
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v14, 0x5

    invoke-virtual {v12, v14, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1394
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6, v5}, Lcom/android/phone/NotificationMgr;->setLSNotification(ILjava/lang/String;Ljava/lang/String;)V

    .line 1398
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 1403
    :cond_15
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x94

    if-ne v12, v13, :cond_16

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x94

    if-ne v12, v13, :cond_5

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v13, 0x21

    if-ne v12, v13, :cond_5

    .line 1405
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v13, 0x5

    invoke-virtual {v12, v13, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1406
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6, v5}, Lcom/android/phone/NotificationMgr;->setLSNotification(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1412
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #needFlash:Z
    .end local v3           #notification:Landroid/app/Notification;
    .end local v4           #notificationString:Ljava/lang/String;
    .end local v5           #notificationText:Ljava/lang/String;
    .end local v6           #notificationTitle:Ljava/lang/String;
    .end local v7           #pendingIntent:Landroid/app/PendingIntent;
    .end local v8           #resId:I
    .end local v11           #vmNumber:Ljava/lang/String;
    :cond_17
    sget-boolean v12, Lcom/android/phone/VvmBroadcastReceiver;->mIsSupportToggleMwi:Z

    if-eqz v12, :cond_18

    .line 1413
    sget-object v13, Lcom/android/phone/VvmBroadcastReceiver;->mSyncObj:Ljava/lang/Object;

    monitor-enter v13

    .line 1414
    const/4 v12, 0x0

    :try_start_2
    invoke-static {v12}, Lcom/android/phone/VvmBroadcastReceiver;->SetMwiNotification(Landroid/app/Notification;)V

    .line 1415
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v14, 0x5

    invoke-virtual {v12, v14}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1416
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->cancelLSNotification()V

    .line 1417
    monitor-exit v13

    goto/16 :goto_1

    .line 1418
    :catchall_1
    move-exception v12

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v12

    .line 1422
    :cond_18
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x94

    if-ne v12, v13, :cond_19

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x94

    if-ne v12, v13, :cond_5

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v13, 0x21

    if-ne v12, v13, :cond_5

    .line 1424
    :cond_19
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1425
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->cancelLSNotification()V

    goto/16 :goto_1
.end method

.method updateNetworkSelection(I)V
    .locals 5
    .parameter "serviceState"

    .prologue
    const/4 v4, 0x1

    .line 1741
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/TelephonyCapabilities;->supportsNetworkSelection(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1745
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1746
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "network_selection_name_key"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1747
    .local v0, networkSelection:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1748
    const-string v2, "network_selection_key"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1751
    :cond_0
    sget-boolean v2, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v2, :cond_1

    .line 1752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNetworkSelection()...state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1755
    :cond_1
    if-ne p1, v4, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1757
    iget-boolean v2, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    if-nez v2, :cond_2

    .line 1758
    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->showNetworkSelection(Ljava/lang/String;)V

    .line 1759
    iput-boolean v4, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    .line 1768
    .end local v0           #networkSelection:Ljava/lang/String;
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_2
    :goto_0
    return-void

    .line 1762
    .restart local v0       #networkSelection:Ljava/lang/String;
    .restart local v1       #sp:Landroid/content/SharedPreferences;
    :cond_3
    iget-boolean v2, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    if-eqz v2, :cond_2

    .line 1763
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelNetworkSelection()V

    .line 1764
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    goto :goto_0
.end method

.method updateNotificationsAtStartup()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 337
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    .line 338
    const-string v0, "updateNotificationsAtStartup()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 341
    :cond_0
    new-instance v0, Lcom/android/phone/NotificationMgr$QueryHandler;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NotificationMgr$QueryHandler;-><init>(Lcom/android/phone/NotificationMgr;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    .line 344
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    .local v8, where:Ljava/lang/StringBuilder;
    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 346
    const-string v0, " AND new=1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    const/4 v1, -0x1

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_PHOTO:Landroid/net/Uri;

    sget-object v4, Lcom/android/phone/NotificationMgr;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "date DESC"

    move-object v6, v2


    .line 354
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_2

    .line 355
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_1

    .line 356
    const-string v0, "Phone is idle, canceling notification."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 357
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    .line 364
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 369
    return-void

    .line 359
    :cond_2
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_3

    .line 360
    const-string v0, "Phone is offhook, updating notification."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 361
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto :goto_0
.end method

.method updateSpeakerNotification()V
    .locals 3

    .prologue
    .line 742
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 744
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 745
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_0

    .line 746
    const-string v1, "updateSpeakerNotification: speaker ON"

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 747
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->notifySpeakerphone()V

    .line 753
    :goto_0
    return-void

    .line 749
    :cond_1
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_2

    .line 750
    const-string v1, "updateSpeakerNotification: speaker OFF (or not offhook)"

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 751
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    goto :goto_0
.end method
