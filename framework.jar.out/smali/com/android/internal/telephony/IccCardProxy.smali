.class public Lcom/android/internal/telephony/IccCardProxy;
.super Lcom/android/internal/telephony/IccCard;
.source "IccCardProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCardProxy$1;
    }
.end annotation


# static fields
.field private static final AID_ENTRY_INDEX_CSIM:I = 0x0

.field private static final AID_ENTRY_INDEX_USIM:I = 0x1

.field private static final CHECK_AID_NUM:I = 0x2

.field private static final CSIM_ONLY_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType; = null

.field private static final CSIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType; = null

#the value of this static final field might be set in the static constructor
.field public static final ENABLED:Z = false

.field private static final ISIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType; = null

.field private static final LOCAL_DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "IccCardProxy"

.field private static final RUIM_BEFORE_USIM_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

.field private static final RUIM_ONLY_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

.field private static final RUIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

.field private static final SIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

.field private static final TEST_ICC:Ljava/util/ArrayList;

.field private static final UNKNOWN_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

.field private static final USIM_BEFORE_RUIM_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

.field private static final USIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;


# instance fields
.field AID_CSIM:Ljava/lang/String;

.field AID_USIM:Ljava/lang/String;

.field private mAllIccRecordsLoaded:[Z

.field private mDefaultIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

.field private mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

.field private mDefaultIccRecords:Lcom/android/internal/telephony/IccRecords;

.field private mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

.field private mIccRecords:[Lcom/android/internal/telephony/IccRecords;

.field private mNumOfIccRecordsLoaded:I

.field private mNvOperatorNumeric:Ljava/lang/String;

.field private mStkService:Lcom/android/internal/telephony/cat/CatService;

.field private mTestIcc:Z

.field private mUsimStkFH:Lcom/android/internal/telephony/IccFileHandler;

.field protected recordsLoadedRegistrants:Landroid/os/RegistrantList;

.field private supportAID:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 52
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x61

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xad

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x49

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/IccCardProxy;->ENABLED:Z

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "001"

    aput-object v4, v3, v1

    const-string v4, "999"

    aput-object v4, v3, v2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->TEST_ICC:Ljava/util/ArrayList;

    .line 751
    new-array v0, v6, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v1

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v2

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v5

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->SIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 757
    new-array v0, v5, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v1

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->ISIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 762
    new-array v0, v6, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v1

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v2

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v5

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->USIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 767
    new-array v0, v7, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v1

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v2

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v5

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v6

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->CSIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 773
    new-array v0, v5, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v1

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->CSIM_ONLY_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 777
    new-array v0, v7, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v1

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v2

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v5

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v6

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->RUIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 783
    new-array v0, v5, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v1

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->RUIM_ONLY_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 787
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v1

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v2

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v5

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v6

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v7

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->USIM_BEFORE_RUIM_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 794
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->RUIM_BEFORE_USIM_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 801
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy;->RUIM_BEFORE_USIM_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->UNKNOWN_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    return-void

    :cond_1
    move v0, v1

    .line 52
    goto/16 :goto_0
.end method

.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 6
    .parameter "phone"

    .prologue
    const/16 v5, 0x35

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 90
    const-string v0, "Iccs"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/IccCard;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 69
    const-string v0, "A0000003431002"

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->AID_CSIM:Ljava/lang/String;

    .line 70
    const-string v0, "A0000000871002"

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->AID_USIM:Ljava/lang/String;

    .line 76
    new-array v0, v4, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->supportAID:[Z

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mTestIcc:Z

    .line 231
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMLockedOrAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x37

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/android/internal/telephony/BaseCommands;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v5, v3}, Lcom/android/internal/telephony/BaseCommands;->registerForCdmaSubscriptionSourceChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 113
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportSimHotSwapFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccHotSwapHandler:Landroid/os/Handler;

    const/16 v2, 0x3f7

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateStateProperty()V

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->resetIccDetailStatus()V

    .line 126
    new-instance v0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 127
    return-void
.end method

.method private dispose_StkService()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 500
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    .line 502
    :cond_0
    return-void
.end method

.method private searchIccOperatorNumeric([Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;
    .locals 4
    .parameter "searchTypes"

    .prologue
    .line 519
    const/4 v1, 0x0

    .line 521
    .local v1, operatorNumeric:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    if-nez v1, :cond_3

    .line 522
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getCdmaSubscriptionSource()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    aget-object v2, p1, v0

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq v2, v3, :cond_0

    aget-object v2, p1, v0

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne v2, v3, :cond_1

    .line 525
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mNvOperatorNumeric:Ljava/lang/String;

    .line 527
    :cond_1
    if-nez v1, :cond_2

    .line 528
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->getIccOperatorNumeric(Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;

    move-result-object v1

    .line 521
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    :cond_3
    return-object v1
.end method

.method private searchIccServiceProviderName([Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;
    .locals 4
    .parameter "searchTypes"

    .prologue
    .line 551
    const/4 v2, 0x0

    .line 553
    .local v2, operatorSpn:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    if-nez v2, :cond_1

    .line 554
    if-nez v2, :cond_0

    .line 555
    aget-object v3, p1, v0

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    .line 556
    .local v1, iccRecd:Lcom/android/internal/telephony/IccRecords;
    if-eqz v1, :cond_0

    .line 557
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v2

    .line 553
    .end local v1           #iccRecd:Lcom/android/internal/telephony/IccRecords;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 561
    :cond_1
    return-object v2
.end method

.method private setUICCStatus()V
    .locals 14

    .prologue
    const/16 v13, 0xe

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 419
    const/4 v1, 0x0

    .line 420
    .local v1, appIndex:I
    const/4 v2, 0x0

    .line 421
    .local v2, e_utran:Z
    const/4 v7, 0x0

    .line 427
    .local v7, provision:Z
    const/4 v3, 0x0

    .line 428
    .local v3, epsmmi:Z
    const/4 v4, 0x0

    .line 431
    .local v4, excpetion:Z
    const/4 v6, 0x0

    .line 432
    .local v6, operator:Ljava/lang/String;
    :goto_0
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    array-length v9, v9

    if-ge v1, v9, :cond_2

    .line 433
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    aget-object v9, v9, v1

    if-eqz v9, :cond_0

    .line 436
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, AID:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v13, :cond_0

    .line 438
    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 440
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->AID_USIM:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 441
    const-string v9, "IccCardProxy"

    const-string v10, "Support AID_USIM"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->supportAID:[Z

    aput-boolean v11, v9, v11

    .line 443
    sget-object v9, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v5

    .line 444
    .local v5, iccRecd:Lcom/android/internal/telephony/IccRecords;
    if-eqz v5, :cond_0

    .line 445
    instance-of v9, v5, Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v9, :cond_0

    .line 446
    iget-boolean v2, v5, Lcom/android/internal/telephony/IccRecords;->mEUTRAN:Z

    .line 448
    iget-boolean v3, v5, Lcom/android/internal/telephony/IccRecords;->mEPSMMI:Z

    .line 449
    iget-boolean v4, v5, Lcom/android/internal/telephony/IccRecords;->mEUTRAN_excpetion:Z

    .line 451
    check-cast v5, Lcom/android/internal/telephony/gsm/SIMRecords;

    .end local v5           #iccRecd:Lcom/android/internal/telephony/IccRecords;
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    .line 467
    .end local v0           #AID:Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    .restart local v0       #AID:Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->AID_CSIM:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 456
    const-string v9, "IccCardProxy"

    const-string v10, "Support AID_CSIM"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->supportAID:[Z

    aput-boolean v11, v9, v12

    .line 458
    sget-object v9, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v5

    .line 459
    .restart local v5       #iccRecd:Lcom/android/internal/telephony/IccRecords;
    if-eqz v5, :cond_0

    .line 460
    instance-of v9, v5, Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v9, :cond_0

    .line 461
    iget-boolean v7, v5, Lcom/android/internal/telephony/IccRecords;->mIMSI_M_Programmed:Z

    goto :goto_1

    .line 470
    .end local v0           #AID:Ljava/lang/String;
    .end local v5           #iccRecd:Lcom/android/internal/telephony/IccRecords;
    :cond_2
    const/4 v8, 0x0

    .line 471
    .local v8, uicc_type:I
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->supportAID:[Z

    aget-boolean v9, v9, v11

    if-ne v9, v11, :cond_5

    if-ne v2, v11, :cond_5

    .line 472
    const/4 v8, 0x2

    .line 485
    :cond_3
    :goto_2
    const-string v9, "IccCardProxy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "uicc_type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 488
    const-string v6, ""

    .line 492
    :cond_4
    invoke-virtual {p0, v7, v8, v6}, Lcom/android/internal/telephony/IccCardProxy;->broadcastExtraIccStateChangedIntent(ZILjava/lang/String;)V

    .line 494
    return-void

    .line 473
    :cond_5
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->supportAID:[Z

    aget-boolean v9, v9, v12

    if-eq v9, v11, :cond_6

    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->supportAID:[Z

    aget-boolean v9, v9, v11

    if-ne v9, v11, :cond_3

    .line 477
    :cond_6
    if-nez v2, :cond_7

    if-ne v4, v11, :cond_7

    if-ne v3, v11, :cond_7

    .line 478
    const/4 v8, 0x2

    goto :goto_2

    .line 480
    :cond_7
    const/4 v8, 0x1

    goto :goto_2
.end method


# virtual methods
.method public checkTestIcc()Z
    .locals 3

    .prologue
    .line 223
    const-string v0, "IccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[checkTestIcc] mTestIcc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mTestIcc:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mTestIcc:Z

    return v0
.end method

.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 131
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->dispose_StkService()V

    .line 132
    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mUsimStkFH:Lcom/android/internal/telephony/IccFileHandler;

    .line 135
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMLockedOrAbsent(Landroid/os/Handler;)V

    .line 136
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 140
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 141
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/android/internal/telephony/BaseCommands;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/BaseCommands;->unregisterForIccStatusChanged(Landroid/os/Handler;)V

    .line 143
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/android/internal/telephony/BaseCommands;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/BaseCommands;->unregisterForCdmaSubscriptionSourceChanged(Landroid/os/Handler;)V

    .line 148
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportSimHotSwapFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mIccHotSwapHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMHotSwap(Landroid/os/Handler;)V

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v1, :cond_4

    .line 154
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 155
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 157
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    aput-object v3, v1, v0

    .line 154
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_3
    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    .line 164
    .end local v0           #i:I
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    if-eqz v1, :cond_6

    .line 165
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 166
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    .line 167
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccRecords;->dispose()V

    .line 168
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    aput-object v3, v1, v0

    .line 165
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 174
    .end local v0           #i:I
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    if-eqz v1, :cond_7

    .line 175
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->dispose()V

    .line 176
    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 178
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v1, :cond_8

    .line 180
    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 182
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v1, :cond_9

    .line 183
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 184
    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 186
    :cond_9
    return-void
.end method

.method public getCdmaSubscriptionSource()I
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Lcom/android/internal/telephony/IccCard;->mCdmaSubscriptionSource:I

    return v0
.end method

.method public getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;
    .locals 12
    .parameter "appType"

    .prologue
    .line 804
    iget-object v10, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v10, :cond_4

    .line 806
    sget-object v9, Lcom/android/internal/telephony/IccCardProxy;->UNKNOWN_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 807
    .local v9, searchingTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    sget-object v10, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 827
    :goto_0
    move-object v0, v9

    .local v0, arr$:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v8, v0, v3

    .line 828
    .local v8, searchType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    .local v1, arr$:[Lcom/android/internal/telephony/IccFileHandler;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v6, :cond_3

    aget-object v4, v1, v2

    .line 829
    .local v4, iccFileH:Lcom/android/internal/telephony/IccFileHandler;
    const/4 v7, 0x0

    .line 830
    .local v7, matchHandler:Z
    if-eqz v4, :cond_0

    .line 831
    sget-object v10, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_1

    .line 858
    :cond_0
    :goto_3
    if-eqz v7, :cond_2

    .line 866
    .end local v1           #arr$:[Lcom/android/internal/telephony/IccFileHandler;
    .end local v2           #i$:I
    .end local v4           #iccFileH:Lcom/android/internal/telephony/IccFileHandler;
    .end local v6           #len$:I
    .end local v7           #matchHandler:Z
    .end local v8           #searchType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    .end local v9           #searchingTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    :goto_4
    return-object v4

    .line 809
    .restart local v9       #searchingTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    :pswitch_0
    sget-object v9, Lcom/android/internal/telephony/IccCardProxy;->SIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 810
    goto :goto_0

    .line 812
    :pswitch_1
    sget-object v9, Lcom/android/internal/telephony/IccCardProxy;->USIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 813
    goto :goto_0

    .line 815
    :pswitch_2
    sget-object v9, Lcom/android/internal/telephony/IccCardProxy;->RUIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 816
    goto :goto_0

    .line 818
    :pswitch_3
    sget-object v9, Lcom/android/internal/telephony/IccCardProxy;->CSIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 819
    goto :goto_0

    .line 822
    :pswitch_4
    sget-object v9, Lcom/android/internal/telephony/IccCardProxy;->ISIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    goto :goto_0

    .line 833
    .restart local v1       #arr$:[Lcom/android/internal/telephony/IccFileHandler;
    .restart local v2       #i$:I
    .restart local v4       #iccFileH:Lcom/android/internal/telephony/IccFileHandler;
    .restart local v6       #len$:I
    .restart local v7       #matchHandler:Z
    .restart local v8       #searchType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :pswitch_5
    instance-of v7, v4, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    .line 834
    goto :goto_3

    .line 836
    :pswitch_6
    instance-of v7, v4, Lcom/android/internal/telephony/gsm/UsimFileHandler;

    .line 837
    goto :goto_3

    .line 839
    :pswitch_7
    instance-of v7, v4, Lcom/android/internal/telephony/cdma/RuimFileHandler;

    .line 840
    goto :goto_3

    .line 842
    :pswitch_8
    instance-of v7, v4, Lcom/android/internal/telephony/cdma/CsimFileHandler;

    .line 843
    goto :goto_3

    .line 846
    :pswitch_9
    instance-of v7, v4, Lcom/android/internal/telephony/ims/ISIMFileHandler;

    .line 847
    goto :goto_3

    .line 849
    :pswitch_a
    instance-of v10, v4, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    if-nez v10, :cond_1

    instance-of v10, v4, Lcom/android/internal/telephony/gsm/UsimFileHandler;

    if-nez v10, :cond_1

    instance-of v10, v4, Lcom/android/internal/telephony/cdma/RuimFileHandler;

    if-nez v10, :cond_1

    instance-of v10, v4, Lcom/android/internal/telephony/cdma/CsimFileHandler;

    if-nez v10, :cond_1

    instance-of v10, v4, Lcom/android/internal/telephony/ims/ISIMFileHandler;

    if-nez v10, :cond_1

    const/4 v7, 0x1

    :goto_5
    goto :goto_3

    :cond_1
    const/4 v7, 0x0

    goto :goto_5

    .line 828
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 827
    .end local v4           #iccFileH:Lcom/android/internal/telephony/IccFileHandler;
    .end local v7           #matchHandler:Z
    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_1

    .line 865
    .end local v1           #arr$:[Lcom/android/internal/telephony/IccFileHandler;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v8           #searchType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    .end local v9           #searchingTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    :cond_4
    const-string v10, "IccCardProxy"

    const-string v11, "Default IccFileHandler"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    goto :goto_4

    .line 807
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 831
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public final getIccFileHandlers()[Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    array-length v0, v0

    if-gtz v0, :cond_1

    .line 929
    :cond_0
    const/4 v0, 0x0

    .line 931
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    goto :goto_0
.end method

.method public getIccOperatorNumeric(Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;
    .locals 3
    .parameter "appType"

    .prologue
    .line 535
    const/4 v1, 0x0

    .line 537
    .local v1, operatorNumeric:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    .line 538
    .local v0, iccRecd:Lcom/android/internal/telephony/IccRecords;
    if-eqz v0, :cond_0

    .line 539
    instance-of v2, v0, Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v2, :cond_1

    .line 540
    check-cast v0, Lcom/android/internal/telephony/cdma/RuimRecords;

    .end local v0           #iccRecd:Lcom/android/internal/telephony/IccRecords;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 546
    :cond_0
    :goto_0
    return-object v1

    .line 542
    .restart local v0       #iccRecd:Lcom/android/internal/telephony/IccRecords;
    :cond_1
    instance-of v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v2, :cond_0

    .line 543
    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    .end local v0           #iccRecd:Lcom/android/internal/telephony/IccRecords;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    return-object v0
.end method

.method public getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;
    .locals 12
    .parameter "appType"

    .prologue
    .line 870
    iget-object v10, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    if-eqz v10, :cond_4

    .line 872
    sget-object v9, Lcom/android/internal/telephony/IccCardProxy;->UNKNOWN_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 873
    .local v9, searchingTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    sget-object v10, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 888
    :goto_0
    move-object v0, v9

    .local v0, arr$:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v8, v0, v3

    .line 889
    .local v8, searchType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    .local v1, arr$:[Lcom/android/internal/telephony/IccRecords;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v6, :cond_3

    aget-object v4, v1, v2

    .line 890
    .local v4, iccRecord:Lcom/android/internal/telephony/IccRecords;
    const/4 v7, 0x0

    .line 891
    .local v7, matchRecord:Z
    if-eqz v4, :cond_0

    .line 892
    sget-object v10, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_1

    .line 913
    :cond_0
    :goto_3
    :pswitch_0
    if-eqz v7, :cond_2

    .line 920
    .end local v1           #arr$:[Lcom/android/internal/telephony/IccRecords;
    .end local v2           #i$:I
    .end local v4           #iccRecord:Lcom/android/internal/telephony/IccRecords;
    .end local v6           #len$:I
    .end local v7           #matchRecord:Z
    .end local v8           #searchType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    .end local v9           #searchingTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    :goto_4
    return-object v4

    .line 875
    .restart local v9       #searchingTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    :pswitch_1
    sget-object v9, Lcom/android/internal/telephony/IccCardProxy;->SIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 876
    goto :goto_0

    .line 878
    :pswitch_2
    sget-object v9, Lcom/android/internal/telephony/IccCardProxy;->USIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 879
    goto :goto_0

    .line 881
    :pswitch_3
    sget-object v9, Lcom/android/internal/telephony/IccCardProxy;->RUIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 882
    goto :goto_0

    .line 884
    :pswitch_4
    sget-object v9, Lcom/android/internal/telephony/IccCardProxy;->CSIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    goto :goto_0

    .line 894
    .restart local v1       #arr$:[Lcom/android/internal/telephony/IccRecords;
    .restart local v2       #i$:I
    .restart local v4       #iccRecord:Lcom/android/internal/telephony/IccRecords;
    .restart local v6       #len$:I
    .restart local v7       #matchRecord:Z
    .restart local v8       #searchType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :pswitch_5
    instance-of v7, v4, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 895
    goto :goto_3

    .line 897
    :pswitch_6
    instance-of v7, v4, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 898
    goto :goto_3

    .line 900
    :pswitch_7
    instance-of v7, v4, Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 901
    goto :goto_3

    .line 903
    :pswitch_8
    instance-of v7, v4, Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 904
    goto :goto_3

    .line 906
    :pswitch_9
    instance-of v10, v4, Lcom/android/internal/telephony/gsm/SIMRecords;

    if-nez v10, :cond_1

    instance-of v10, v4, Lcom/android/internal/telephony/gsm/SIMRecords;

    if-nez v10, :cond_1

    instance-of v10, v4, Lcom/android/internal/telephony/cdma/RuimRecords;

    if-nez v10, :cond_1

    instance-of v10, v4, Lcom/android/internal/telephony/cdma/RuimRecords;

    if-nez v10, :cond_1

    const/4 v7, 0x1

    :goto_5
    goto :goto_3

    :cond_1
    const/4 v7, 0x0

    goto :goto_5

    .line 889
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 888
    .end local v4           #iccRecord:Lcom/android/internal/telephony/IccRecords;
    .end local v7           #matchRecord:Z
    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_1

    .line 919
    .end local v1           #arr$:[Lcom/android/internal/telephony/IccRecords;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v8           #searchType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    .end local v9           #searchingTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    :cond_4
    const-string v10, "IccCardProxy"

    const-string v11, "Default IccRecords"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccRecords:Lcom/android/internal/telephony/IccRecords;

    goto :goto_4

    .line 873
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 892
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public getRecordsLoaded()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 247
    iget-object v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    if-eqz v5, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    .local v0, arr$:[Lcom/android/internal/telephony/IccRecords;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 249
    .local v2, iccRec:Lcom/android/internal/telephony/IccRecords;
    if-eqz v2, :cond_1

    .line 250
    invoke-virtual {v2}, Lcom/android/internal/telephony/IccRecords;->getRecordsLoaded()Z

    move-result v5

    if-nez v5, :cond_1

    .line 257
    .end local v0           #arr$:[Lcom/android/internal/telephony/IccRecords;
    .end local v1           #i$:I
    .end local v2           #iccRec:Lcom/android/internal/telephony/IccRecords;
    .end local v3           #len$:I
    :cond_0
    :goto_1
    return v4

    .line 248
    .restart local v0       #arr$:[Lcom/android/internal/telephony/IccRecords;
    .restart local v1       #i$:I
    .restart local v2       #iccRec:Lcom/android/internal/telephony/IccRecords;
    .restart local v3       #len$:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .end local v2           #iccRec:Lcom/android/internal/telephony/IccRecords;
    :cond_2
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    .line 202
    .local v0, iccRecord:Lcom/android/internal/telephony/IccRecords;
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v1

    .line 205
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleRadioOnOff()V
    .locals 1

    .prologue
    .line 746
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mNumOfIccRecordsLoaded:I

    .line 747
    return-void
.end method

.method public queryIccDetailStatus()V
    .locals 3

    .prologue
    .line 191
    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 192
    .local v0, anyIccHandler:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 193
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadIccDetailStatus(Landroid/os/Message;)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    const-string v1, "IccCardProxy"

    const-string v2, "No icc handler avaliable"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    .line 234
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 235
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 237
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getRecordsLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 240
    :cond_0
    return-void
.end method

.method public setAllRecordsLoaded(Ljava/lang/String;)V
    .locals 23
    .parameter "appId"

    .prologue
    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mAllIccRecordsLoaded:[Z

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 264
    const-string v18, "IccCardProxy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "IccCardProxy not updated:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-gtz v18, :cond_3

    .line 268
    :cond_2
    const-string v18, "IccCardProxy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "IccFileH empty:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    :cond_3
    const/4 v7, 0x0

    .line 273
    .local v7, appIndex:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 277
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 280
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v7, v0, :cond_6

    .line 281
    const-string v18, "IccCardProxy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "IccFileH not match:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 286
    :cond_6
    const/4 v5, 0x0

    .line 287
    .local v5, allRecordsLoaded:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mNumOfIccRecordsLoaded:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccCardProxy;->mNumOfIccRecordsLoaded:I

    .line 288
    const/4 v3, 0x0

    .line 289
    .local v3, activeRecords:I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    .local v8, arr$:[Lcom/android/internal/telephony/IccRecords;
    array-length v14, v8

    .local v14, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_2
    if-ge v11, v14, :cond_8

    aget-object v12, v8, v11

    .line 290
    .local v12, irs:Lcom/android/internal/telephony/IccRecords;
    if-eqz v12, :cond_7

    .line 291
    add-int/lit8 v3, v3, 0x1

    .line 289
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 295
    .end local v12           #irs:Lcom/android/internal/telephony/IccRecords;
    :cond_8
    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mNumOfIccRecordsLoaded:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v0, v3, :cond_9

    .line 296
    const/4 v5, 0x1

    .line 300
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mAllIccRecordsLoaded:[Z

    move-object/from16 v18, v0

    aget-boolean v18, v18, v7

    if-eqz v18, :cond_a

    if-eqz v5, :cond_0

    .line 302
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mAllIccRecordsLoaded:[Z

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aput-boolean v19, v18, v7

    .line 311
    if-nez v5, :cond_b

    .line 312
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/IccCardProxy;->mAllIccRecordsLoaded:[Z

    .local v8, arr$:[Z
    array-length v14, v8

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v14, :cond_b

    aget-boolean v4, v8, v11

    .line 313
    .local v4, allLoaded:Z
    if-eqz v4, :cond_0

    .line 312
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 321
    .end local v4           #allLoaded:Z
    .end local v8           #arr$:[Z
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccCardProxy;->setUICCStatus()V

    .line 326
    sget-object v18, Lcom/android/internal/telephony/IccCardProxy;->USIM_BEFORE_RUIM_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->searchIccOperatorNumeric([Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;

    move-result-object v6

    .line 327
    .local v6, apnOperatorNumeric:Ljava/lang/String;
    if-nez v6, :cond_c

    .line 328
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/IccCardProxy;->mNvOperatorNumeric:Ljava/lang/String;

    .line 330
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v18, v0

    const-string v19, "gsm.apn.operator.numeric"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v15, ""

    .line 335
    .local v15, operatorNumeric:Ljava/lang/String;
    const/16 v16, 0x0

    .line 336
    .local v16, operatorSpn:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCard;->mCdmaSubscriptionSource:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 406
    :cond_d
    :goto_4
    const-string v18, "IccCardProxy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Icc Operator:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", APN: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", spn:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", accType="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCard;->mCdmaSubscriptionSource:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/AsyncResult;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v18 .. v19}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 411
    const-string v18, "LOADED"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 340
    :cond_e
    sget-object v17, Lcom/android/internal/telephony/IccCardProxy;->UNKNOWN_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 341
    .local v17, searchTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 379
    const-string v18, "IccCardProxy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Preferred icc type unknown for type="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->searchIccServiceProviderName([Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;

    move-result-object v16

    .line 381
    if-nez v16, :cond_f

    .line 382
    const-string v16, ""

    .line 387
    :cond_f
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v18, v0

    const-string v19, "gsm.sim.operator.numeric"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v13, ""

    .line 390
    .local v13, iso:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_10

    .line 392
    const/16 v18, 0x0

    const/16 v19, 0x3

    :try_start_0
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v13

    .line 400
    :cond_10
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v18, v0

    const-string v19, "gsm.sim.operator.iso-country"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    if-eqz v16, :cond_d

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v18, v0

    const-string v19, "gsm.sim.operator.alpha"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 343
    .end local v13           #iso:Ljava/lang/String;
    :pswitch_0
    sget-object v17, Lcom/android/internal/telephony/IccCardProxy;->USIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 344
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->searchIccOperatorNumeric([Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;

    move-result-object v15

    .line 345
    if-nez v15, :cond_11

    .line 346
    const-string v15, ""

    .line 348
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->searchIccServiceProviderName([Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;

    move-result-object v16

    .line 349
    if-nez v16, :cond_f

    .line 350
    const-string v16, ""

    goto :goto_5

    .line 354
    :pswitch_1
    sget-object v17, Lcom/android/internal/telephony/IccCardProxy;->USIM_BEFORE_RUIM_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 355
    const/4 v15, 0x0

    .line 356
    const/4 v10, 0x0

    .local v10, i:I
    :goto_7
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_13

    if-nez v15, :cond_13

    .line 357
    if-nez v15, :cond_12

    .line 358
    aget-object v18, v17, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->getIccOperatorNumeric(Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;

    move-result-object v15

    .line 356
    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 361
    :cond_13
    if-nez v15, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccCardProxy;->getCdmaSubscriptionSource()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    .line 363
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCardProxy;->mNvOperatorNumeric:Ljava/lang/String;

    .line 365
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mNvOperatorNumeric:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mNvOperatorNumeric:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-ne v0, v15, :cond_16

    .line 375
    :cond_15
    :goto_8
    sget-object v18, Lcom/android/internal/telephony/IccCardProxy;->RUIM_BEFORE_USIM_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->searchIccServiceProviderName([Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;

    move-result-object v16

    .line 377
    goto/16 :goto_5

    .line 371
    :cond_16
    if-nez v15, :cond_15

    .line 372
    const-string v15, ""

    goto :goto_8

    .line 394
    .end local v10           #i:I
    .restart local v13       #iso:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 395
    .local v9, ex:Ljava/lang/NumberFormatException;
    const-string v18, "IccCardProxy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "countryCodeForMcc error"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 396
    .end local v9           #ex:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v9

    .line 397
    .local v9, ex:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v18, "IccCardProxy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "countryCodeForMcc error"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTestIcc(Ljava/lang/String;Z)V
    .locals 4
    .parameter "plmn"
    .parameter "ef_ad"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 214
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardProxy;->TEST_ICC:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-ne p2, v3, :cond_2

    .line 215
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mTestIcc:Z

    .line 219
    :goto_0
    const-string v0, "IccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setTestIcc] mTestIcc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mTestIcc:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void

    .line 217
    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mTestIcc:Z

    goto :goto_0
.end method

.method public setupIccOperatorNumericFromNV(Ljava/lang/String;)V
    .locals 1
    .parameter "nvOperatorNumeric"

    .prologue
    .line 511
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/IccCardProxy;->mNvOperatorNumeric:Ljava/lang/String;

    goto :goto_0
.end method

.method public unregisterForRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 244
    return-void
.end method

.method public update(Lcom/android/internal/telephony/IccCardStatus;)V
    .locals 21
    .parameter "ics"

    .prologue
    .line 577
    const/4 v14, 0x0

    .line 578
    .local v14, numApps:I
    const/4 v11, 0x0

    .line 579
    .local v11, identifiedApps:I
    if-eqz p1, :cond_0

    .line 580
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v14

    .line 582
    :cond_0
    if-gez v14, :cond_1

    .line 583
    const/4 v14, 0x0

    .line 586
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v17, v0

    if-nez v17, :cond_9

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v12, v0, [Lcom/android/internal/telephony/IccFileHandler;

    .line 588
    .local v12, mExistingIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    new-array v0, v14, [Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v17, v0

    if-nez v17, :cond_a

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v13, v0, [Lcom/android/internal/telephony/IccRecords;

    .line 592
    .local v13, mExistingIccRecords:[Lcom/android/internal/telephony/IccRecords;
    :goto_1
    new-array v0, v14, [Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    .line 593
    new-array v0, v14, [Z

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCardProxy;->mAllIccRecordsLoaded:[Z

    .line 595
    const/16 v16, 0x0

    .line 596
    .local v16, simSlotId:I
    const/4 v15, -0x1

    .line 597
    .local v15, simForStkService:I
    const/4 v7, 0x0

    .line 599
    .local v7, iccFileHandlerChange:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_11

    .line 600
    const/4 v4, 0x0

    .line 601
    .local v4, disposeExistingIccFileHandler:Z
    const/4 v3, 0x0

    .line 603
    .local v3, createNewIccFileHandler:Z
    const/4 v6, 0x0

    .line 604
    .local v6, icapp:Lcom/android/internal/telephony/IccCardApplication;
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_e

    .line 605
    if-ge v5, v14, :cond_d

    .line 606
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v6

    .line 607
    aget-object v17, v12, v5

    if-nez v17, :cond_b

    .line 608
    const/4 v3, 0x1

    .line 631
    :cond_2
    :goto_3
    if-nez v4, :cond_3

    if-eqz v3, :cond_4

    .line 632
    :cond_3
    const-string v18, "IccCardProxy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "update SIM card ap:"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " - "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    if-eqz v6, :cond_f

    iget-object v0, v6, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-object/from16 v17, v0

    :goto_4
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/4 v7, 0x1

    .line 636
    :cond_4
    if-eqz v4, :cond_6

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mUsimStkFH:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v17, v0

    aget-object v18, v12, v5

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 638
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccCardProxy;->dispose_StkService()V

    .line 639
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCardProxy;->mUsimStkFH:Lcom/android/internal/telephony/IccFileHandler;

    .line 642
    :cond_5
    aget-object v17, v12, v5

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 643
    const/16 v17, 0x0

    aput-object v17, v12, v5

    .line 644
    if-ge v5, v14, :cond_6

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mAllIccRecordsLoaded:[Z

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aput-boolean v18, v17, v5

    .line 648
    :cond_6
    if-eqz v3, :cond_8

    .line 649
    const/4 v9, 0x0

    .line 650
    .local v9, icfh:Lcom/android/internal/telephony/IccFileHandler;
    const/4 v10, 0x0

    .line 651
    .local v10, icr:Lcom/android/internal/telephony/IccRecords;
    sget-object v17, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    iget-object v0, v6, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    .line 692
    const/4 v9, 0x0

    .line 693
    const/4 v10, 0x0

    .line 696
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v17, v0

    aput-object v9, v17, v5

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v17, v0

    aput-object v10, v17, v5

    .line 698
    if-eqz v9, :cond_10

    .line 699
    add-int/lit8 v11, v11, 0x1

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mAllIccRecordsLoaded:[Z

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-boolean v18, v17, v5

    .line 599
    .end local v9           #icfh:Lcom/android/internal/telephony/IccFileHandler;
    .end local v10           #icr:Lcom/android/internal/telephony/IccRecords;
    :cond_8
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 586
    .end local v3           #createNewIccFileHandler:Z
    .end local v4           #disposeExistingIccFileHandler:Z
    .end local v5           #i:I
    .end local v6           #icapp:Lcom/android/internal/telephony/IccCardApplication;
    .end local v7           #iccFileHandlerChange:Z
    .end local v12           #mExistingIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;
    .end local v13           #mExistingIccRecords:[Lcom/android/internal/telephony/IccRecords;
    .end local v15           #simForStkService:I
    .end local v16           #simSlotId:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    goto/16 :goto_0

    .line 590
    .restart local v12       #mExistingIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    goto/16 :goto_1

    .line 610
    .restart local v3       #createNewIccFileHandler:Z
    .restart local v4       #disposeExistingIccFileHandler:Z
    .restart local v5       #i:I
    .restart local v6       #icapp:Lcom/android/internal/telephony/IccCardApplication;
    .restart local v7       #iccFileHandlerChange:Z
    .restart local v13       #mExistingIccRecords:[Lcom/android/internal/telephony/IccRecords;
    .restart local v15       #simForStkService:I
    .restart local v16       #simSlotId:I
    :cond_b
    aget-object v17, v12, v5

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v6, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 611
    const/4 v4, 0x1

    .line 612
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 615
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v17, v0

    aget-object v18, v12, v5

    aput-object v18, v17, v5

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v17, v0

    aget-object v18, v13, v5

    aput-object v18, v17, v5

    .line 617
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 621
    :cond_d
    aget-object v17, v12, v5

    if-eqz v17, :cond_2

    .line 622
    const/4 v4, 0x1

    goto/16 :goto_3

    .line 627
    :cond_e
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v6

    .line 628
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 632
    :cond_f
    const-string v17, "(null)"

    goto/16 :goto_4

    .line 654
    .restart local v9       #icfh:Lcom/android/internal/telephony/IccFileHandler;
    .restart local v10       #icr:Lcom/android/internal/telephony/IccRecords;
    :pswitch_0
    new-instance v9, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    .end local v9           #icfh:Lcom/android/internal/telephony/IccFileHandler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    iget-object v0, v6, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v9, v0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;ILjava/lang/String;)V

    .line 655
    .restart local v9       #icfh:Lcom/android/internal/telephony/IccFileHandler;
    new-instance v10, Lcom/android/internal/telephony/gsm/SIMRecords;

    .end local v10           #icr:Lcom/android/internal/telephony/IccRecords;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v10, v0, v9}, Lcom/android/internal/telephony/gsm/SIMRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    .line 656
    .restart local v10       #icr:Lcom/android/internal/telephony/IccRecords;
    if-gez v15, :cond_7

    .line 657
    move v15, v5

    goto/16 :goto_5

    .line 662
    :pswitch_1
    new-instance v9, Lcom/android/internal/telephony/gsm/UsimFileHandler;

    .end local v9           #icfh:Lcom/android/internal/telephony/IccFileHandler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    iget-object v0, v6, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v9, v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;ILjava/lang/String;)V

    .line 663
    .restart local v9       #icfh:Lcom/android/internal/telephony/IccFileHandler;
    new-instance v10, Lcom/android/internal/telephony/gsm/SIMRecords;

    .end local v10           #icr:Lcom/android/internal/telephony/IccRecords;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v10, v0, v9}, Lcom/android/internal/telephony/gsm/SIMRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    .line 664
    .restart local v10       #icr:Lcom/android/internal/telephony/IccRecords;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mUsimStkFH:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    .line 665
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/telephony/IccCardProxy;->mUsimStkFH:Lcom/android/internal/telephony/IccFileHandler;

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    invoke-static {v0, v10, v1, v9, v2}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCardProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    goto/16 :goto_5

    .line 670
    :pswitch_2
    new-instance v9, Lcom/android/internal/telephony/cdma/RuimFileHandler;

    .end local v9           #icfh:Lcom/android/internal/telephony/IccFileHandler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    iget-object v0, v6, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v9, v0, v1, v2}, Lcom/android/internal/telephony/cdma/RuimFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;ILjava/lang/String;)V

    .line 671
    .restart local v9       #icfh:Lcom/android/internal/telephony/IccFileHandler;
    new-instance v10, Lcom/android/internal/telephony/cdma/RuimRecords;

    .end local v10           #icr:Lcom/android/internal/telephony/IccRecords;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v10, v0, v9}, Lcom/android/internal/telephony/cdma/RuimRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    .line 672
    .restart local v10       #icr:Lcom/android/internal/telephony/IccRecords;
    goto/16 :goto_5

    .line 674
    :pswitch_3
    new-instance v9, Lcom/android/internal/telephony/cdma/CsimFileHandler;

    .end local v9           #icfh:Lcom/android/internal/telephony/IccFileHandler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    iget-object v0, v6, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v9, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CsimFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;ILjava/lang/String;)V

    .line 675
    .restart local v9       #icfh:Lcom/android/internal/telephony/IccFileHandler;
    new-instance v10, Lcom/android/internal/telephony/cdma/RuimRecords;

    .end local v10           #icr:Lcom/android/internal/telephony/IccRecords;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v10, v0, v9}, Lcom/android/internal/telephony/cdma/RuimRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    .line 676
    .restart local v10       #icr:Lcom/android/internal/telephony/IccRecords;
    goto/16 :goto_5

    .line 679
    :pswitch_4
    new-instance v9, Lcom/android/internal/telephony/ims/ISIMFileHandler;

    .end local v9           #icfh:Lcom/android/internal/telephony/IccFileHandler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    iget-object v0, v6, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v9, v0, v1, v2}, Lcom/android/internal/telephony/ims/ISIMFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;ILjava/lang/String;)V

    .line 680
    .restart local v9       #icfh:Lcom/android/internal/telephony/IccFileHandler;
    new-instance v10, Lcom/android/internal/telephony/ims/HtcIsimRecords;

    .end local v10           #icr:Lcom/android/internal/telephony/IccRecords;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v10, v0, v9}, Lcom/android/internal/telephony/ims/HtcIsimRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    .line 681
    .restart local v10       #icr:Lcom/android/internal/telephony/IccRecords;
    goto/16 :goto_5

    .line 703
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mAllIccRecordsLoaded:[Z

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aput-boolean v18, v17, v5

    goto/16 :goto_6

    .line 707
    .end local v3           #createNewIccFileHandler:Z
    .end local v4           #disposeExistingIccFileHandler:Z
    .end local v6           #icapp:Lcom/android/internal/telephony/IccCardApplication;
    .end local v9           #icfh:Lcom/android/internal/telephony/IccFileHandler;
    .end local v10           #icr:Lcom/android/internal/telephony/IccRecords;
    :cond_11
    if-eqz v7, :cond_12

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_12

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->setupIccRecords(Lcom/android/internal/telephony/IccRecords;)V

    .line 712
    :cond_12
    if-nez v11, :cond_14

    .line 713
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    .line 714
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    .line 715
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCardProxy;->mAllIccRecordsLoaded:[Z

    .line 742
    :cond_13
    :goto_7
    return-void

    .line 718
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mUsimStkFH:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v17, v0

    if-nez v17, :cond_15

    if-ltz v15, :cond_15

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v17, v0

    aget-object v17, v17, v15

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCardProxy;->mUsimStkFH:Lcom/android/internal/telephony/IccFileHandler;

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v18, v0

    aget-object v18, v18, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v20, v0

    aget-object v20, v20, v15

    invoke-static/range {v17 .. v21}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCardProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    .line 723
    :cond_15
    if-eqz v7, :cond_13

    .line 731
    sget-object v17, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v8

    .line 732
    .local v8, iccRec:Lcom/android/internal/telephony/IccRecords;
    if-nez v8, :cond_16

    .line 733
    sget-object v17, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v8

    .line 737
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->setupIccRecords(Lcom/android/internal/telephony/IccRecords;)V

    goto :goto_7

    .line 651
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
