.class public Lcom/android/phone/HtcIncallControlPanel;
.super Ljava/lang/Object;
.source "HtcIncallControlPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/phone/NotificationMgr$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/HtcIncallControlPanel$EventHandler;
    }
.end annotation


# static fields
.field private static CUSTOMIZED_NAME:Ljava/lang/String; = null

.field private static final DEBUG:Z = true

.field private static DEVICE_NAME:Ljava/lang/String; = null

.field static final DIALOG_SRC_SELECTION:I = 0x1

.field private static final MODEL_NAME:Ljava/lang/String; = null

.field private static final MSG_MUTE_STATE_CHANGE:I = 0x2

.field private static final MSG_SPEAKER_STATE_CHANGE:I = 0x1

.field private static final NAME_EMPTY:Ljava/lang/String; = ""

.field private static final SRC_BT:I = 0x4

.field private static final SRC_DEVICE:I = 0x0

.field private static final SRC_HEADSET:I = 0x2

.field private static final SRC_SPEAKER:I = 0x1

.field private static final SRC_UNDEFINED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "HtcIncallControlPanel"


# instance fields
.field private mAddCallText:Landroid/widget/TextView;

.field private mAudioSrcDialog:Landroid/app/Dialog;

.field private mControlAddCall:Landroid/view/View;

.field private mControlEndHeldCall:Landroid/view/View;

.field private mControlHold:Lcom/android/phone/widget/ControlButton;

.field private mControlLayout:Landroid/view/View;

.field private mControlMergeCall:Landroid/view/View;

.field private mControlMute:Lcom/android/phone/widget/ControlButton;

.field private mControlSpeaker:Lcom/android/phone/widget/ControlButton;

.field private mEndHeldCallText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHoldState:Z

.field private mHoldText:Landroid/widget/TextView;

.field private mIncallScreen:Lcom/android/phone/InCallScreen;

.field private mLastSrc:I

.field private mMergeCallText:Landroid/widget/TextView;

.field private mMuteState:Z

.field private mMuteText:Landroid/widget/TextView;

.field private mPendingSpeakerOn:Z

.field private mSpeakerState:Z

.field private mSpeakerText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/android/phone/HtcIncallControlPanel;->getModleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HtcIncallControlPanel;->MODEL_NAME:Ljava/lang/String;

    .line 73
    const-string v0, ""

    sput-object v0, Lcom/android/phone/HtcIncallControlPanel;->CUSTOMIZED_NAME:Ljava/lang/String;

    .line 74
    const-string v0, ""

    sput-object v0, Lcom/android/phone/HtcIncallControlPanel;->DEVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 3
    .parameter "incallScreen"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mLastSrc:I

    .line 118
    const-string v1, "HtcIncallControlPanel"

    const-string v2, "constructed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iput-object p1, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    .line 121
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/phone/NotificationMgr;->addStateListener(Lcom/android/phone/NotificationMgr$StateListener;)V

    .line 122
    new-instance v1, Lcom/android/phone/HtcIncallControlPanel$EventHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/HtcIncallControlPanel$EventHandler;-><init>(Lcom/android/phone/HtcIncallControlPanel;Lcom/android/phone/HtcIncallControlPanel$1;)V

    iput-object v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mHandler:Landroid/os/Handler;

    .line 124
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 125
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mMuteState:Z

    .line 126
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mSpeakerState:Z

    .line 127
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/HtcIncallControlPanel;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/phone/HtcIncallControlPanel;->requestSpeakerStateChange(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/HtcIncallControlPanel;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/phone/HtcIncallControlPanel;->requestMuteStateChange(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/phone/HtcIncallControlPanel;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/phone/HtcIncallControlPanel;->mAudioSrcDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private getAudioSrcDialog(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 6
    .parameter "screen"

    .prologue
    const/4 v5, 0x1

    .line 903
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mAudioSrcDialog:Landroid/app/Dialog;

    if-nez v2, :cond_0

    .line 904
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 906
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03001c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 909
    .local v1, srcView:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/phone/HtcIncallControlPanel;->updateDialogButtons(Landroid/view/View;)V

    .line 911
    const v2, 0x7f0e00ae

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 912
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 913
    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 914
    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 915
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 916
    new-instance v2, Lcom/android/phone/HtcIncallControlPanel$1;

    invoke-direct {v2, p0}, Lcom/android/phone/HtcIncallControlPanel$1;-><init>(Lcom/android/phone/HtcIncallControlPanel;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 921
    new-instance v2, Lcom/android/phone/HtcIncallControlPanel$2;

    invoke-direct {v2, p0}, Lcom/android/phone/HtcIncallControlPanel$2;-><init>(Lcom/android/phone/HtcIncallControlPanel;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 934
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mAudioSrcDialog:Landroid/app/Dialog;

    .line 938
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #srcView:Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mAudioSrcDialog:Landroid/app/Dialog;

    return-object v2

    .line 936
    :cond_0
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mAudioSrcDialog:Landroid/app/Dialog;

    const v3, 0x7f0800ae

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/HtcIncallControlPanel;->updateDialogButtons(Landroid/view/View;)V

    goto :goto_0
.end method

.method private static final getCustomizedName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1035
    const-string v0, ""

    sget-object v1, Lcom/android/phone/HtcIncallControlPanel;->CUSTOMIZED_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/htc/HtcCustomizedData;->getCustomizedDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HtcIncallControlPanel;->CUSTOMIZED_NAME:Ljava/lang/String;

    .line 1042
    :cond_0
    sget-object v0, Lcom/android/phone/HtcIncallControlPanel;->CUSTOMIZED_NAME:Ljava/lang/String;

    return-object v0
.end method

.method private static final getDeviceName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1046
    const-string v0, ""

    sget-object v1, Lcom/android/phone/HtcIncallControlPanel;->DEVICE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1047
    const-string v0, ""

    sget-object v1, Lcom/android/phone/HtcIncallControlPanel;->CUSTOMIZED_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    invoke-static {}, Lcom/android/phone/HtcIncallControlPanel;->getCustomizedName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HtcIncallControlPanel;->CUSTOMIZED_NAME:Ljava/lang/String;

    .line 1051
    :cond_0
    sget-object v0, Lcom/android/phone/HtcIncallControlPanel;->CUSTOMIZED_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1052
    const-string v0, "HtcIncallControlPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use model name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/HtcIncallControlPanel;->MODEL_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    sget-object v0, Lcom/android/phone/HtcIncallControlPanel;->MODEL_NAME:Ljava/lang/String;

    sput-object v0, Lcom/android/phone/HtcIncallControlPanel;->DEVICE_NAME:Ljava/lang/String;

    .line 1060
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/phone/HtcIncallControlPanel;->DEVICE_NAME:Ljava/lang/String;

    return-object v0

    .line 1055
    :cond_2
    const-string v0, "HtcIncallControlPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use CUSTOMIZED_NAME: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/HtcIncallControlPanel;->CUSTOMIZED_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    sget-object v0, Lcom/android/phone/HtcIncallControlPanel;->CUSTOMIZED_NAME:Ljava/lang/String;

    sput-object v0, Lcom/android/phone/HtcIncallControlPanel;->DEVICE_NAME:Ljava/lang/String;

    goto :goto_0
.end method

.method private static final getModleName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1027
    const-string v1, "ro.product.model"

    const-string v2, "HTC"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1028
    .local v0, model:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1029
    const-string v0, "HTC"

    .line 1031
    :cond_0
    return-object v0
.end method

.method private initControlButton(I)Landroid/view/View;
    .locals 2
    .parameter "resId"

    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlLayout:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 182
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    :cond_0
    return-object v0
.end method

.method private static final isIdle()Z
    .locals 2

    .prologue
    .line 801
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeToast(I)V
    .locals 2
    .parameter "stringRes"

    .prologue
    .line 795
    invoke-static {}, Lcom/android/phone/HtcIncallControlPanel;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/phone/InCallScreen;->makeToast(IZ)V

    .line 798
    :cond_0
    return-void
.end method

.method private requestMuteStateChange(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 774
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    if-nez v3, :cond_1

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 778
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    .line 780
    .local v1, isMuted:Z
    iget-boolean v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mMuteState:Z

    if-eq v3, v1, :cond_0

    .line 781
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 782
    .local v0, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-direct {p0, v2, v0}, Lcom/android/phone/HtcIncallControlPanel;->updateMuteButton(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call$State;)V

    .line 788
    iput-boolean v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mMuteState:Z

    goto :goto_0
.end method

.method private requestSpeakerStateChange(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/android/phone/HtcIncallControlPanel;->updateSpeakerButton()V

    .line 761
    invoke-direct {p0}, Lcom/android/phone/HtcIncallControlPanel;->updateAudioSrcDialog()V

    .line 762
    return-void
.end method

.method private reset(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    const/4 v0, 0x0

    .line 1156
    if-eqz p1, :cond_0

    .line 1157
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1158
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1160
    :cond_0
    return-void
.end method

.method private resetSpeakerButtonOnClickListener()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    if-eqz v0, :cond_0

    .line 190
    sget-boolean v0, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    iget-object v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/ControlButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v0, p0}, Lcom/android/phone/widget/ControlButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setAudioIndicator(Landroid/widget/TextView;Z)V
    .locals 4
    .parameter "view"
    .parameter "on"

    .prologue
    .line 1015
    if-eqz p1, :cond_0

    .line 1016
    if-eqz p2, :cond_1

    const v2, 0x7f020005

    .line 1019
    .local v2, resId:I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1020
    .local v1, parent:Landroid/view/ViewGroup;
    const v3, 0x7f0800b1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1021
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1024
    .end local v0           #icon:Landroid/widget/ImageView;
    .end local v1           #parent:Landroid/view/ViewGroup;
    .end local v2           #resId:I
    :cond_0
    return-void

    .line 1016
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private switchState(Landroid/view/View;Z)V
    .locals 6
    .parameter "view"
    .parameter "on"

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 824
    if-nez p1, :cond_1

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 827
    :cond_1
    const v5, 0x7f080019

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 828
    .local v2, onView:Landroid/view/View;
    const v5, 0x7f08001a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 830
    .local v0, offView:Landroid/view/View;
    if-eqz p2, :cond_2

    move v3, v4

    .line 831
    .local v3, onViewVisibility:I
    :goto_1
    if-eqz p2, :cond_3

    .line 833
    .local v1, offViewVisibility:I
    :goto_2
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 834
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 835
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v1           #offViewVisibility:I
    .end local v3           #onViewVisibility:I
    :cond_2
    move v3, v1

    .line 830
    goto :goto_1

    .restart local v3       #onViewVisibility:I
    :cond_3
    move v1, v4

    .line 831
    goto :goto_2
.end method

.method private turnBT(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 1064
    iget-object v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v0

    .line 1066
    .local v0, audioConnectedOrPending:Z
    if-eq p1, v0, :cond_0

    .line 1067
    iget-object v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->onBluetoothClick(Landroid/content/Context;)V

    .line 1070
    :cond_0
    return-void
.end method

.method private turnOnSpeakerWithBT()V
    .locals 1

    .prologue
    .line 1133
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/HtcIncallControlPanel;->turnBT(Z)V

    .line 1134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mPendingSpeakerOn:Z

    .line 1135
    return-void
.end method

.method private turnSpeaker(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 1073
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1074
    invoke-direct {p0}, Lcom/android/phone/HtcIncallControlPanel;->turnOnSpeakerWithBT()V

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1076
    :cond_1
    iget-object v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    .line 1078
    .local v0, isOn:Z
    if-eq p1, v0, :cond_0

    .line 1079
    iget-object v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->switchSpeakerOnOff(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private updateAddCallButton()V
    .locals 3

    .prologue
    .line 652
    iget-object v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getMode()Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-result-object v0

    .line 654
    .local v0, mode:Lcom/android/phone/InCallScreen$InCallScreenMode;
    invoke-virtual {v0}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isSingleAlive()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isConference()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 655
    :cond_0
    iget-object v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlAddCall:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 659
    :goto_0
    return-void

    .line 657
    :cond_1
    iget-object v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlAddCall:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateAudioSrcButton(ZZ)V
    .locals 11
    .parameter "isIdle"
    .parameter "isRinging"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 534
    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    .line 535
    :cond_0
    iget-object v8, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v8}, Lcom/android/phone/widget/ControlButton;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 536
    iget-object v8, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v8, v7}, Lcom/android/phone/widget/ControlButton;->setEnabled(Z)V

    .line 544
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 545
    .local v1, currentSrc:I
    iget-object v8, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 546
    const/4 v1, 0x4

    .line 556
    :goto_1
    iget v8, p0, Lcom/android/phone/HtcIncallControlPanel;->mLastSrc:I

    if-eq v8, v1, :cond_2

    .line 557
    iput v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mLastSrc:I

    .line 558
    const v6, 0x7f0e00c5

    .line 559
    .local v6, toastRes:I
    const v4, 0x7f020092

    .line 560
    .local v4, resId:I
    const v2, 0x2080a46

    .line 562
    .local v2, menuIconId:I
    packed-switch v1, :pswitch_data_0

    .line 591
    :goto_2
    invoke-direct {p0, v6}, Lcom/android/phone/HtcIncallControlPanel;->makeToast(I)V

    .line 595
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 596
    iget-object v8, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 597
    .local v3, res:Landroid/content/res/Resources;
    const-string v8, "phone_icon_audio_source"

    const-string v9, "drawable"

    const-string v10, "com.android.phone"

    invoke-virtual {v3, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 598
    iget-object v8, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    const v9, 0x7f0e00af

    invoke-virtual {v8, v9}, Lcom/android/phone/widget/ControlButton;->setText(I)V

    .line 605
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_3
    iget-object v8, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v8, v4}, Lcom/android/phone/widget/ControlButton;->setButtonDrawable(I)V

    .line 608
    iget-object v8, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8, v2}, Lcom/android/phone/InCallScreen;->setAudioSrcMenuItemIcon(I)V

    .line 611
    .end local v2           #menuIconId:I
    .end local v4           #resId:I
    .end local v6           #toastRes:I
    :cond_2
    if-ne v1, v5, :cond_9

    .line 612
    .local v5, speakerOn:Z
    :goto_4
    iget-object v7, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v7, v5}, Lcom/android/phone/widget/ControlButton;->setChecked(Z)V

    .line 613
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 614
    iget-object v7, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    const v8, 0x2020003

    invoke-virtual {v7, v8, v5}, Lcom/android/phone/InCallScreen;->setButtonChecked(IZ)V

    .line 616
    :cond_3
    return-void

    .line 539
    .end local v1           #currentSrc:I
    .end local v5           #speakerOn:Z
    :cond_4
    iget-object v8, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v8}, Lcom/android/phone/widget/ControlButton;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 540
    iget-object v8, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v8, v5}, Lcom/android/phone/widget/ControlButton;->setEnabled(Z)V

    goto :goto_0

    .line 547
    .restart local v1       #currentSrc:I
    :cond_5
    iget-object v8, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 549
    const/4 v1, 0x1

    goto :goto_1

    .line 550
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->isHandsFreePlugged()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 551
    const/4 v1, 0x2

    goto :goto_1

    .line 553
    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    .line 565
    .restart local v2       #menuIconId:I
    .restart local v4       #resId:I
    .restart local v6       #toastRes:I
    :pswitch_0
    const v6, 0x7f0e006a

    .line 566
    const v4, 0x7f0200a1

    .line 567
    const v2, 0x2080a83

    .line 568
    goto :goto_2

    .line 572
    :pswitch_1
    const v6, 0x7f0e00c7

    .line 573
    const v4, 0x7f020099

    .line 574
    const v2, 0x2080a15

    .line 575
    goto :goto_2

    .line 579
    :pswitch_2
    const v6, 0x7f0e00c6

    .line 580
    const v4, 0x7f0200a1

    .line 581
    const v2, 0x2080a82

    .line 582
    goto/16 :goto_2

    .line 601
    :cond_8
    const v0, 0x7f020077

    .line 602
    .local v0, bkResId:I
    iget-object v8, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v8, v0}, Lcom/android/phone/widget/ControlButton;->setBackgroundResource(I)V

    goto :goto_3

    .end local v0           #bkResId:I
    .end local v2           #menuIconId:I
    .end local v4           #resId:I
    .end local v6           #toastRes:I
    :cond_9
    move v5, v7

    .line 611
    goto :goto_4

    .line 562
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateAudioSrcDialog()V
    .locals 2

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mAudioSrcDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mAudioSrcDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mAudioSrcDialog:Landroid/app/Dialog;

    const v1, 0x7f0800ae

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/HtcIncallControlPanel;->updateDialogButtons(Landroid/view/View;)V

    .line 1088
    :cond_0
    return-void
.end method

.method private updateBTDialogButton(Landroid/view/View;)V
    .locals 7
    .parameter "rootView"

    .prologue
    .line 950
    const v6, 0x7f0800af

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 951
    .local v3, group:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 952
    iget-object v6, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v5

    .line 953
    .local v5, visible:Z
    if-eqz v5, :cond_2

    const/4 v4, 0x0

    .line 954
    .local v4, visibility:I
    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v4, :cond_0

    .line 955
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 958
    :cond_0
    if-eqz v5, :cond_1

    .line 959
    const v6, 0x7f0800b0

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 961
    .local v1, btView:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 963
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    .line 965
    .local v0, bhf:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v0, :cond_3

    .line 966
    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->getHeadsetName()Ljava/lang/String;

    move-result-object v2

    .line 967
    .local v2, deviceName:Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 972
    .end local v2           #deviceName:Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v6

    invoke-direct {p0, v1, v6}, Lcom/android/phone/HtcIncallControlPanel;->setAudioIndicator(Landroid/widget/TextView;Z)V

    .line 975
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 979
    .end local v0           #bhf:Lcom/android/phone/BluetoothHandsfree;
    .end local v1           #btView:Landroid/widget/TextView;
    .end local v4           #visibility:I
    .end local v5           #visible:Z
    :cond_1
    return-void

    .line 953
    .restart local v5       #visible:Z
    :cond_2
    const/16 v4, 0x8

    goto :goto_0

    .line 969
    .restart local v0       #bhf:Lcom/android/phone/BluetoothHandsfree;
    .restart local v1       #btView:Landroid/widget/TextView;
    .restart local v4       #visibility:I
    :cond_3
    const v6, 0x7f0e03ca

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private updateControlLayout(Lcom/android/internal/telephony/Phone;Lcom/android/phone/InCallScreen$InCallScreenMode;)Z
    .locals 6
    .parameter "phone"
    .parameter "mode"

    .prologue
    .line 340
    const/4 v3, 0x0

    .line 342
    .local v3, isVisible:Z
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 343
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 344
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 348
    .local v2, hasAliveCall:Z
    :goto_0
    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier;->isNewRingingConnectionInKeyguardRestrictedInputMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 351
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlLayout:Landroid/view/View;

    if-nez v4, :cond_1

    .line 352
    const-string v4, "HtcIncallControlPanel"

    const-string v5, "control layout does not exist"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_1
    :goto_1
    return v3

    .line 344
    .end local v2           #hasAliveCall:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 357
    .restart local v2       #hasAliveCall:Z
    :cond_3
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlMute:Lcom/android/phone/widget/ControlButton;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    if-nez v4, :cond_5

    .line 358
    :cond_4
    const-string v4, "HtcIncallControlPanel"

    const-string v5, "no control(s) exist"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 359
    :cond_5
    invoke-virtual {p2}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 361
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlLayout:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    const/4 v3, 0x1

    goto :goto_1

    .line 363
    :cond_6
    if-nez v2, :cond_7

    .line 365
    const/4 v3, 0x1

    goto :goto_1

    .line 367
    :cond_7
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private updateDeviceDialogButton(Landroid/view/View;)V
    .locals 3
    .parameter "rootView"

    .prologue
    .line 982
    const v2, 0x7f0800b2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 984
    .local v0, deviceView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 986
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 987
    const v2, 0x7f0e00b0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 993
    :goto_0
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 996
    .local v1, useDevice:Z
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/phone/HtcIncallControlPanel;->setAudioIndicator(Landroid/widget/TextView;Z)V

    .line 998
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1000
    .end local v1           #useDevice:Z
    :cond_0
    return-void

    .line 989
    :cond_1
    invoke-static {}, Lcom/android/phone/HtcIncallControlPanel;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 993
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateDialogButtons(Landroid/view/View;)V
    .locals 0
    .parameter "rootView"

    .prologue
    .line 942
    if-eqz p1, :cond_0

    .line 943
    invoke-direct {p0, p1}, Lcom/android/phone/HtcIncallControlPanel;->updateBTDialogButton(Landroid/view/View;)V

    .line 944
    invoke-direct {p0, p1}, Lcom/android/phone/HtcIncallControlPanel;->updateDeviceDialogButton(Landroid/view/View;)V

    .line 945
    invoke-direct {p0, p1}, Lcom/android/phone/HtcIncallControlPanel;->updateSpeakerDialogButton(Landroid/view/View;)V

    .line 947
    :cond_0
    return-void
.end method

.method private updateHoldButton(Lcom/android/internal/telephony/Phone;)V
    .locals 8
    .parameter "phone"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 620
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-nez v7, :cond_3

    move v2, v5

    .line 621
    .local v2, hasActiveCall:Z
    :goto_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 622
    .local v1, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-nez v7, :cond_4

    move v3, v5

    .line 623
    .local v3, hasHoldingCall:Z
    :goto_1
    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    move v4, v5

    .line 624
    .local v4, onHold:Z
    :goto_2
    if-eqz v2, :cond_0

    if-nez v3, :cond_6

    :cond_0
    if-eqz v2, :cond_1

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v7, :cond_6

    :cond_1
    move v0, v5

    .line 625
    .local v0, canHold:Z
    :goto_3
    if-nez v0, :cond_7

    .line 627
    const-string v5, "HtcIncallControlPanel"

    const-string v7, "hold: disabled"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v5, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlHold:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v5}, Lcom/android/phone/widget/ControlButton;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 630
    iget-object v5, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlHold:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v5, v6}, Lcom/android/phone/widget/ControlButton;->setEnabled(Z)V

    .line 648
    :cond_2
    :goto_4
    return-void

    .end local v0           #canHold:Z
    .end local v1           #fgCallState:Lcom/android/internal/telephony/Call$State;
    .end local v2           #hasActiveCall:Z
    .end local v3           #hasHoldingCall:Z
    .end local v4           #onHold:Z
    :cond_3
    move v2, v6

    .line 620
    goto :goto_0

    .restart local v1       #fgCallState:Lcom/android/internal/telephony/Call$State;
    .restart local v2       #hasActiveCall:Z
    :cond_4
    move v3, v6

    .line 622
    goto :goto_1

    .restart local v3       #hasHoldingCall:Z
    :cond_5
    move v4, v6

    .line 623
    goto :goto_2

    .restart local v4       #onHold:Z
    :cond_6
    move v0, v6

    .line 624
    goto :goto_3

    .line 634
    .restart local v0       #canHold:Z
    :cond_7
    const-string v6, "HtcIncallControlPanel"

    const-string v7, "hold: enabled"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v6, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlHold:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v6}, Lcom/android/phone/widget/ControlButton;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_8

    .line 637
    iget-object v6, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlHold:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v6, v5}, Lcom/android/phone/widget/ControlButton;->setEnabled(Z)V

    .line 639
    :cond_8
    iget-boolean v5, p0, Lcom/android/phone/HtcIncallControlPanel;->mHoldState:Z

    if-eq v5, v4, :cond_9

    .line 640
    iput-boolean v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mHoldState:Z

    .line 643
    :cond_9
    iget-object v5, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlHold:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v5, v4}, Lcom/android/phone/widget/ControlButton;->setChecked(Z)V

    .line 644
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 645
    iget-object v5, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    const v6, 0x2020004

    invoke-virtual {v5, v6, v4}, Lcom/android/phone/InCallScreen;->setButtonChecked(IZ)V

    goto :goto_4
.end method

.method private updateMuteButton(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call$State;)V
    .locals 6
    .parameter "phone"
    .parameter "fgCallState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 376
    iget-object v5, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->isEmergency()Z

    move-result v1

    .line 377
    .local v1, emergencyMode:Z
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, p2, :cond_1

    move v0, v3

    .line 379
    .local v0, canMute:Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/phone/HtcIncallControlPanel;->updateMuteState(Lcom/android/internal/telephony/Phone;)V

    .line 381
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    move v2, v3

    .line 382
    .local v2, enabled:Z
    :goto_1
    iget-object v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlMute:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v3}, Lcom/android/phone/widget/ControlButton;->isEnabled()Z

    move-result v3

    if-eq v3, v2, :cond_0

    .line 383
    iget-object v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlMute:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v3, v2}, Lcom/android/phone/widget/ControlButton;->setEnabled(Z)V

    .line 385
    :cond_0
    return-void

    .end local v0           #canMute:Z
    .end local v2           #enabled:Z
    :cond_1
    move v0, v4

    .line 377
    goto :goto_0

    .restart local v0       #canMute:Z
    :cond_2
    move v2, v4

    .line 381
    goto :goto_1
.end method

.method private updateMuteState(Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .parameter "phone"

    .prologue
    .line 388
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    .line 390
    .local v0, muteOn:Z
    const-string v2, "HtcIncallControlPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v2, "HtcIncallControlPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMuteState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mMuteState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-boolean v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mMuteState:Z

    if-eq v2, v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_0

    .line 396
    iput-boolean v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mMuteState:Z

    .line 399
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 401
    if-eqz v0, :cond_2

    const v1, 0x7f0e008e

    .line 403
    .local v1, stringRes:I
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/phone/HtcIncallControlPanel;->makeToast(I)V

    .line 408
    .end local v1           #stringRes:I
    :cond_0
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlMute:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v2, v0}, Lcom/android/phone/widget/ControlButton;->setChecked(Z)V

    .line 409
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 410
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    const v3, 0x2020001

    invoke-virtual {v2, v3, v0}, Lcom/android/phone/InCallScreen;->setButtonChecked(IZ)V

    .line 412
    :cond_1
    return-void

    .line 401
    :cond_2
    const v1, 0x7f0e008f

    goto :goto_0
.end method

.method private updateSpeakerButton(Lcom/android/phone/PhoneApp;ZZ)V
    .locals 9
    .parameter "phoneApp"
    .parameter "isIdle"
    .parameter "isRinging"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 437
    if-nez p2, :cond_0

    if-eqz p3, :cond_3

    .line 439
    :cond_0
    const-string v4, "HtcIncallControlPanel"

    const-string v5, "speaker: disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v4}, Lcom/android/phone/widget/ControlButton;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 442
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v4, v8}, Lcom/android/phone/widget/ControlButton;->setEnabled(Z)V

    .line 495
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    const v5, 0x7f0200a1

    invoke-virtual {v4, v5}, Lcom/android/phone/widget/ControlButton;->setButtonDrawable(I)V

    .line 498
    const/4 v2, -0x1

    .line 499
    .local v2, resId:I
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 500
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    const v5, 0x7f0e024e

    invoke-virtual {v4, v5}, Lcom/android/phone/widget/ControlButton;->setText(I)V

    .line 501
    const-string v4, "phone_btn_right_speaker"

    const-string v5, "drawable"

    const-string v6, "phone_btn_contorl_right"

    const-string v7, "drawable"

    invoke-static {v6, v7, v8}, Lcom/android/phone/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/phone/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 505
    :goto_1
    if-eqz v2, :cond_2

    .line 506
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v4, v2}, Lcom/android/phone/widget/ControlButton;->setBackgroundResource(I)V

    .line 509
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/HtcIncallControlPanel;->updateSpeakerState()V

    .line 510
    return-void

    .line 446
    .end local v2           #resId:I
    :cond_3
    const-string v4, "HtcIncallControlPanel"

    const-string v5, "speaker: enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v4}, Lcom/android/phone/widget/ControlButton;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_6

    .line 455
    invoke-virtual {p1}, Lcom/android/phone/PhoneApp;->isHandsFreePlugged()Z

    move-result v4

    if-ne v4, v7, :cond_5

    .line 456
    invoke-virtual {p1}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 457
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 459
    .local v3, ttyMode:I
    :try_start_0
    const-string v4, "preferred_tty_mode"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 464
    :goto_2
    if-eqz v3, :cond_4

    .line 465
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v4, v8}, Lcom/android/phone/widget/ControlButton;->setEnabled(Z)V

    goto :goto_0

    .line 461
    :catch_0
    move-exception v1

    .line 462
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "HtcIncallControlPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "try to get TTY mode in method updateSpeakerButton - ERROR( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 467
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_4
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v4, v7}, Lcom/android/phone/widget/ControlButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 470
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v3           #ttyMode:I
    :cond_5
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v4, v7}, Lcom/android/phone/widget/ControlButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 479
    :cond_6
    invoke-virtual {p1}, Lcom/android/phone/PhoneApp;->isHandsFreePlugged()Z

    move-result v4

    if-ne v4, v7, :cond_1

    .line 480
    invoke-virtual {p1}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 481
    .restart local v0       #cr:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 483
    .restart local v3       #ttyMode:I
    :try_start_1
    const-string v4, "preferred_tty_mode"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 488
    :goto_3
    if-eqz v3, :cond_1

    .line 489
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v4, v8}, Lcom/android/phone/widget/ControlButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 485
    :catch_1
    move-exception v1

    .line 486
    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "HtcIncallControlPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "try to get TTY mode in method updateSpeakerButton - ERROR( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 503
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    .end local v3           #ttyMode:I
    .restart local v2       #resId:I
    :cond_7
    const-string v4, "phone_btn_contorl_right"

    const-string v5, "drawable"

    invoke-static {v4, v5, v8}, Lcom/android/phone/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    goto/16 :goto_1
.end method

.method private updateSpeakerDialogButton(Landroid/view/View;)V
    .locals 2
    .parameter "rootView"

    .prologue
    .line 1003
    const v1, 0x7f0800b3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1006
    .local v0, speakerView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 1007
    iget-object v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/HtcIncallControlPanel;->setAudioIndicator(Landroid/widget/TextView;Z)V

    .line 1010
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1012
    :cond_0
    return-void
.end method

.method private updateSpeakerState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 513
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    .line 515
    .local v1, speakerOn:Z
    iget-boolean v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mSpeakerState:Z

    if-eq v2, v1, :cond_0

    .line 516
    iput-boolean v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mSpeakerState:Z

    .line 517
    iget-boolean v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mSpeakerState:Z

    if-eqz v2, :cond_3

    const v0, 0x7f0e006a

    .line 519
    .local v0, resId:I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/phone/HtcIncallControlPanel;->makeToast(I)V

    .line 522
    .end local v0           #resId:I
    :cond_0
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mLastSrc:I

    if-eq v3, v2, :cond_1

    .line 523
    iput v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mLastSrc:I

    .line 526
    :cond_1
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v2, v1}, Lcom/android/phone/widget/ControlButton;->setChecked(Z)V

    .line 527
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 528
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    const v3, 0x2020003

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/InCallScreen;->setButtonChecked(IZ)V

    .line 530
    :cond_2
    return-void

    .line 517
    :cond_3
    const v0, 0x7f0e006b

    goto :goto_0
.end method


# virtual methods
.method public arrangeLayout(ZZZ)V
    .locals 8
    .parameter "isNavi"
    .parameter "isMulti"
    .parameter "isConf"

    .prologue
    const/4 v7, 0x0

    .line 1092
    or-int v1, p2, p3

    .line 1094
    .local v1, isMcMode:Z
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1095
    if-eqz p1, :cond_2

    move v5, v7

    .line 1096
    .local v5, visible:I
    :goto_0
    iget-object v6, p0, Lcom/android/phone/HtcIncallControlPanel;->mMuteText:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1097
    iget-object v6, p0, Lcom/android/phone/HtcIncallControlPanel;->mSpeakerText:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1099
    const/16 v2, 0x8

    .line 1100
    .local v2, layer1Visible:I
    const/16 v3, 0x8

    .line 1102
    .local v3, layer2Visible:I
    if-eqz p1, :cond_0

    .line 1103
    if-nez v1, :cond_3

    .line 1104
    const/4 v3, 0x0

    .line 1114
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlEndHeldCall:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1117
    iget-object v6, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlHold:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v6}, Lcom/android/phone/widget/ControlButton;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1120
    iget-object v6, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1121
    .local v4, res:Landroid/content/res/Resources;
    if-eqz v1, :cond_5

    .line 1122
    const v6, 0x7f0c0021

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    .line 1123
    .local v0, bottom:I
    iget-object v6, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlLayout:Landroid/view/View;

    invoke-virtual {v6, v7, v7, v7, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 1128
    .end local v0           #bottom:I
    .end local v2           #layer1Visible:I
    .end local v3           #layer2Visible:I
    .end local v4           #res:Landroid/content/res/Resources;
    .end local v5           #visible:I
    :cond_1
    :goto_2
    return-void

    .line 1095
    :cond_2
    const/4 v5, 0x4

    goto :goto_0

    .line 1106
    .restart local v2       #layer1Visible:I
    .restart local v3       #layer2Visible:I
    .restart local v5       #visible:I
    :cond_3
    if-eqz p2, :cond_4

    .line 1107
    const/4 v2, 0x0

    goto :goto_1

    .line 1108
    :cond_4
    if-eqz p3, :cond_0

    .line 1109
    const/4 v3, 0x0

    goto :goto_1

    .line 1125
    .restart local v4       #res:Landroid/content/res/Resources;
    :cond_5
    iget-object v6, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlLayout:Landroid/view/View;

    invoke-virtual {v6, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2
.end method

.method destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 231
    const-string v0, "HtcIncallControlPanel"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlMute:Lcom/android/phone/widget/ControlButton;

    invoke-direct {p0, v0}, Lcom/android/phone/HtcIncallControlPanel;->reset(Landroid/view/View;)V

    .line 241
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-direct {p0, v0}, Lcom/android/phone/HtcIncallControlPanel;->reset(Landroid/view/View;)V

    .line 242
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlHold:Lcom/android/phone/widget/ControlButton;

    invoke-direct {p0, v0}, Lcom/android/phone/HtcIncallControlPanel;->reset(Landroid/view/View;)V

    .line 243
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlAddCall:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/phone/HtcIncallControlPanel;->reset(Landroid/view/View;)V

    .line 244
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlEndHeldCall:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/phone/HtcIncallControlPanel;->reset(Landroid/view/View;)V

    .line 245
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlMergeCall:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/phone/HtcIncallControlPanel;->reset(Landroid/view/View;)V

    .line 247
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/phone/NotificationMgr;->removeStateListener(Lcom/android/phone/NotificationMgr$StateListener;)V

    .line 249
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 251
    iput-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mHandler:Landroid/os/Handler;

    .line 253
    :cond_0
    return-void
.end method

.method dismissDialog(I)V
    .locals 1
    .parameter "dialogId"

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mAudioSrcDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mAudioSrcDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mAudioSrcDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 900
    :cond_0
    return-void
.end method

.method getDialog(Landroid/app/Activity;I)Landroid/app/Dialog;
    .locals 3
    .parameter "screen"
    .parameter "dialogId"

    .prologue
    .line 872
    const-string v1, "HtcIncallControlPanel"

    const-string v2, "getDialog: start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const/4 v0, 0x0

    .line 876
    .local v0, result:Landroid/app/Dialog;
    if-nez p1, :cond_0

    if-lez p2, :cond_1

    .line 878
    :cond_0
    const/4 v1, 0x1

    if-ne v1, p2, :cond_1

    .line 879
    invoke-direct {p0, p1}, Lcom/android/phone/HtcIncallControlPanel;->getAudioSrcDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    .line 884
    :cond_1
    const-string v1, "HtcIncallControlPanel"

    const-string v2, "getDialog: end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    return-object v0
.end method

.method initLayout(Landroid/view/View;)V
    .locals 6
    .parameter "controlLayout"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 136
    const-string v2, "HtcIncallControlPanel"

    const-string v3, "init layout"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-eqz p1, :cond_2

    .line 139
    iput-object p1, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlLayout:Landroid/view/View;

    .line 141
    const v2, 0x7f0800bd

    invoke-direct {p0, v2}, Lcom/android/phone/HtcIncallControlPanel;->initControlButton(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/widget/ControlButton;

    iput-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlMute:Lcom/android/phone/widget/ControlButton;

    .line 142
    const v2, 0x7f0800bf

    invoke-direct {p0, v2}, Lcom/android/phone/HtcIncallControlPanel;->initControlButton(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/widget/ControlButton;

    iput-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    .line 143
    const v2, 0x7f0800bb

    invoke-direct {p0, v2}, Lcom/android/phone/HtcIncallControlPanel;->initControlButton(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/widget/ControlButton;

    iput-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlHold:Lcom/android/phone/widget/ControlButton;

    .line 144
    const v2, 0x7f0800b9

    invoke-direct {p0, v2}, Lcom/android/phone/HtcIncallControlPanel;->initControlButton(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlAddCall:Landroid/view/View;

    .line 145
    const v2, 0x7f0800b5

    invoke-direct {p0, v2}, Lcom/android/phone/HtcIncallControlPanel;->initControlButton(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlEndHeldCall:Landroid/view/View;

    .line 146
    const v2, 0x7f0800b7

    invoke-direct {p0, v2}, Lcom/android/phone/HtcIncallControlPanel;->initControlButton(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlMergeCall:Landroid/view/View;

    .line 148
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlMute:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v2, v4}, Lcom/android/phone/widget/ControlButton;->setCheckable(Z)V

    .line 149
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v2, v4}, Lcom/android/phone/widget/ControlButton;->setCheckable(Z)V

    .line 151
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlLayout:Landroid/view/View;

    const v3, 0x7f0800be

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mMuteText:Landroid/widget/TextView;

    .line 152
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlLayout:Landroid/view/View;

    const v3, 0x7f0800c0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mSpeakerText:Landroid/widget/TextView;

    .line 153
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlLayout:Landroid/view/View;

    const v3, 0x7f0800bc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mHoldText:Landroid/widget/TextView;

    .line 154
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlLayout:Landroid/view/View;

    const v3, 0x7f0800ba

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mAddCallText:Landroid/widget/TextView;

    .line 155
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlLayout:Landroid/view/View;

    const v3, 0x7f0800b6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mEndHeldCallText:Landroid/widget/TextView;

    .line 156
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlLayout:Landroid/view/View;

    const v3, 0x7f0800b8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mMergeCallText:Landroid/widget/TextView;

    .line 158
    invoke-direct {p0}, Lcom/android/phone/HtcIncallControlPanel;->resetSpeakerButtonOnClickListener()V

    .line 163
    invoke-virtual {p0}, Lcom/android/phone/HtcIncallControlPanel;->onLocaleChanged()V

    .line 167
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    const-string v2, "phone_btn_left_speaker"

    const-string v3, "drawable"

    const-string v4, "phone_btn_contorl_left"

    const-string v5, "drawable"

    invoke-static {v4, v5, v1}, Lcom/android/phone/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/phone/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 172
    .local v0, resId:I
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlMute:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v2, v0}, Lcom/android/phone/widget/ControlButton;->setBackgroundResource(I)V

    .line 175
    .end local v0           #resId:I
    :cond_0
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x8

    .line 176
    .local v1, visibility:I
    :cond_1
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    .end local v1           #visibility:I
    :cond_2
    return-void
.end method

.method public muteStateChange(Z)V
    .locals 5
    .parameter "on"

    .prologue
    const/4 v2, 0x0

    .line 765
    iget-object v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 766
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 767
    .local v0, arg1:I
    :goto_0
    iget-object v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 769
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 771
    .end local v0           #arg1:I
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 766
    goto :goto_0
.end method

.method onBTStateChagned(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 1145
    iget-boolean v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mPendingSpeakerOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1147
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/HtcIncallControlPanel;->turnSpeaker(Z)V

    .line 1152
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mPendingSpeakerOn:Z

    .line 1153
    return-void

    .line 1149
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/HtcIncallControlPanel;->updateLayout(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const v5, 0x2020003

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 662
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 663
    .local v0, id:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v2, v4, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 664
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    packed-switch v0, :pswitch_data_0

    .line 744
    :pswitch_0
    const-string v3, "HtcIncallControlPanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick: unknown id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 666
    :pswitch_1
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    if-nez v4, :cond_1

    .line 667
    const-string v3, "HtcIncallControlPanel"

    const-string v4, "speaker on/off and no mIncallScreen assigned"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 669
    :cond_1
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    iget-object v5, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v5}, Lcom/android/phone/InCallScreen;->switchSpeakerOnOff(Landroid/content/Context;)V

    .line 672
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 680
    :pswitch_2
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v4

    if-nez v4, :cond_2

    .line 681
    .local v1, newMuteState:Z
    :goto_1
    if-nez v2, :cond_3

    .line 682
    const-string v3, "HtcIncallControlPanel"

    const-string v4, "mute on/off and no phone assigned"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #newMuteState:Z
    :cond_2
    move v1, v3

    .line 680
    goto :goto_1

    .line 684
    .restart local v1       #newMuteState:Z
    :cond_3
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 687
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 694
    .end local v1           #newMuteState:Z
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/phone/HtcIncallControlPanel;->turnBT(Z)V

    .line 695
    invoke-virtual {p0, v1}, Lcom/android/phone/HtcIncallControlPanel;->dismissDialog(I)V

    .line 696
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v4, v3}, Lcom/android/phone/widget/ControlButton;->setChecked(Z)V

    .line 697
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 698
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v5, v3}, Lcom/android/phone/InCallScreen;->setButtonChecked(IZ)V

    goto :goto_0

    .line 704
    :pswitch_4
    invoke-direct {p0, v3}, Lcom/android/phone/HtcIncallControlPanel;->turnBT(Z)V

    .line 705
    invoke-direct {p0, v3}, Lcom/android/phone/HtcIncallControlPanel;->turnSpeaker(Z)V

    .line 706
    invoke-virtual {p0, v1}, Lcom/android/phone/HtcIncallControlPanel;->dismissDialog(I)V

    .line 707
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v4, v3}, Lcom/android/phone/widget/ControlButton;->setChecked(Z)V

    .line 708
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 709
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v5, v3}, Lcom/android/phone/InCallScreen;->setButtonChecked(IZ)V

    goto :goto_0

    .line 715
    :pswitch_5
    invoke-direct {p0, v1}, Lcom/android/phone/HtcIncallControlPanel;->turnSpeaker(Z)V

    .line 716
    invoke-virtual {p0, v1}, Lcom/android/phone/HtcIncallControlPanel;->dismissDialog(I)V

    .line 717
    iget-object v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v3, v1}, Lcom/android/phone/widget/ControlButton;->setChecked(Z)V

    .line 718
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 719
    iget-object v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v5, v1}, Lcom/android/phone/InCallScreen;->setButtonChecked(IZ)V

    goto :goto_0

    .line 724
    :pswitch_6
    iget-object v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    if-nez v3, :cond_4

    .line 725
    const-string v3, "HtcIncallControlPanel"

    const-string v4, "hold/unhold and no mIncallScreen assigned"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 727
    :cond_4
    iget-object v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->switchHoldUnhold()V

    goto/16 :goto_0

    .line 732
    :pswitch_7
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;)V

    goto/16 :goto_0

    .line 736
    :pswitch_8
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 740
    :pswitch_9
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    goto/16 :goto_0

    .line 664
    :pswitch_data_0
    .packed-switch 0x7f0800b0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLocaleChanged()V
    .locals 2

    .prologue
    .line 1168
    const-string v0, "HtcIncallControlPanel"

    const-string v1, "onLocaleChanged(): reset the text string by locale"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mMuteText:Landroid/widget/TextView;

    const v1, 0x7f0e0250

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1171
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mSpeakerText:Landroid/widget/TextView;

    const v1, 0x7f0e024e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1172
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mHoldText:Landroid/widget/TextView;

    const v1, 0x7f0e0251

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1173
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mAddCallText:Landroid/widget/TextView;

    const v1, 0x7f0e0255

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1174
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mEndHeldCallText:Landroid/widget/TextView;

    const v1, 0x7f0e0084

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1175
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mMergeCallText:Landroid/widget/TextView;

    const v1, 0x7f0e0254

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1176
    return-void
.end method

.method public removeIncallScreen()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    .line 259
    :cond_0
    return-void
.end method

.method public speakerStateChange(Z)V
    .locals 5
    .parameter "on"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 750
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 751
    if-eqz p1, :cond_1

    move v0, v2

    .line 752
    .local v0, arg1:I
    :goto_0
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 754
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 756
    .end local v0           #arg1:I
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 751
    goto :goto_0
.end method

.method public updateFakeScreen(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call$State;)V
    .locals 0
    .parameter "phone"
    .parameter "fgCallState"

    .prologue
    .line 326
    invoke-direct {p0, p1, p2}, Lcom/android/phone/HtcIncallControlPanel;->updateMuteButton(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call$State;)V

    .line 328
    invoke-virtual {p0}, Lcom/android/phone/HtcIncallControlPanel;->updateSpeakerButton()V

    .line 330
    invoke-direct {p0, p1}, Lcom/android/phone/HtcIncallControlPanel;->updateHoldButton(Lcom/android/internal/telephony/Phone;)V

    .line 332
    invoke-direct {p0}, Lcom/android/phone/HtcIncallControlPanel;->updateAddCallButton()V

    .line 333
    return-void
.end method

.method updateLayout(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .parameter "phone"

    .prologue
    const/4 v5, 0x0

    .line 269
    const-string v3, "HtcIncallControlPanel"

    const-string v4, "updateLayout"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-boolean v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mPendingSpeakerOn:Z

    if-eqz v3, :cond_0

    .line 273
    iput-boolean v5, p0, Lcom/android/phone/HtcIncallControlPanel;->mPendingSpeakerOn:Z

    .line 276
    :cond_0
    iget-object v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getMode()Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-result-object v2

    .line 277
    .local v2, mode:Lcom/android/phone/InCallScreen$InCallScreenMode;
    invoke-direct {p0, p1, v2}, Lcom/android/phone/HtcIncallControlPanel;->updateControlLayout(Lcom/android/internal/telephony/Phone;Lcom/android/phone/InCallScreen$InCallScreenMode;)Z

    move-result v1

    .line 288
    .local v1, isControlVisible:Z
    if-eqz v1, :cond_1

    .line 292
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 294
    .local v0, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v2}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 296
    const-string v3, "HtcIncallControlPanel"

    const-string v4, "isRinging: set all disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-direct {p0, p1}, Lcom/android/phone/HtcIncallControlPanel;->updateMuteState(Lcom/android/internal/telephony/Phone;)V

    .line 299
    invoke-direct {p0}, Lcom/android/phone/HtcIncallControlPanel;->updateSpeakerState()V

    .line 300
    iget-object v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlMute:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v3, v5}, Lcom/android/phone/widget/ControlButton;->setEnabled(Z)V

    .line 301
    iget-object v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v3, v5}, Lcom/android/phone/widget/ControlButton;->setEnabled(Z)V

    .line 302
    iget-object v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlHold:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v3, v5}, Lcom/android/phone/widget/ControlButton;->setEnabled(Z)V

    .line 303
    iget-object v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlAddCall:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 319
    .end local v0           #fgCallState:Lcom/android/internal/telephony/Call$State;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/HtcIncallControlPanel;->updateAudioSrcDialog()V

    .line 320
    return-void

    .line 306
    .restart local v0       #fgCallState:Lcom/android/internal/telephony/Call$State;
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/phone/HtcIncallControlPanel;->updateMuteButton(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call$State;)V

    .line 309
    invoke-virtual {p0}, Lcom/android/phone/HtcIncallControlPanel;->updateSpeakerButton()V

    goto :goto_0
.end method

.method public updateSpeakerButton()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 415
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 416
    .local v2, phoneApp:Lcom/android/phone/PhoneApp;
    iget-object v6, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 417
    .local v3, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v3, :cond_0

    move v0, v4

    .line 418
    .local v0, isIdle:Z
    :goto_0
    sget-object v6, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v3, :cond_1

    move v1, v4

    .line 420
    .local v1, isRinging:Z
    :goto_1
    sget-boolean v4, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 422
    invoke-direct {p0, v0, v1}, Lcom/android/phone/HtcIncallControlPanel;->updateAudioSrcButton(ZZ)V

    .line 427
    :goto_2
    invoke-direct {p0}, Lcom/android/phone/HtcIncallControlPanel;->resetSpeakerButtonOnClickListener()V

    .line 428
    return-void

    .end local v0           #isIdle:Z
    .end local v1           #isRinging:Z
    :cond_0
    move v0, v5

    .line 417
    goto :goto_0

    .restart local v0       #isIdle:Z
    :cond_1
    move v1, v5

    .line 418
    goto :goto_1

    .line 424
    .restart local v1       #isRinging:Z
    :cond_2
    invoke-direct {p0, v2, v0, v1}, Lcom/android/phone/HtcIncallControlPanel;->updateSpeakerButton(Lcom/android/phone/PhoneApp;ZZ)V

    goto :goto_2
.end method
