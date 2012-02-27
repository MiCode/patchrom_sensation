.class Lcom/android/phone/WorldPhoneModeSelection;
.super Landroid/os/Handler;
.source "WorldPhoneModeSelection.java"


# static fields
.field private static final EV_GET_HTC_SIM_TYPES:I = 0x518

.field private static final EV_GET_SIM_TYPES:I = 0x517

.field private static final EV_NETWORK_STATE_CHANGED:I = 0x516

.field private static final EV_PHONE_DISCONNECT:I = 0x519

.field private static final EV_PHONE_MODE_CHANGED:I = 0x515

.field private static final PREFS_MODE:Ljava/lang/String; = "telephony.WorldPhoneController.mode"

.field private static final PREFS_SIM:Ljava/lang/String; = "telephony.WorldPhoneController.sim"

.field private static final SCAN_NETWORK:Ljava/lang/String; = "persist.ril.scan.network_type"

.field private static final TAG:Ljava/lang/String; = "WorldPhoneModeSelection"

.field private static final WM_SET_PREFERRED_NETWORK_TYPE:I = 0x51a

.field private static mHtcSimType:I

.field private static mSimType:I

.field private static mbSimActive:Z

.field private static sMe:Lcom/android/phone/WorldPhoneModeSelection;

.field static timer:Ljava/util/Timer;


# instance fields
.field private INTENT_OF_UPDATE_PREFERRED_NETWORK_TYPE:Ljava/lang/String;

.field private mIccState:Lcom/android/internal/telephony/IccCard$State;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNeedtoCheck:Z

.field private mNeedtoCheckLocked:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mbForbidModeSelection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 53
    sput-object v2, Lcom/android/phone/WorldPhoneModeSelection;->sMe:Lcom/android/phone/WorldPhoneModeSelection;

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/WorldPhoneModeSelection;->mbSimActive:Z

    .line 59
    sput v1, Lcom/android/phone/WorldPhoneModeSelection;->mSimType:I

    .line 60
    sput v1, Lcom/android/phone/WorldPhoneModeSelection;->mHtcSimType:I

    .line 385
    sput-object v2, Lcom/android/phone/WorldPhoneModeSelection;->timer:Ljava/util/Timer;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .parameter "phone"

    .prologue
    const/4 v4, 0x1

    .line 146
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 55
    iput-boolean v4, p0, Lcom/android/phone/WorldPhoneModeSelection;->mNeedtoCheck:Z

    .line 56
    iput-boolean v4, p0, Lcom/android/phone/WorldPhoneModeSelection;->mNeedtoCheckLocked:Z

    .line 61
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/WorldPhoneModeSelection;->mbForbidModeSelection:Z

    .line 64
    new-instance v1, Lcom/android/phone/WorldPhoneModeSelection$1;

    invoke-direct {v1, p0}, Lcom/android/phone/WorldPhoneModeSelection$1;-><init>(Lcom/android/phone/WorldPhoneModeSelection;)V

    iput-object v1, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 313
    const-string v1, "htc.android.action.UPDATE_PREFERRED_NETWORK_TYPE"

    iput-object v1, p0, Lcom/android/phone/WorldPhoneModeSelection;->INTENT_OF_UPDATE_PREFERRED_NETWORK_TYPE:Ljava/lang/String;

    .line 147
    const-string v1, "WorldPhoneModeSelection"

    const-string v2, "WorldPhoneModeSelection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iput-object p1, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 150
    iget-object v1, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x515

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPhoneModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 152
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v1, "com.android.internal.policy.CANCEL_UNLOCK_PIN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v1, "com.android.phone.emergencycall"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    iput-boolean v4, p0, Lcom/android/phone/WorldPhoneModeSelection;->mNeedtoCheckLocked:Z

    .line 160
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/WorldPhoneModeSelection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mbForbidModeSelection:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/WorldPhoneModeSelection;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/phone/WorldPhoneModeSelection;->mbForbidModeSelection:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/phone/WorldPhoneModeSelection;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/phone/WorldPhoneModeSelection;->mNeedtoCheckLocked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/WorldPhoneModeSelection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    sput-boolean p0, Lcom/android/phone/WorldPhoneModeSelection;->mbSimActive:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/phone/WorldPhoneModeSelection;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastSimMode(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/WorldPhoneModeSelection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/phone/WorldPhoneModeSelection;->checkNoService()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/WorldPhoneModeSelection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/phone/WorldPhoneModeSelection;->getLastUserMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/WorldPhoneModeSelection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mNeedtoCheck:Z

    return v0
.end method

.method private checkNoService()V
    .locals 11

    .prologue
    const-wide/16 v2, 0x7530

    const/16 v10, 0xa

    const/4 v9, 0x7

    .line 388
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    .line 389
    .local v7, sState:I
    const-string v0, "WorldPhoneModeSelection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkNoService, ServiceState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    if-nez v7, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/WarningAlertActivity;->dismiss(Landroid/content/Context;)V

    .line 395
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/WorldPhoneModeSelection;->getLastUserMode()I

    move-result v6

    .line 396
    .local v6, lastUserMode:I
    if-eq v6, v9, :cond_1

    if-ne v6, v10, :cond_3

    :cond_1
    sget-object v0, Lcom/android/phone/WorldPhoneModeSelection;->timer:Ljava/util/Timer;

    if-nez v0, :cond_3

    .line 400
    const-string v0, "WorldPhoneModeSelection"

    const-string v2, "GLOBAL mode, don\'t need to check no service"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_2
    :goto_0
    return-void

    .line 405
    :cond_3
    sget v0, Lcom/android/phone/WorldPhoneModeSelection;->mSimType:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_5

    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v0, :cond_5

    .line 407
    const/4 v8, 0x0

    .line 421
    .local v8, takeNote:Z
    :goto_1
    if-eqz v8, :cond_7

    iget-boolean v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mNeedtoCheck:Z

    if-eqz v0, :cond_7

    if-eq v6, v9, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/WorldPhoneModeSelection;->isSimActive()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eq v6, v10, :cond_7

    .line 424
    const-string v0, "WorldPhoneModeSelection"

    const-string v4, "takeNote = true"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    sget-object v0, Lcom/android/phone/WorldPhoneModeSelection;->timer:Ljava/util/Timer;

    if-nez v0, :cond_4

    .line 428
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/android/phone/WorldPhoneModeSelection;->timer:Ljava/util/Timer;

    .line 431
    :cond_4
    new-instance v1, Lcom/android/phone/WorldPhoneModeSelection$2;

    invoke-direct {v1, p0}, Lcom/android/phone/WorldPhoneModeSelection$2;-><init>(Lcom/android/phone/WorldPhoneModeSelection;)V

    .line 455
    .local v1, task:Ljava/util/TimerTask;
    sget-object v0, Lcom/android/phone/WorldPhoneModeSelection;->timer:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 409
    .end local v1           #task:Ljava/util/TimerTask;
    .end local v8           #takeNote:Z
    :cond_5
    const/4 v0, 0x1

    if-ne v7, v0, :cond_6

    .line 411
    sget-object v0, Lcom/android/phone/WorldPhoneModeSelection;->timer:Ljava/util/Timer;

    if-nez v0, :cond_2

    .line 415
    const/4 v8, 0x1

    .restart local v8       #takeNote:Z
    goto :goto_1

    .line 419
    .end local v8           #takeNote:Z
    :cond_6
    const/4 v8, 0x0

    .restart local v8       #takeNote:Z
    goto :goto_1

    .line 459
    :cond_7
    sget-object v0, Lcom/android/phone/WorldPhoneModeSelection;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 461
    const-string v0, "WorldPhoneModeSelection"

    const-string v2, "timer.cancel"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    sget-object v0, Lcom/android/phone/WorldPhoneModeSelection;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 463
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/WorldPhoneModeSelection;->timer:Ljava/util/Timer;

    goto :goto_0
.end method

.method private doAction()V
    .locals 12

    .prologue
    const v11, 0x7f0e0167

    const v6, 0x7f0e015f

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 602
    invoke-direct {p0}, Lcom/android/phone/WorldPhoneModeSelection;->isLastSimActive()Z

    move-result v8

    .line 603
    .local v8, hasSIMLast:Z
    invoke-virtual {p0}, Lcom/android/phone/WorldPhoneModeSelection;->isSimActive()Z

    move-result v7

    .line 604
    .local v7, hasSIM:Z
    invoke-direct {p0, v7}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastSimMode(Z)V

    .line 606
    invoke-direct {p0}, Lcom/android/phone/WorldPhoneModeSelection;->getLastUserMode()I

    move-result v9

    .line 607
    .local v9, lastUserMode:I
    const-string v0, "WorldPhoneModeSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LastUserMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    if-nez v7, :cond_2

    const/4 v0, 0x7

    if-eq v9, v0, :cond_0

    const/4 v0, 0x3

    if-eq v9, v0, :cond_0

    const/16 v0, 0xa

    if-ne v9, v0, :cond_2

    .line 612
    :cond_0
    const-string v0, "WorldPhoneModeSelection"

    const-string v1, "old mode:GLOBAL/UMTS, but SIM not available.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-virtual {p0, v5}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastUserMode(I)V

    .line 615
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v5, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 616
    const-string v0, "factory2"

    const-string v1, "ro.bootmode"

    const-string v2, "normal"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 618
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f0e0162

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/phone/WarningAlertActivity;->showAlert(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 638
    :cond_1
    :goto_0
    return-void

    .line 622
    :cond_2
    if-eqz v7, :cond_1

    if-nez v8, :cond_1

    if-ne v9, v5, :cond_1

    .line 624
    const-string v0, "WorldPhoneModeSelection"

    const-string v1, "old mode:CDMA, now SIM insert.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/4 v10, 0x7

    .line 628
    .local v10, mode:I
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_4:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 629
    const/16 v10, 0xa

    .line 632
    :cond_3
    invoke-virtual {p0, v10}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastUserMode(I)V

    .line 633
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v10, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 635
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f0e0161

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/phone/WarningAlertActivity;->showAlert(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private doActionEx()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 494
    iget-boolean v5, p0, Lcom/android/phone/WorldPhoneModeSelection;->mbForbidModeSelection:Z

    if-eqz v5, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    const/4 v4, -0x1

    .line 499
    .local v4, newMode:I
    invoke-direct {p0}, Lcom/android/phone/WorldPhoneModeSelection;->isLastSimActive()Z

    move-result v1

    .line 500
    .local v1, hasSIMLast:Z
    invoke-virtual {p0}, Lcom/android/phone/WorldPhoneModeSelection;->isSimActive()Z

    move-result v0

    .line 501
    .local v0, hasSIM:Z
    invoke-direct {p0, v0}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastSimMode(Z)V

    .line 502
    invoke-direct {p0}, Lcom/android/phone/WorldPhoneModeSelection;->getLastUserMode()I

    move-result v3

    .line 503
    .local v3, lastUserMode:I
    const-string v5, "WorldPhoneModeSelection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doActionEx, LastUserMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    sget v5, Lcom/android/phone/WorldPhoneModeSelection;->mSimType:I

    packed-switch v5, :pswitch_data_0

    .line 558
    :cond_2
    :goto_1
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 561
    invoke-virtual {p0, v4}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastUserMode(I)V

    .line 562
    iget-object v5, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 507
    :pswitch_0
    if-eq v3, v9, :cond_2

    .line 509
    const/4 v4, 0x3

    goto :goto_1

    .line 514
    :pswitch_1
    const/4 v5, 0x4

    if-eq v3, v5, :cond_2

    .line 516
    const/4 v4, 0x4

    goto :goto_1

    .line 521
    :pswitch_2
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 523
    const-string v5, "WorldPhoneModeSelection"

    const-string v6, "doActionEx, SIM card just insert .."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v4, 0x7

    .line 527
    sget-boolean v5, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_4:Z

    if-ne v5, v8, :cond_2

    .line 528
    const/16 v4, 0xa

    goto :goto_1

    .line 532
    :cond_3
    const-string v5, "true"

    const-string v6, "gsm.sim.change"

    const-string v7, "empty"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 534
    const-string v5, "WorldPhoneModeSelection"

    const-string v6, "doActionEx, sim change to dual, set to GLOBAL"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/4 v4, 0x7

    .line 538
    sget-boolean v5, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_4:Z

    if-ne v5, v8, :cond_2

    .line 539
    const/16 v4, 0xa

    goto :goto_1

    .line 543
    :cond_4
    if-ne v3, v9, :cond_2

    .line 545
    const-string v5, "WorldPhoneModeSelection"

    const-string v6, "doActionEx, shortcut - preferrednetwork"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 547
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 549
    const-string v5, "shortcut"

    const-string v6, "preferrednetwork"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    iget-object v5, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 505
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private doAction_Sprint()V
    .locals 11

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 568
    invoke-direct {p0}, Lcom/android/phone/WorldPhoneModeSelection;->isLastSimActive()Z

    move-result v8

    .line 569
    .local v8, hasSIMLast:Z
    invoke-virtual {p0}, Lcom/android/phone/WorldPhoneModeSelection;->isSimActive()Z

    move-result v7

    .line 570
    .local v7, hasSIM:Z
    invoke-direct {p0, v7}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastSimMode(Z)V

    .line 572
    invoke-direct {p0}, Lcom/android/phone/WorldPhoneModeSelection;->getLastUserMode()I

    move-result v9

    .line 573
    .local v9, lastUserMode:I
    const-string v0, "WorldPhoneModeSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LastUserMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    if-nez v7, :cond_1

    const/4 v0, 0x3

    if-eq v9, v0, :cond_0

    const/4 v0, 0x7

    if-eq v9, v0, :cond_0

    const/16 v0, 0xa

    if-ne v9, v0, :cond_1

    .line 579
    :cond_0
    const-string v0, "WorldPhoneModeSelection"

    const-string v1, "old mode:UMTS, but SIM not available.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-virtual {p0, v3}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastUserMode(I)V

    .line 582
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v3, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 583
    const-string v0, "factory2"

    const-string v1, "ro.bootmode"

    const-string v2, "normal"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e015f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0162

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e0167

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/phone/WarningAlertActivity;->showAlert(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 589
    :cond_1
    if-eqz v7, :cond_3

    const-string v0, "factory2"

    const-string v1, "ro.bootmode"

    const-string v2, "normal"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 591
    const/4 v10, 0x7

    .line 592
    .local v10, mode:I
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_4:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 593
    const/16 v10, 0xa

    .line 595
    :cond_2
    invoke-virtual {p0, v10}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastUserMode(I)V

    .line 596
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v10, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 598
    .end local v10           #mode:I
    :cond_3
    return-void
.end method

.method static getInstance()Lcom/android/phone/WorldPhoneModeSelection;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/android/phone/WorldPhoneModeSelection;->sMe:Lcom/android/phone/WorldPhoneModeSelection;

    return-object v0
.end method

.method static getInstance(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/WorldPhoneModeSelection;
    .locals 1
    .parameter "phone"

    .prologue
    .line 165
    sget-object v0, Lcom/android/phone/WorldPhoneModeSelection;->sMe:Lcom/android/phone/WorldPhoneModeSelection;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/android/phone/WorldPhoneModeSelection;

    invoke-direct {v0, p0}, Lcom/android/phone/WorldPhoneModeSelection;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/WorldPhoneModeSelection;->sMe:Lcom/android/phone/WorldPhoneModeSelection;

    .line 169
    :cond_0
    sget-object v0, Lcom/android/phone/WorldPhoneModeSelection;->sMe:Lcom/android/phone/WorldPhoneModeSelection;

    return-object v0
.end method

.method private getLastUserMode()I
    .locals 3

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 354
    .local v0, pref:Landroid/content/SharedPreferences;
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v1, :cond_0

    .line 356
    const-string v1, "telephony.WorldPhoneController.mode"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 367
    :goto_0
    return v1

    .line 362
    :cond_0
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_4:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 363
    const-string v1, "telephony.WorldPhoneController.mode"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 367
    :cond_1
    const-string v1, "telephony.WorldPhoneController.mode"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 316
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 318
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 324
    :goto_0
    const-string v2, "WorldPhoneModeSelection"

    const-string v3, "OoO Notify UI to update the preferredNetworkType"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/WorldPhoneModeSelection;->INTENT_OF_UPDATE_PREFERRED_NETWORK_TYPE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 326
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 327
    return-void

    .line 321
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const-string v2, "WorldPhoneModeSelection"

    const-string v3, "OoO exception in SetPreferredNetworkType "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isLastSimActive()Z
    .locals 3

    .prologue
    .line 381
    iget-object v1, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 382
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "telephony.WorldPhoneController.sim"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private saveLastSimMode(Z)V
    .locals 3
    .parameter "hasSIM"

    .prologue
    .line 373
    iget-object v2, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 374
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 375
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "telephony.WorldPhoneController.sim"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 376
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 377
    return-void
.end method


# virtual methods
.method public checkSimIssue()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 672
    const-string v0, "WorldPhoneModeSelection"

    const-string v1, "checkSimIssue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIccState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIccState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIccState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIccState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0160

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0164

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e0167

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/phone/WarningAlertActivity;->showAlert(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 685
    :cond_1
    return-void
.end method

.method public forbidToCheckNoService()V
    .locals 2

    .prologue
    .line 689
    const-string v0, "WorldPhoneModeSelection"

    const-string v1, "forbidToCheckNoService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mNeedtoCheck:Z

    .line 691
    return-void
.end method

.method public getHtcSimType()I
    .locals 1

    .prologue
    .line 642
    sget v0, Lcom/android/phone/WorldPhoneModeSelection;->mSimType:I

    return v0
.end method

.method public getRawSimType()I
    .locals 1

    .prologue
    .line 650
    sget v0, Lcom/android/phone/WorldPhoneModeSelection;->mHtcSimType:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 182
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 184
    :sswitch_0
    const-string v4, "WorldPhoneModeSelection"

    const-string v5, "EV_PHONE_MODE_CHANGED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    :sswitch_1
    const-string v4, "WorldPhoneModeSelection"

    const-string v5, "EV_PHONE_DISCONNECT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v4, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 190
    iput-boolean v8, p0, Lcom/android/phone/WorldPhoneModeSelection;->mbForbidModeSelection:Z

    .line 191
    sget-boolean v4, Lcom/android/phone/HtcFeatureList;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v4, :cond_1

    .line 193
    iget-object v4, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v5, 0x518

    invoke-virtual {p0, v5}, Lcom/android/phone/WorldPhoneModeSelection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getHtcSimTypes(Landroid/os/Message;)V

    goto :goto_0

    .line 197
    :cond_1
    iget-object v4, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v5, 0x517

    invoke-virtual {p0, v5}, Lcom/android/phone/WorldPhoneModeSelection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getSimTypes(Landroid/os/Message;)V

    goto :goto_0

    .line 202
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 203
    .local v0, ar:Landroid/os/AsyncResult;
    if-eqz v0, :cond_2

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 205
    :cond_2
    const-string v4, "WorldPhoneModeSelection"

    const-string v5, "EV_GET_HTC_SIM_TYPES, exception happen !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    :cond_3
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v1, v4

    check-cast v1, [I

    .line 209
    .local v1, ints:[I
    const-string v4, "WorldPhoneModeSelection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EV_GET_HTC_SIM_TYPES:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    aget v4, v1, v8

    sput v4, Lcom/android/phone/WorldPhoneModeSelection;->mSimType:I

    .line 215
    array-length v4, v1

    if-le v4, v7, :cond_4

    .line 216
    aget v4, v1, v7

    sput v4, Lcom/android/phone/WorldPhoneModeSelection;->mHtcSimType:I

    .line 221
    :goto_1
    iget-object v4, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gsm.htc.sim.types.group"

    sget v6, Lcom/android/phone/WorldPhoneModeSelection;->mSimType:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    sget v4, Lcom/android/phone/WorldPhoneModeSelection;->mSimType:I

    if-nez v4, :cond_5

    .line 224
    sput-boolean v8, Lcom/android/phone/WorldPhoneModeSelection;->mbSimActive:Z

    .line 230
    :goto_2
    invoke-direct {p0}, Lcom/android/phone/WorldPhoneModeSelection;->doActionEx()V

    .line 231
    iput-boolean v7, p0, Lcom/android/phone/WorldPhoneModeSelection;->mbForbidModeSelection:Z

    goto/16 :goto_0

    .line 218
    :cond_4
    const-string v4, "WorldPhoneModeSelection"

    const-string v5, "get ruturning value 2 from WSD"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 228
    :cond_5
    sput-boolean v7, Lcom/android/phone/WorldPhoneModeSelection;->mbSimActive:Z

    goto :goto_2

    .line 235
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #ints:[I
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 236
    .restart local v0       #ar:Landroid/os/AsyncResult;
    if-eqz v0, :cond_6

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_7

    .line 238
    :cond_6
    const-string v4, "WorldPhoneModeSelection"

    const-string v5, "EV_GET_SIM_TYPES, exception happen !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    sput-boolean v7, Lcom/android/phone/WorldPhoneModeSelection;->mbSimActive:Z

    goto/16 :goto_0

    .line 242
    :cond_7
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    .line 244
    .local v3, simTypes:Lcom/android/internal/telephony/CommandsInterface$SimTypes;
    const-string v4, "WorldPhoneModeSelection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EV_GET_SIM_TYPES, simTypes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    if-eqz v3, :cond_0

    .line 248
    const-string v4, "gsm.sim.absent"

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_NO_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 252
    sput-boolean v8, Lcom/android/phone/WorldPhoneModeSelection;->mbSimActive:Z

    .line 259
    :goto_3
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_a

    .line 261
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0xad

    if-eq v4, v5, :cond_8

    .line 263
    invoke-direct {p0}, Lcom/android/phone/WorldPhoneModeSelection;->doAction()V

    .line 270
    :cond_8
    :goto_4
    iput-boolean v7, p0, Lcom/android/phone/WorldPhoneModeSelection;->mbForbidModeSelection:Z

    goto/16 :goto_0

    .line 256
    :cond_9
    sput-boolean v7, Lcom/android/phone/WorldPhoneModeSelection;->mbSimActive:Z

    goto :goto_3

    .line 268
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/WorldPhoneModeSelection;->doAction_Sprint()V

    goto :goto_4

    .line 275
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #simTypes:Lcom/android/internal/telephony/CommandsInterface$SimTypes;
    :sswitch_4
    const-string v4, "WorldPhoneModeSelection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msg.arg1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v7, :cond_b

    .line 278
    iput-boolean v8, p0, Lcom/android/phone/WorldPhoneModeSelection;->mNeedtoCheck:Z

    .line 280
    :cond_b
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v7, :cond_0

    .line 282
    const-string v4, "WorldPhoneModeSelection"

    const-string v5, "switch to GLOBAL mode, due to no service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v2, 0x7

    .line 286
    .local v2, mode:I
    sget-boolean v4, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_4:Z

    if-ne v4, v7, :cond_c

    .line 287
    const/16 v2, 0xa

    .line 289
    :cond_c
    invoke-virtual {p0, v2}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastUserMode(I)V

    .line 290
    iget-object v4, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v5, 0x51a

    invoke-virtual {p0, v5}, Lcom/android/phone/WorldPhoneModeSelection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 300
    .end local v2           #mode:I
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/android/phone/WorldPhoneModeSelection;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 182
    :sswitch_data_0
    .sparse-switch
        0x515 -> :sswitch_0
        0x517 -> :sswitch_3
        0x518 -> :sswitch_2
        0x519 -> :sswitch_1
        0x51a -> :sswitch_5
        0x238d -> :sswitch_4
    .end sparse-switch
.end method

.method protected isSimActive()Z
    .locals 3

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIccState:Lcom/android/internal/telephony/IccCard$State;

    .line 657
    const-string v0, "WorldPhoneModeSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/WorldPhoneModeSelection;->mbSimActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIccState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIccState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIccState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIccState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIccState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIccState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    .line 665
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/WorldPhoneModeSelection;->mbSimActive:Z

    .line 667
    :cond_1
    sget-boolean v0, Lcom/android/phone/WorldPhoneModeSelection;->mbSimActive:Z

    return v0
.end method

.method public saveLastUserMode(I)V
    .locals 7
    .parameter "mode"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 334
    const-string v2, "WorldPhoneModeSelection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveLastUserMode, mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v2, 0x7

    if-ne p1, v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/phone/WorldPhoneModeSelection;->mNeedtoCheck:Z

    .line 340
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_4:Z

    if-ne v2, v4, :cond_0

    .line 341
    const/16 v2, 0xa

    if-ne p1, v2, :cond_2

    :goto_1
    iput-boolean v3, p0, Lcom/android/phone/WorldPhoneModeSelection;->mNeedtoCheck:Z

    .line 345
    :cond_0
    iget-object v2, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 346
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 347
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "telephony.WorldPhoneController.mode"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 348
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 349
    return-void

    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_1
    move v2, v4

    .line 336
    goto :goto_0

    :cond_2
    move v3, v4

    .line 341
    goto :goto_1
.end method
