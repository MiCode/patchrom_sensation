.class public Lcom/android/phone/NetworkSetting;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NetworkSetting$StarredPreference;
    }
.end annotation


# static fields
.field private static final BUTTON_AUTO_SELECT_KEY:Ljava/lang/String; = "button_auto_select_key"

.field private static final BUTTON_PREFER_NETWORKS_KEY:Ljava/lang/String; = "button_prefer_networks"

.field private static final BUTTON_SRCH_NETWRKS_KEY:Ljava/lang/String; = "button_srch_netwrks_key"

.field private static final DBG:Z = false

.field private static final DIALOG_NETWORK_AUTO_SELECT:I = 0x12c

.field private static final DIALOG_NETWORK_LIST_LOAD:I = 0xc8

.field private static final DIALOG_NETWORK_SELECTION:I = 0x64

.field private static final EVENT_AUTO_SELECT_DONE:I = 0x12c

.field private static final EVENT_NETWORK_SCAN_COMPLETED:I = 0x64

.field private static final EVENT_NETWORK_SELECTION_DONE:I = 0xc8

.field private static final EVENT_OP_ADD_ITEM:I = 0x320

.field private static final EVENT_OP_LIST_GET:I = 0x2bc

.field private static final EVENT_OP_LIST_GET_RETRY:I = 0x2bd

.field private static final EVENT_OP_REMOVE_ITEM:I = 0x384

.field private static final LIST_NETWORKS_KEY:Ljava/lang/String; = "list_networks_key"

.field private static final LOG_TAG:Ljava/lang/String; = "phone"

.field private static final REMOVE_OP_LIST_RETRY:I = 0x3

.field private static final REQUEST_TYPE_PREFER_OP:I = 0x3c


# instance fields
.field private handled:Z

.field private mAutoSelect:Lcom/htc/preference/HtcPreference;

.field private final mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

.field private mCodeList:Ljava/lang/String;

.field private mCodeary:[Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mIndexList:[I

.field protected mIsForeground:Z

.field private mListCount:I

.field private mListRetry:I

.field private mNameList:Ljava/lang/String;

.field private mNetworkList:Lcom/htc/preference/HtcPreferenceGroup;

.field private mNetworkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/htc/preference/HtcPreference;",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

.field private final mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

.field mNetworkSelectMsg:Ljava/lang/String;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRemovedError:[Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mSearchButton:Lcom/htc/preference/HtcPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field simRecordsLoadedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 129
    iput v0, p0, Lcom/android/phone/NetworkSetting;->mListCount:I

    .line 130
    iput v0, p0, Lcom/android/phone/NetworkSetting;->mListRetry:I

    .line 140
    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    .line 151
    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->handled:Z

    .line 157
    new-instance v0, Lcom/android/phone/NetworkSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$1;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    .line 371
    new-instance v0, Lcom/android/phone/NetworkSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$2;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    .line 392
    new-instance v0, Lcom/android/phone/NetworkSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$3;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    .line 404
    new-instance v0, Lcom/android/phone/NetworkSetting$4;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$4;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 903
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NetworkSetting;Ljava/util/List;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/phone/NetworkSetting;->networksListLoaded(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/NetworkSetting;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mRemovedError:[Z

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/phone/NetworkSetting;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->updateOperatorList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/NetworkSetting;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/NetworkSetting;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->callManualSelectNetwork()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/NetworkSetting;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/NetworkSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mCodeList:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/phone/NetworkSetting;->mCodeList:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$484(Lcom/android/phone/NetworkSetting;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mCodeList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mCodeList:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/NetworkSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNameList:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/phone/NetworkSetting;->mNameList:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$584(Lcom/android/phone/NetworkSetting;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNameList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mNameList:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/NetworkSetting;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mIndexList:[I

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/NetworkSetting;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/phone/NetworkSetting;->mIndexList:[I

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/NetworkSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/phone/NetworkSetting;->mListRetry:I

    return v0
.end method

.method static synthetic access$708(Lcom/android/phone/NetworkSetting;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/phone/NetworkSetting;->mListRetry:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/NetworkSetting;->mListRetry:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/NetworkSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/phone/NetworkSetting;->mListCount:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/phone/NetworkSetting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/phone/NetworkSetting;->mListCount:I

    return p1
.end method

.method static synthetic access$810(Lcom/android/phone/NetworkSetting;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/phone/NetworkSetting;->mListCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/phone/NetworkSetting;->mListCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private callManualSelectNetwork()V
    .locals 2

    .prologue
    .line 972
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/ManualSelectNetwork;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 973
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x1800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 974
    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->startActivity(Landroid/content/Intent;)V

    .line 975
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->handled:Z

    .line 976
    return-void
.end method

.method private clearList()V
    .locals 3

    .prologue
    .line 861
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreference;

    .line 862
    .local v1, p:Lcom/htc/preference/HtcPreference;
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    .line 864
    .end local v1           #p:Lcom/htc/preference/HtcPreference;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 865
    return-void
.end method

.method private displayEmptyNetworkList(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 739
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/htc/preference/HtcPreferenceGroup;

    if-eqz p1, :cond_0

    const v0, 0x7f0e02c1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->setTitle(I)V

    .line 740
    return-void

    .line 739
    :cond_0
    const v0, 0x7f0e02bf

    goto :goto_0
.end method

.method private displayNetworkQueryFailed(I)V
    .locals 3
    .parameter "error"

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 754
    .local v0, status:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 756
    return-void
.end method

.method private displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "ex"

    .prologue
    .line 761
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_0

    .line 765
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, status:Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 772
    return-void

    .line 767
    .end local v0           #status:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #status:Ljava/lang/String;
    goto :goto_0
.end method

.method private displayNetworkSelectionSucceeded()V
    .locals 5

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, status:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 780
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/NetworkSetting$6;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkSetting$6;-><init>(Lcom/android/phone/NetworkSetting;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 785
    return-void
.end method

.method private displayNetworkSeletionInProgress(Ljava/lang/String;)V
    .locals 4
    .parameter "networkStr"

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e02c4

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkSelectMsg:Ljava/lang/String;

    .line 746
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 747
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    .line 749
    :cond_0
    return-void
.end method

.method private loadNetworksList()V
    .locals 2

    .prologue
    .line 790
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 791
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    .line 796
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v0, :cond_1

    .line 797
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v0, v1}, Lcom/android/phone/INetworkQueryService;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    .line 803
    return-void

    .line 799
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 878
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NetworksList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    return-void
.end method

.method private networksListLoaded(Ljava/util/List;I)V
    .locals 7
    .parameter
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 818
    iget-boolean v4, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-eqz v4, :cond_0

    .line 819
    const/16 v4, 0xc8

    invoke-virtual {p0, v4}, Lcom/android/phone/NetworkSetting;->dismissDialog(I)V

    .line 822
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 823
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->clearList()V

    .line 825
    if-eqz p2, :cond_2

    .line 827
    invoke-direct {p0, p2}, Lcom/android/phone/NetworkSetting;->displayNetworkQueryFailed(I)V

    .line 828
    invoke-direct {p0, v5}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    .line 858
    :cond_1
    :goto_0
    return-void

    .line 830
    :cond_2
    if-eqz p1, :cond_4

    .line 831
    invoke-direct {p0, v6}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    .line 834
    const-string v4, "gsm.operator.numeric"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 839
    .local v3, operator:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/OperatorInfo;

    .line 840
    .local v2, ni:Lcom/android/internal/telephony/OperatorInfo;
    new-instance v0, Lcom/android/phone/NetworkSetting$StarredPreference;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$StarredPreference;-><init>(Landroid/content/Context;)V

    .line 841
    .local v0, carrier:Lcom/android/phone/NetworkSetting$StarredPreference;
    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/phone/NetworkSetting$StarredPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 843
    invoke-virtual {v0, v6}, Lcom/android/phone/NetworkSetting$StarredPreference;->setPersistent(Z)V

    .line 844
    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 845
    invoke-virtual {v0, v5}, Lcom/android/phone/NetworkSetting$StarredPreference;->setChecked(Z)V

    .line 848
    :cond_3
    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 849
    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 855
    .end local v0           #carrier:Lcom/android/phone/NetworkSetting$StarredPreference;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #ni:Lcom/android/internal/telephony/OperatorInfo;
    .end local v3           #operator:Ljava/lang/String;
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    goto :goto_0
.end method

.method private selectNetworkAutomatic()V
    .locals 3

    .prologue
    const/16 v2, 0x12c

    .line 869
    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-eqz v1, :cond_0

    .line 870
    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    .line 873
    :cond_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 874
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 875
    return-void
.end method

.method private updateOperatorList(Ljava/lang/String;)V
    .locals 4
    .parameter "selectedOperator"

    .prologue
    .line 883
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 885
    .local v0, i:I
    :cond_0
    :goto_0
    if-lez v0, :cond_2

    .line 886
    add-int/lit8 v0, v0, -0x1

    .line 887
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreferenceGroup;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 888
    .local v2, p:Lcom/htc/preference/HtcPreference;
    instance-of v3, v2, Lcom/android/phone/NetworkSetting$StarredPreference;

    if-eqz v3, :cond_0

    .line 889
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/OperatorInfo;

    .line 890
    .local v1, ni:Lcom/android/internal/telephony/OperatorInfo;
    if-eqz v1, :cond_0

    .line 894
    invoke-virtual {v1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 895
    check-cast v2, Lcom/android/phone/NetworkSetting$StarredPreference;

    .end local v2           #p:Lcom/htc/preference/HtcPreference;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/NetworkSetting$StarredPreference;->setChecked(Z)V

    goto :goto_0

    .line 897
    .restart local v2       #p:Lcom/htc/preference/HtcPreference;
    :cond_1
    check-cast v2, Lcom/android/phone/NetworkSetting$StarredPreference;

    .end local v2           #p:Lcom/htc/preference/HtcPreference;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/NetworkSetting$StarredPreference;->setChecked(Z)V

    goto :goto_0

    .line 901
    .end local v1           #ni:Lcom/android/internal/telephony/OperatorInfo;
    :cond_2
    return-void
.end method


# virtual methods
.method public addOPList()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 457
    const-string v1, ""

    .line 458
    .local v1, code:Ljava/lang/String;
    const/4 v0, 0x0

    .line 459
    .local v0, act:I
    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v5, Lcom/android/internal/telephony/PhoneProxy;

    .line 460
    .local v5, phoneproxy:Lcom/android/internal/telephony/PhoneProxy;
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GSM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 461
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v2, v6

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 462
    .local v2, gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    if-eqz v2, :cond_2

    .line 463
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/phone/NetworkSetting;->mCodeary:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_2

    .line 464
    iget-object v6, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x320

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 466
    .local v4, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/phone/NetworkSetting;->mCodeary:[Ljava/lang/String;

    aget-object v6, v6, v3

    const-string v7, "G"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 467
    iget-object v6, p0, Lcom/android/phone/NetworkSetting;->mCodeary:[Ljava/lang/String;

    aget-object v6, v6, v3

    iget-object v7, p0, Lcom/android/phone/NetworkSetting;->mCodeary:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 468
    const/4 v0, 0x1

    .line 476
    :goto_1
    invoke-virtual {v2, v1, v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->addPreferredOperatorList(Ljava/lang/String;ILandroid/os/Message;)V

    .line 463
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 469
    :cond_0
    iget-object v6, p0, Lcom/android/phone/NetworkSetting;->mCodeary:[Ljava/lang/String;

    aget-object v6, v6, v3

    const-string v7, "B"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 470
    iget-object v6, p0, Lcom/android/phone/NetworkSetting;->mCodeary:[Ljava/lang/String;

    aget-object v6, v6, v3

    iget-object v7, p0, Lcom/android/phone/NetworkSetting;->mCodeary:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 471
    const/4 v0, 0x2

    goto :goto_1

    .line 473
    :cond_1
    iget-object v6, p0, Lcom/android/phone/NetworkSetting;->mCodeary:[Ljava/lang/String;

    aget-object v1, v6, v3

    .line 474
    const/4 v0, 0x0

    goto :goto_1

    .line 480
    .end local v2           #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v3           #i:I
    .end local v4           #msg:Landroid/os/Message;
    :cond_2
    return-void
.end method

.method public displayWarnDialog()V
    .locals 4

    .prologue
    .line 951
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 952
    .local v0, confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f0e04a0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 953
    const v2, 0x7f0e049f

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 954
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 955
    const v2, 0x1040013

    new-instance v3, Lcom/android/phone/NetworkSetting$7;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkSetting$7;-><init>(Lcom/android/phone/NetworkSetting;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 960
    const v2, 0x1040009

    new-instance v3, Lcom/android/phone/NetworkSetting$8;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkSetting$8;-><init>(Lcom/android/phone/NetworkSetting;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 965
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 966
    .local v1, dialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 968
    return-void
.end method

.method public getNormalizedCarrierName(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;
    .locals 2
    .parameter "ni"

    .prologue
    .line 559
    if-eqz p1, :cond_0

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 421
    const/16 v6, 0x3c

    if-ne v6, p1, :cond_2

    const/4 v6, -0x1

    if-ne v6, p2, :cond_2

    .line 422
    iget-object v6, p0, Lcom/android/phone/NetworkSetting;->mIndexList:[I

    if-eqz v6, :cond_2

    .line 423
    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v5, Lcom/android/internal/telephony/PhoneProxy;

    .line 424
    .local v5, phoneproxy:Lcom/android/internal/telephony/PhoneProxy;
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GSM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 425
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v2, v6

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 426
    .local v2, gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    if-eqz v2, :cond_2

    .line 427
    const/4 v0, 0x1

    .line 428
    .local v0, addflag:Z
    iget-object v6, p0, Lcom/android/phone/NetworkSetting;->mIndexList:[I

    array-length v6, v6

    iput v6, p0, Lcom/android/phone/NetworkSetting;->mListCount:I

    .line 429
    iput v8, p0, Lcom/android/phone/NetworkSetting;->mListRetry:I

    .line 430
    iget v6, p0, Lcom/android/phone/NetworkSetting;->mListCount:I

    new-array v6, v6, [Z

    iput-object v6, p0, Lcom/android/phone/NetworkSetting;->mRemovedError:[Z

    .line 431
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v6, p0, Lcom/android/phone/NetworkSetting;->mListCount:I

    if-ge v3, v6, :cond_0

    .line 432
    iget-object v6, p0, Lcom/android/phone/NetworkSetting;->mRemovedError:[Z

    aput-boolean v8, v6, v3

    .line 431
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 436
    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget v6, p0, Lcom/android/phone/NetworkSetting;->mListCount:I

    if-ge v3, v6, :cond_1

    .line 437
    iget-object v6, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x384

    invoke-virtual {v6, v7, v3, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 438
    .local v4, msg:Landroid/os/Message;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v2, v6, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->removePreferredOperatorList(ILandroid/os/Message;)V

    .line 439
    const/4 v0, 0x0

    .line 436
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 443
    .end local v4           #msg:Landroid/os/Message;
    :cond_1
    if-eqz p3, :cond_2

    .line 444
    const-string v6, "code_list"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, codelist:Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/NetworkSetting;->mCodeary:[Ljava/lang/String;

    .line 446
    const/4 v6, 0x1

    if-ne v0, v6, :cond_2

    .line 447
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->addOPList()V

    .line 454
    .end local v0           #addflag:Z
    .end local v1           #codelist:Ljava/lang/String;
    .end local v2           #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v3           #i:I
    .end local v5           #phoneproxy:Lcom/android/internal/telephony/PhoneProxy;
    :cond_2
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 549
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v1, :cond_0

    .line 550
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->finish()V

    .line 556
    return-void

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 567
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 570
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 573
    const v1, 0x7f050004

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->addPreferencesFromResource(I)V

    .line 575
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 577
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    const-string v2, "list_networks_key"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceGroup;

    iput-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/htc/preference/HtcPreferenceGroup;

    .line 578
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    .line 580
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    const-string v2, "button_srch_netwrks_key"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/htc/preference/HtcPreference;

    .line 581
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    const-string v2, "button_auto_select_key"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/htc/preference/HtcPreference;

    .line 584
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    const-string v2, "button_prefer_networks"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 586
    .local v0, preferNetwork:Lcom/htc/preference/HtcPreference;
    if-eqz v0, :cond_0

    .line 587
    invoke-static {}, Lcom/android/phone/util/BuildUtils;->supportUserPreferredNetworkList()Z

    move-result v1

    if-nez v1, :cond_0

    .line 588
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 598
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 599
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/phone/NetworkSetting;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 602
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NetworkSetting;->mResolver:Landroid/content/ContentResolver;

    .line 605
    new-instance v1, Lcom/android/phone/NetworkSetting$5;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkSetting$5;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v1, p0, Lcom/android/phone/NetworkSetting;->simRecordsLoadedReceiver:Landroid/content/BroadcastReceiver;

    .line 634
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->simRecordsLoadedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/NetworkSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 636
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 693
    const/16 v1, 0x64

    if-eq p1, v1, :cond_0

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_0

    const/16 v1, 0x12c

    if-ne p1, v1, :cond_1

    .line 697
    :cond_0
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 699
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    sparse-switch p1, :sswitch_data_0

    .line 718
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 719
    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 720
    invoke-virtual {v0, p0}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 725
    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    :goto_0
    return-object v0

    .line 706
    .restart local v0       #dialog:Lcom/htc/app/HtcProgressDialog;
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkSelectMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 707
    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 708
    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    goto :goto_0

    .line 711
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 712
    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 713
    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    goto :goto_0

    .line 725
    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 699
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x12c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->unbindService(Landroid/content/ServiceConnection;)V

    .line 648
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->simRecordsLoadedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->simRecordsLoadedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 653
    :cond_0
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 654
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 658
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 659
    iput-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    .line 660
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 661
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v9, 0x1

    .line 488
    iget-object v7, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/htc/preference/HtcPreference;

    if-ne p2, v7, :cond_2

    .line 492
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 494
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->displayWarnDialog()V

    .line 542
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/phone/NetworkSetting;->handled:Z

    return v7

    .line 499
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-class v7, Lcom/android/phone/ManualSelectNetwork;

    invoke-direct {v2, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 500
    .local v2, i:Landroid/content/Intent;
    const/high16 v7, 0x1800

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 501
    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSetting;->startActivity(Landroid/content/Intent;)V

    .line 503
    iput-boolean v9, p0, Lcom/android/phone/NetworkSetting;->handled:Z

    goto :goto_0

    .line 507
    .end local v2           #i:Landroid/content/Intent;
    :cond_2
    iget-object v7, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/htc/preference/HtcPreference;

    if-ne p2, v7, :cond_3

    .line 508
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic()V

    .line 510
    iget-object v7, p0, Lcom/android/phone/NetworkSetting;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "network_selection"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 512
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 513
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->cancelTimer()V

    .line 515
    iput-boolean v9, p0, Lcom/android/phone/NetworkSetting;->handled:Z

    goto :goto_0

    .line 517
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_3
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "button_prefer_networks"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 519
    iget-object v7, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x2bc

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 520
    .local v3, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v5, Lcom/android/internal/telephony/PhoneProxy;

    .line 521
    .local v5, phoneproxy:Lcom/android/internal/telephony/PhoneProxy;
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "GSM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 522
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v1, v7

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 523
    .local v1, gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    if-eqz v1, :cond_0

    .line 524
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPreferredOperatorList(Landroid/os/Message;)V

    goto :goto_0

    .line 529
    .end local v1           #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v3           #msg:Landroid/os/Message;
    .end local v5           #phoneproxy:Lcom/android/internal/telephony/PhoneProxy;
    :cond_4
    move-object v6, p2

    .line 531
    .local v6, selectedCarrier:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v6}, Lcom/htc/preference/HtcPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 534
    .local v4, networkStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xc8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 535
    .restart local v3       #msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v7, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/OperatorInfo;

    invoke-interface {v8, v7, v3}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 537
    invoke-direct {p0, v4}, Lcom/android/phone/NetworkSetting;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    .line 539
    iput-boolean v9, p0, Lcom/android/phone/NetworkSetting;->handled:Z

    goto/16 :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 730
    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12c

    if-ne p1, v0, :cond_1

    .line 734
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 736
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 665
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 666
    iput-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    .line 667
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 670
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->isNetworkSelectionEnabled()Z

    move-result v0

    .line 672
    .local v0, enabled:Z
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/htc/preference/HtcPreference;

    if-eqz v1, :cond_0

    .line 673
    if-eqz v0, :cond_2

    .line 674
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 680
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/htc/preference/HtcPreference;

    if-eqz v1, :cond_1

    .line 681
    if-eqz v0, :cond_3

    .line 682
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 687
    :cond_1
    :goto_1
    return-void

    .line 676
    :cond_2
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0

    .line 684
    :cond_3
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_1
.end method
