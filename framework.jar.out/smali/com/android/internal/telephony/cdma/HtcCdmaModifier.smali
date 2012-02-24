.class public Lcom/android/internal/telephony/cdma/HtcCdmaModifier;
.super Ljava/lang/Object;
.source "HtcCdmaModifier.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "HtcCdmaModifier"

.field private static final mCallEndNumberOverwritten_SprintLen2:[Ljava/lang/String; = null

.field private static final mCallEndNumberOverwritten_SprintLen3:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_Sprintlen1:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_Sprintlen2:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_Sprintlen3:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_Sprintlen4:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_Sprintlen5:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_SprintlenVari:[[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_VMlen1:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_VMlen2:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_VMlen3:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_VMlen4:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_VMlenVari:[[Ljava/lang/String; = null

.field public static final mEmergencyDisplay_Sprint:Ljava/lang/String; = "9-1-1 Emergency"

.field private static final sBillPay:Ljava/lang/String; = "Bill Pay"

.field private static final sCallBeforeYouDig:Ljava/lang/String; = "Call Before You Dig"

.field private static sCallerNumberOverwritten_lenVari:[[Ljava/lang/String; = null

.field private static final sCarrierServiceRepair:Ljava/lang/String; = "Carrier Service Repair"

.field private static final sCommunityInformation:Ljava/lang/String; = "Community Information"

.field private static final sCustomerService:Ljava/lang/String; = "Customer Service"

.field private static final sDirectoryAssistance:Ljava/lang/String; = "Directory Assistance"

.field private static final sEmergencyDisplay:Ljava/lang/String; = "9-1-1 Emergency"

.field private static final sNonEmergencyServices:Ljava/lang/String; = "Non-Emergency Services"

.field private static final sOperator:Ljava/lang/String; = "Operator"

.field private static final sSprintDirectoryAssistance:Ljava/lang/String; = "Sprint Directory Assistance"

.field private static final sSprintOperator:Ljava/lang/String; = "Sprint Operator"

.field private static final sSprintWirelessAccountInformation:Ljava/lang/String; = "Sprint Wireless Account Information"

.field private static final sTRSRelayTTY:Ljava/lang/String; = "TRS Relay for TTY"

.field private static final sTrafficInformation:Ljava/lang/String; = "Traffic Information"

.field private static final sVoiceMail:Ljava/lang/String; = "Voicemail"

.field private static final sWirelessAccountInformation:Ljava/lang/String; = "Wireless Account Information"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v0, v4

    const-string v2, "Sprint Operator"

    aput-object v2, v0, v5

    const-string v2, "1"

    aput-object v2, v0, v6

    const-string v2, "Voicemail"

    aput-object v2, v0, v7

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen1:[Ljava/lang/String;

    .line 86
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "#3"

    aput-object v2, v0, v4

    aput-object v1, v0, v5

    const-string v2, "*2"

    aput-object v2, v0, v6

    aput-object v1, v0, v7

    const/4 v2, 0x4

    const-string v3, "*3"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "Bill Pay"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "*4"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "Sprint Wireless Account Information"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen2:[Ljava/lang/String;

    .line 94
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "211"

    aput-object v2, v0, v4

    const-string v2, "Community Information"

    aput-object v2, v0, v5

    const-string v2, "311"

    aput-object v2, v0, v6

    const-string v2, "Non-Emergency Services"

    aput-object v2, v0, v7

    const/4 v2, 0x4

    const-string v3, "411"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "Sprint Directory Assistance"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "511"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "Traffic Information"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "611"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "Carrier Service Repair"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "711"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "TRS Relay for TTY"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "811"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "Call Before You Dig"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "911"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "9-1-1 Emergency"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "#38"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const/16 v2, 0x12

    const-string v3, "*55"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const/16 v2, 0x14

    const-string v3, "722"

    aput-object v3, v0, v2

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen3:[Ljava/lang/String;

    .line 109
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "#399"

    aput-object v2, v0, v4

    aput-object v1, v0, v5

    const-string v2, "#911"

    aput-object v2, v0, v6

    const-string v2, "9-1-1 Emergency"

    aput-object v2, v0, v7

    const/4 v2, 0x4

    const-string v3, "*477"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v2, 0x6

    const-string v3, "*700"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v2, 0x8

    const-string v3, "*911"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "9-1-1 Emergency"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen4:[Ljava/lang/String;

    .line 118
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "#2896"

    aput-object v2, v0, v4

    aput-object v1, v0, v5

    const-string v2, "*8477"

    aput-object v2, v0, v6

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen5:[Ljava/lang/String;

    .line 124
    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen1:[Ljava/lang/String;

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen2:[Ljava/lang/String;

    aput-object v2, v0, v6

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen3:[Ljava/lang/String;

    aput-object v2, v0, v7

    const/4 v2, 0x4

    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen4:[Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen5:[Ljava/lang/String;

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_SprintlenVari:[[Ljava/lang/String;

    .line 133
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v0, v4

    const-string v2, "Operator"

    aput-object v2, v0, v5

    const-string v2, "1"

    aput-object v2, v0, v6

    const-string v2, "Voicemail"

    aput-object v2, v0, v7

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlen1:[Ljava/lang/String;

    .line 139
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "*2"

    aput-object v2, v0, v4

    const-string v2, "Customer Service"

    aput-object v2, v0, v5

    const-string v2, "*4"

    aput-object v2, v0, v6

    const-string v2, "Wireless Account Information"

    aput-object v2, v0, v7

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlen2:[Ljava/lang/String;

    .line 145
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "211"

    aput-object v2, v0, v4

    const-string v2, "Community Information"

    aput-object v2, v0, v5

    const-string v2, "311"

    aput-object v2, v0, v6

    const-string v2, "Non-Emergency Services"

    aput-object v2, v0, v7

    const/4 v2, 0x4

    const-string v3, "411"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "Directory Assistance"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "511"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "Traffic Information"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "611"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "Carrier Service Repair"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "711"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "TRS Relay for TTY"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "811"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "Call Before You Dig"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "911"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "9-1-1 Emergency"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlen3:[Ljava/lang/String;

    .line 157
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "#911"

    aput-object v2, v0, v4

    const-string v2, "9-1-1 Emergency"

    aput-object v2, v0, v5

    const-string v2, "*911"

    aput-object v2, v0, v6

    const-string v2, "9-1-1 Emergency"

    aput-object v2, v0, v7

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlen4:[Ljava/lang/String;

    .line 163
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlen1:[Ljava/lang/String;

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlen2:[Ljava/lang/String;

    aput-object v2, v0, v6

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlen3:[Ljava/lang/String;

    aput-object v2, v0, v7

    const/4 v2, 0x4

    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlen4:[Ljava/lang/String;

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlenVari:[[Ljava/lang/String;

    .line 174
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x94

    if-ne v0, v2, :cond_0

    .line 175
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_SprintlenVari:[[Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    .line 190
    :goto_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "*2"

    aput-object v2, v0, v4

    aput-object v1, v0, v5

    const-string v1, "*4"

    aput-object v1, v0, v6

    const-string v1, "Sprint Wireless Account Information"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallEndNumberOverwritten_SprintLen2:[Ljava/lang/String;

    .line 195
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "211"

    aput-object v1, v0, v4

    const-string v1, "Community Information"

    aput-object v1, v0, v5

    const-string v1, "411"

    aput-object v1, v0, v6

    const-string v1, "Sprint Directory Assistance"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "511"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Traffic Information"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "611"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Carrier Service Repair"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "711"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "TRS Relay for TTY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "811"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Call Before You Dig"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallEndNumberOverwritten_SprintLen3:[Ljava/lang/String;

    return-void

    .line 176
    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xaf

    if-ne v0, v2, :cond_1

    .line 177
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlenVari:[[Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 179
    check-cast v0, [[Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getACGServiceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 397
    const-string v2, "HtcCdmaModifier"

    const-string v3, "getACGServiceName"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    if-nez p0, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-object v1

    .line 404
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 405
    .local v0, lenNumber:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 407
    const-string v2, "611"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 409
    const-string v1, "Customer Service"

    goto :goto_0

    .line 411
    :cond_2
    const-string v2, "411"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 413
    const-string v1, "Directory Service"

    goto :goto_0

    .line 416
    :cond_3
    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    .line 418
    const-string v2, "#646"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 420
    const-string v1, "Minute Usage"

    goto :goto_0

    .line 422
    :cond_4
    const-string v2, "#729"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 424
    const-string v1, "Bill Payment"

    goto :goto_0

    .line 427
    :cond_5
    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    .line 429
    const-string v2, "#2455"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 431
    const-string v1, "Account Balance"

    goto :goto_0

    .line 434
    :cond_6
    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    .line 436
    const-string v2, "#78676"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 438
    const-string v1, "Emergency Weather"

    goto :goto_0
.end method

.method public static getCellSouthCallerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 347
    const-string v2, "HtcCdmaModifier"

    const-string v3, "getCellSouthCallerName"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    if-nez p0, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-object v1

    .line 354
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 355
    .local v0, lenNumber:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 357
    const-string v2, "611"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 359
    const-string v1, "Cellular South Customer Service"

    goto :goto_0

    .line 361
    :cond_2
    const-string v2, "411"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 363
    const-string v1, "Directory Service"

    goto :goto_0

    .line 366
    :cond_3
    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    .line 368
    const-string v2, "#646"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 370
    const-string v1, "Cellular South Minute Usage"

    goto :goto_0

    .line 372
    :cond_4
    const-string v2, "#729"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 374
    const-string v1, "Cellular South Bill Payment"

    goto :goto_0

    .line 377
    :cond_5
    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    .line 379
    const-string v2, "#2455"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 381
    const-string v1, "Cellular South Account Balance"

    goto :goto_0

    .line 384
    :cond_6
    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    .line 386
    const-string v2, "#78676"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 388
    const-string v1, "Cellular South Emergency Weather"

    goto :goto_0
.end method

.method private static getMccByNVvalue(II)Ljava/lang/String;
    .locals 1
    .parameter "mcc"
    .parameter "nvValue"

    .prologue
    .line 594
    const/4 v0, 0x0

    .line 596
    .local v0, givenMcc:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 644
    :goto_0
    return-object v0

    .line 598
    :sswitch_0
    const-string v0, "302"

    goto :goto_0

    .line 600
    :sswitch_1
    const-string v0, "311"

    goto :goto_0

    .line 602
    :sswitch_2
    const-string v0, "302"

    goto :goto_0

    .line 604
    :sswitch_3
    const-string v0, "734"

    goto :goto_0

    .line 609
    :sswitch_4
    const-string v0, "310"

    goto :goto_0

    .line 610
    :sswitch_5
    const-string v0, "311"

    goto :goto_0

    .line 612
    :sswitch_6
    const-string v0, "310"

    goto :goto_0

    .line 613
    :sswitch_7
    const-string v0, "311"

    goto :goto_0

    .line 614
    :sswitch_8
    const-string v0, "310"

    goto :goto_0

    .line 615
    :sswitch_9
    const-string v0, "311"

    goto :goto_0

    .line 616
    :sswitch_a
    const-string v0, "310"

    goto :goto_0

    .line 618
    :sswitch_b
    const-string v0, "311"

    goto :goto_0

    .line 621
    :sswitch_c
    const-string v0, "310"

    goto :goto_0

    .line 623
    :sswitch_d
    const-string v0, "311"

    goto :goto_0

    .line 625
    :sswitch_e
    const-string v0, "310"

    goto :goto_0

    .line 627
    :sswitch_f
    const-string v0, "311"

    goto :goto_0

    .line 628
    :sswitch_10
    const-string v0, "310"

    goto :goto_0

    .line 629
    :sswitch_11
    const-string v0, "311"

    goto :goto_0

    .line 630
    :sswitch_12
    const-string v0, "310"

    goto :goto_0

    .line 631
    :sswitch_13
    const-string v0, "311"

    goto :goto_0

    .line 633
    :sswitch_14
    const-string v0, "310"

    goto :goto_0

    .line 634
    :sswitch_15
    const-string v0, "311"

    goto :goto_0

    .line 635
    :sswitch_16
    const-string v0, "310"

    goto :goto_0

    .line 636
    :sswitch_17
    const-string v0, "311"

    goto :goto_0

    .line 637
    :sswitch_18
    const-string v0, "311"

    goto :goto_0

    .line 642
    :sswitch_19
    const-string v0, "310"

    goto :goto_0

    .line 596
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0xd -> :sswitch_9
        0xf -> :sswitch_3
        0x18 -> :sswitch_4
        0x19 -> :sswitch_c
        0x1a -> :sswitch_5
        0x65 -> :sswitch_4
        0x66 -> :sswitch_6
        0x68 -> :sswitch_f
        0x69 -> :sswitch_12
        0x6b -> :sswitch_f
        0x6c -> :sswitch_c
        0x6d -> :sswitch_6
        0x6e -> :sswitch_10
        0x6f -> :sswitch_7
        0x70 -> :sswitch_4
        0x71 -> :sswitch_d
        0x72 -> :sswitch_19
        0x73 -> :sswitch_17
        0x74 -> :sswitch_b
        0x75 -> :sswitch_14
        0x77 -> :sswitch_b
        0x78 -> :sswitch_18
        0x79 -> :sswitch_11
        0x7a -> :sswitch_13
        0x7b -> :sswitch_d
        0x7c -> :sswitch_e
        0x7d -> :sswitch_15
        0x7e -> :sswitch_19
        0x7f -> :sswitch_8
        0x80 -> :sswitch_e
        0x81 -> :sswitch_a
        0x82 -> :sswitch_16
        0x83 -> :sswitch_19
        0x84 -> :sswitch_14
        0x85 -> :sswitch_c
        0x86 -> :sswitch_19
        0x87 -> :sswitch_19
        0xc9 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getMccMncByCarrierId(I)Ljava/lang/String;
    .locals 5
    .parameter "nvValue"

    .prologue
    const/4 v2, 0x0

    .line 572
    if-eqz p0, :cond_0

    .line 574
    const/4 v3, 0x0

    invoke-static {v3, p0}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getMccByNVvalue(II)Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, mcc:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 588
    .end local v0           #mcc:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 581
    .restart local v0       #mcc:Ljava/lang/String;
    :cond_1
    invoke-static {v0, p0}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getMncByNVvalue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, mnc:Ljava/lang/String;
    const-string v2, "HtcCdmaModifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMccMncByCarrierId, mcc mnc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getMncByNVvalue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "mcc"
    .parameter "nvValue"

    .prologue
    .line 649
    const/4 v0, 0x0

    .line 651
    .local v0, mnc:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 735
    :goto_0
    if-nez v0, :cond_0

    .line 736
    const-string v0, "00"

    .line 738
    :cond_0
    const-string v1, "HtcCdmaModifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Convert mcc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nv="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", to mnc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    return-object v0

    .line 653
    :sswitch_0
    const-string v1, "310"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 654
    const-string v0, "012"

    goto :goto_0

    .line 657
    :cond_1
    const-string v0, "280"

    .line 659
    goto :goto_0

    .line 661
    :sswitch_1
    const-string v0, "120"

    goto :goto_0

    .line 663
    :sswitch_2
    const-string v0, "86"

    goto :goto_0

    .line 665
    :sswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 667
    :sswitch_4
    const-string v0, "270"

    goto :goto_0

    .line 669
    :sswitch_5
    const/4 v0, 0x0

    goto :goto_0

    .line 671
    :sswitch_6
    const/4 v0, 0x0

    goto :goto_0

    .line 673
    :sswitch_7
    const/4 v0, 0x0

    goto :goto_0

    .line 675
    :sswitch_8
    const-string v0, "470"

    goto :goto_0

    .line 677
    :sswitch_9
    const/4 v0, 0x0

    goto :goto_0

    .line 679
    :sswitch_a
    const-string v0, "68"

    goto :goto_0

    .line 681
    :sswitch_b
    const-string v0, "280"

    goto :goto_0

    .line 683
    :sswitch_c
    const-string v0, "06"

    goto :goto_0

    .line 685
    :sswitch_d
    const/4 v0, 0x0

    goto :goto_0

    .line 687
    :sswitch_e
    const/4 v0, 0x0

    goto :goto_0

    .line 689
    :sswitch_f
    const-string v0, "600"

    goto :goto_0

    .line 691
    :sswitch_10
    const/4 v0, 0x0

    goto :goto_0

    .line 693
    :sswitch_11
    const-string v0, "130"

    goto :goto_0

    .line 695
    :sswitch_12
    const/4 v0, 0x0

    goto :goto_0

    .line 697
    :sswitch_13
    const/4 v0, 0x0

    goto :goto_0

    .line 700
    :sswitch_14
    const-string v0, "050"

    goto :goto_0

    .line 701
    :sswitch_15
    const-string v0, "430"

    goto :goto_0

    .line 702
    :sswitch_16
    const-string v0, "750"

    goto :goto_0

    .line 703
    :sswitch_17
    const-string v0, "440"

    goto :goto_0

    .line 704
    :sswitch_18
    const-string v0, "600"

    goto :goto_0

    .line 706
    :sswitch_19
    const-string v0, "430"

    goto :goto_0

    .line 708
    :sswitch_1a
    const-string v0, "230"

    goto/16 :goto_0

    .line 709
    :sswitch_1b
    const-string v0, "280"

    goto/16 :goto_0

    .line 710
    :sswitch_1c
    const-string v0, "590"

    goto/16 :goto_0

    .line 711
    :sswitch_1d
    const-string v0, "340"

    goto/16 :goto_0

    .line 712
    :sswitch_1e
    const-string v0, "580"

    goto/16 :goto_0

    .line 714
    :sswitch_1f
    const-string v0, "92"

    goto/16 :goto_0

    .line 715
    :sswitch_20
    const-string v0, "310"

    goto/16 :goto_0

    .line 716
    :sswitch_21
    const-string v0, "410"

    goto/16 :goto_0

    .line 718
    :sswitch_22
    const-string v0, "010"

    goto/16 :goto_0

    .line 719
    :sswitch_23
    const-string v0, "100"

    goto/16 :goto_0

    .line 720
    :sswitch_24
    const-string v0, "420"

    goto/16 :goto_0

    .line 722
    :sswitch_25
    const-string v0, "450"

    goto/16 :goto_0

    .line 723
    :sswitch_26
    const-string v0, "360"

    goto/16 :goto_0

    .line 724
    :sswitch_27
    const-string v0, "350"

    goto/16 :goto_0

    .line 725
    :sswitch_28
    const-string v0, "960"

    goto/16 :goto_0

    .line 726
    :sswitch_29
    const-string v0, "960"

    goto/16 :goto_0

    .line 727
    :sswitch_2a
    const-string v0, "610"

    goto/16 :goto_0

    .line 728
    :sswitch_2b
    const-string v0, "960"

    goto/16 :goto_0

    .line 729
    :sswitch_2c
    const-string v0, "050"

    goto/16 :goto_0

    .line 731
    :sswitch_2d
    const-string v0, "440"

    goto/16 :goto_0

    .line 733
    :sswitch_2e
    const-string v0, "930"

    goto/16 :goto_0

    .line 651
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_10
        0x7 -> :sswitch_3
        0xa -> :sswitch_2
        0xb -> :sswitch_4
        0xd -> :sswitch_1a
        0xf -> :sswitch_c
        0x12 -> :sswitch_5
        0x13 -> :sswitch_12
        0x18 -> :sswitch_14
        0x19 -> :sswitch_1e
        0x1a -> :sswitch_17
        0x1b -> :sswitch_6
        0x65 -> :sswitch_16
        0x66 -> :sswitch_18
        0x68 -> :sswitch_23
        0x69 -> :sswitch_26
        0x6b -> :sswitch_24
        0x6c -> :sswitch_d
        0x6d -> :sswitch_11
        0x6e -> :sswitch_8
        0x6f -> :sswitch_19
        0x70 -> :sswitch_15
        0x71 -> :sswitch_21
        0x72 -> :sswitch_2d
        0x73 -> :sswitch_2c
        0x74 -> :sswitch_1c
        0x75 -> :sswitch_28
        0x76 -> :sswitch_7
        0x77 -> :sswitch_1d
        0x78 -> :sswitch_f
        0x79 -> :sswitch_25
        0x7a -> :sswitch_27
        0x7b -> :sswitch_20
        0x7c -> :sswitch_22
        0x7d -> :sswitch_2a
        0x7e -> :sswitch_13
        0x81 -> :sswitch_1b
        0x82 -> :sswitch_2b
        0x84 -> :sswitch_29
        0x85 -> :sswitch_1f
        0x87 -> :sswitch_2e
        0xc9 -> :sswitch_a
        0xca -> :sswitch_b
        0xcb -> :sswitch_e
    .end sparse-switch
.end method

.method public static getOperatorByCarrierId(I)Ljava/lang/String;
    .locals 1
    .parameter "nvValue"

    .prologue
    .line 744
    if-nez p0, :cond_0

    .line 746
    const/4 v0, 0x0

    .line 836
    :goto_0
    return-object v0

    .line 749
    :cond_0
    const/4 v0, 0x0

    .line 751
    .local v0, name:Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 777
    :sswitch_0
    const-string v0, "China Telecom"

    .line 778
    goto :goto_0

    .line 753
    :sswitch_1
    const-string v0, "Verizon"

    .line 754
    goto :goto_0

    .line 756
    :sswitch_2
    const-string/jumbo v0, "sprint"

    .line 757
    goto :goto_0

    .line 759
    :sswitch_3
    const-string v0, "Telus"

    .line 760
    goto :goto_0

    .line 762
    :sswitch_4
    const-string v0, "Bill Mobility"

    .line 763
    goto :goto_0

    .line 765
    :sswitch_5
    const-string v0, "AllTel"

    .line 766
    goto :goto_0

    .line 768
    :sswitch_6
    const-string v0, "Reliance"

    .line 769
    goto :goto_0

    .line 771
    :sswitch_7
    const-string v0, "USC"

    .line 772
    goto :goto_0

    .line 774
    :sswitch_8
    const-string v0, "MTS"

    .line 775
    goto :goto_0

    .line 780
    :sswitch_9
    const-string v0, "PantherC Sask"

    .line 781
    goto :goto_0

    .line 783
    :sswitch_a
    const-string v0, "PantherC Centennial"

    .line 784
    goto :goto_0

    .line 786
    :sswitch_b
    const-string v0, "Movilnet"

    .line 787
    goto :goto_0

    .line 789
    :sswitch_c
    const-string v0, "PantherC MTS"

    .line 790
    goto :goto_0

    .line 792
    :sswitch_d
    const-string v0, "APBW"

    .line 793
    goto :goto_0

    .line 795
    :sswitch_e
    const-string v0, "PLS"

    .line 796
    goto :goto_0

    .line 799
    :sswitch_f
    const-string v0, "ACS"

    goto :goto_0

    .line 800
    :sswitch_10
    const-string v0, "Alaska Digital"

    goto :goto_0

    .line 801
    :sswitch_11
    const-string v0, "Appalachian"

    goto :goto_0

    .line 802
    :sswitch_12
    const-string v0, "Bluegrass"

    goto :goto_0

    .line 803
    :sswitch_13
    const-string v0, "Cellcom"

    goto :goto_0

    .line 804
    :sswitch_14
    const-string v0, "Carolina West"

    goto :goto_0

    .line 805
    :sswitch_15
    const-string v0, "Cellular 29"

    goto :goto_0

    .line 806
    :sswitch_16
    const-string v0, "Cellular One Nepa"

    goto :goto_0

    .line 807
    :sswitch_17
    const-string v0, "Cellular South"

    goto :goto_0

    .line 808
    :sswitch_18
    const-string v0, "Centennial PR"

    goto :goto_0

    .line 809
    :sswitch_19
    const-string v0, "Golden State"

    goto :goto_0

    .line 810
    :sswitch_1a
    const-string v0, "Illionois Valley"

    goto :goto_0

    .line 811
    :sswitch_1b
    const-string v0, "Inland"

    goto :goto_0

    .line 812
    :sswitch_1c
    const-string v0, "Iusacell"

    goto :goto_0

    .line 813
    :sswitch_1d
    const-string v0, "James Valley"

    goto :goto_0

    .line 814
    :sswitch_1e
    const-string v0, "Leaco"

    goto :goto_0

    .line 815
    :sswitch_1f
    const-string v0, "Lyrix (now Chat Mobility)"

    goto :goto_0

    .line 816
    :sswitch_20
    const-string v0, "Midrivers"

    goto :goto_0

    .line 817
    :sswitch_21
    const-string v0, "MTA"

    goto :goto_0

    .line 818
    :sswitch_22
    const-string v0, "Nex-Tech"

    goto :goto_0

    .line 819
    :sswitch_23
    const-string v0, "Northwest MO"

    goto :goto_0

    .line 820
    :sswitch_24
    const-string/jumbo v0, "nTelos"

    goto :goto_0

    .line 821
    :sswitch_25
    const-string v0, "Panhandle"

    goto :goto_0

    .line 822
    :sswitch_26
    const-string v0, "Pioneer"

    goto :goto_0

    .line 823
    :sswitch_27
    const-string v0, "Sagebrush"

    goto :goto_0

    .line 824
    :sswitch_28
    const-string v0, "Silverstar"

    goto/16 :goto_0

    .line 825
    :sswitch_29
    const-string v0, "South Central"

    goto/16 :goto_0

    .line 826
    :sswitch_2a
    const-string v0, "SRT Communications"

    goto/16 :goto_0

    .line 827
    :sswitch_2b
    const-string v0, "Syringa"

    goto/16 :goto_0

    .line 828
    :sswitch_2c
    const-string v0, "Thumb"

    goto/16 :goto_0

    .line 829
    :sswitch_2d
    const-string v0, "Unicel"

    goto/16 :goto_0

    .line 830
    :sswitch_2e
    const-string v0, "United"

    goto/16 :goto_0

    .line 831
    :sswitch_2f
    const-string v0, "Open Mobile"

    goto/16 :goto_0

    .line 832
    :sswitch_30
    const-string v0, "Cooper valley"

    goto/16 :goto_0

    .line 833
    :sswitch_31
    const-string v0, "Mobi PCS"

    goto/16 :goto_0

    .line 834
    :sswitch_32
    const-string v0, "COX"

    goto/16 :goto_0

    .line 751
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x6 -> :sswitch_d
        0x7 -> :sswitch_4
        0xa -> :sswitch_3
        0xb -> :sswitch_5
        0xd -> :sswitch_17
        0xf -> :sswitch_b
        0x12 -> :sswitch_6
        0x13 -> :sswitch_e
        0x18 -> :sswitch_f
        0x19 -> :sswitch_1b
        0x1a -> :sswitch_12
        0x1b -> :sswitch_7
        0x65 -> :sswitch_11
        0x66 -> :sswitch_13
        0x68 -> :sswitch_22
        0x69 -> :sswitch_26
        0x6b -> :sswitch_23
        0x6c -> :sswitch_1c
        0x6d -> :sswitch_14
        0x6e -> :sswitch_24
        0x6f -> :sswitch_15
        0x70 -> :sswitch_10
        0x71 -> :sswitch_1f
        0x72 -> :sswitch_2e
        0x73 -> :sswitch_2c
        0x74 -> :sswitch_19
        0x75 -> :sswitch_28
        0x76 -> :sswitch_8
        0x77 -> :sswitch_1a
        0x78 -> :sswitch_32
        0x79 -> :sswitch_25
        0x7a -> :sswitch_27
        0x7b -> :sswitch_1e
        0x7c -> :sswitch_21
        0x7d -> :sswitch_2a
        0x7e -> :sswitch_2d
        0x7f -> :sswitch_16
        0x80 -> :sswitch_20
        0x81 -> :sswitch_18
        0x82 -> :sswitch_2b
        0x83 -> :sswitch_2f
        0x84 -> :sswitch_29
        0x85 -> :sswitch_1d
        0x86 -> :sswitch_31
        0x87 -> :sswitch_30
        0xc9 -> :sswitch_9
        0xca -> :sswitch_a
        0xcb -> :sswitch_c
    .end sparse-switch
.end method

.method public static getOverwriteCallEndName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "number"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 239
    if-nez p0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-object v4

    .line 244
    :cond_1
    const/4 v3, 0x0

    .line 246
    .local v3, matchingTable:[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 247
    .local v2, lenNumber:I
    if-ne v2, v9, :cond_3

    .line 249
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 250
    .local v0, firstDigit:C
    const/16 v5, 0x32

    if-gt v5, v0, :cond_0

    const/16 v5, 0x38

    if-gt v0, v5, :cond_0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_0

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_0

    .line 254
    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallEndNumberOverwritten_SprintLen3:[Ljava/lang/String;

    .line 255
    const/4 v1, 0x0

    .line 256
    .local v1, i:I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 258
    aget-object v5, v3, v1

    invoke-virtual {p0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 260
    add-int/lit8 v4, v1, 0x1

    aget-object v4, v3, v4

    goto :goto_0

    .line 262
    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 265
    .end local v0           #firstDigit:C
    .end local v1           #i:I
    :cond_3
    if-ne v2, v8, :cond_0

    .line 267
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2a

    if-ne v5, v6, :cond_0

    .line 271
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x32

    if-ne v5, v6, :cond_4

    .line 273
    sget-object v4, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallEndNumberOverwritten_SprintLen2:[Ljava/lang/String;

    aget-object v4, v4, v7

    goto :goto_0

    .line 275
    :cond_4
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x34

    if-ne v5, v6, :cond_0

    .line 277
    sget-object v4, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallEndNumberOverwritten_SprintLen2:[Ljava/lang/String;

    aget-object v4, v4, v9

    goto :goto_0
.end method

.method public static getOverwriteRoamingCallEndName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "number"

    .prologue
    .line 301
    if-eqz p0, :cond_1

    .line 303
    const-string v0, "911"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "411"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "#3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "*4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 308
    :cond_0
    const-string v0, "Roaming"

    .line 311
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getServiceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 447
    if-nez p0, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-object v1

    .line 452
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 453
    .local v0, lenNumber:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 455
    const-string v2, "*9"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 457
    const-string v1, "Correo de voz"

    goto :goto_0

    .line 459
    :cond_2
    const-string v2, "*5"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 461
    const-string v1, "Consulta de Saldo"

    goto :goto_0

    .line 463
    :cond_3
    const-string v2, "*1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 465
    const-string v1, "Emergencia"

    goto :goto_0

    .line 468
    :cond_4
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 470
    const-string v2, "*21"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 472
    const-string v1, "Recarga Prepago"

    goto :goto_0

    .line 475
    :cond_5
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 477
    const-string v2, "*611"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 479
    const-string v1, "Atenci\u00f3n al Cliente"

    goto :goto_0
.end method

.method public static getVoiceMailNumberByCarrierId(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "nvValue"
    .parameter "mdn"

    .prologue
    .line 488
    const/4 v0, 0x0

    .line 490
    .local v0, voiceNumber:Ljava/lang/String;
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x51

    if-ne v1, v2, :cond_0

    .line 492
    const-string v1, "1417"

    .line 567
    :goto_0
    return-object v1

    .line 495
    :cond_0
    sget-boolean v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDetectVMbyCarrierIdFromNV:Z

    if-eqz v1, :cond_1

    .line 497
    sparse-switch p0, :sswitch_data_0

    .line 555
    move-object v0, p1

    :goto_1
    move-object v1, v0

    .line 567
    goto :goto_0

    .line 499
    :sswitch_0
    const-string v0, "0000000000"

    .line 500
    goto :goto_1

    .line 503
    :sswitch_1
    const-string v0, "*86"

    .line 504
    goto :goto_1

    .line 507
    :sswitch_2
    const-string v0, "*89"

    .line 508
    goto :goto_1

    .line 511
    :sswitch_3
    const-string v0, "6057256245"

    .line 512
    goto :goto_1

    .line 515
    :sswitch_4
    const-string v0, "4064850808"

    .line 516
    goto :goto_1

    .line 519
    :sswitch_5
    const-string v0, "*95"

    .line 520
    goto :goto_1

    .line 523
    :sswitch_6
    const-string v0, "7018529600"

    .line 524
    goto :goto_1

    .line 527
    :sswitch_7
    const-string v0, "*86"

    .line 528
    goto :goto_1

    .line 531
    :sswitch_8
    const-string v0, "123"

    .line 532
    goto :goto_1

    .line 535
    :sswitch_9
    const-string v0, "9078226245"

    .line 536
    goto :goto_1

    .line 539
    :sswitch_a
    const-string v0, "8154886245"

    .line 540
    goto :goto_1

    .line 543
    :sswitch_b
    const-string v0, "9077457900"

    .line 544
    goto :goto_1

    .line 547
    :sswitch_c
    const-string v0, "#9"

    .line 548
    goto :goto_1

    .line 551
    :sswitch_d
    const-string v0, "*9"

    .line 552
    goto :goto_1

    .line 559
    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa8

    if-ne v1, v2, :cond_2

    .line 561
    const-string v0, "*86"

    goto :goto_1

    .line 565
    :cond_2
    move-object v0, p1

    goto :goto_1

    .line 497
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_d
        0x66 -> :sswitch_0
        0x6c -> :sswitch_c
        0x6d -> :sswitch_1
        0x77 -> :sswitch_a
        0x79 -> :sswitch_5
        0x7c -> :sswitch_b
        0x7d -> :sswitch_6
        0x80 -> :sswitch_4
        0x81 -> :sswitch_2
        0x82 -> :sswitch_7
        0x83 -> :sswitch_8
        0x85 -> :sswitch_3
        0x87 -> :sswitch_9
    .end sparse-switch
.end method

.method public static isN11Number(Ljava/lang/String;)Z
    .locals 8
    .parameter "number"

    .prologue
    .line 315
    const/4 v1, 0x0

    .line 317
    .local v1, isN11Number:Z
    if-eqz p0, :cond_0

    sget-object v5, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    if-nez v5, :cond_1

    :cond_0
    move v2, v1

    .line 341
    .end local v1           #isN11Number:Z
    .local v2, isN11Number:I
    :goto_0
    return v2

    .line 321
    .end local v2           #isN11Number:I
    .restart local v1       #isN11Number:Z
    :cond_1
    const/4 v4, 0x0

    .line 323
    .local v4, matchingTable:[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 324
    .local v3, lenNumber:I
    sget-object v5, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 325
    sget-object v5, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    aget-object v4, v5, v3

    .line 328
    :cond_2
    if-eqz v4, :cond_4

    .line 329
    const-string v5, "HtcCdmaModifier"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "matchingTable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v0, 0x0

    .line 332
    .local v0, i:I
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_3

    aget-object v5, v4, v0

    invoke-virtual {p0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 333
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 335
    :cond_3
    array-length v5, v4

    if-ge v0, v5, :cond_4

    .line 336
    add-int/lit8 v5, v0, 0x1

    aget-object v5, v4, v5

    if-eqz v5, :cond_4

    .line 337
    const/4 v1, 0x1

    .end local v0           #i:I
    :cond_4
    move v2, v1

    .line 341
    .restart local v2       #isN11Number:I
    goto :goto_0
.end method

.method public static overwriteCallerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "number"

    .prologue
    .line 208
    if-eqz p0, :cond_0

    sget-object v4, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    if-nez v4, :cond_2

    .line 209
    :cond_0
    const/4 v2, 0x0

    .line 232
    :cond_1
    :goto_0
    return-object v2

    .line 211
    :cond_2
    const/4 v2, 0x0

    .line 212
    .local v2, matchedName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 215
    .local v3, matchingTable:[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 217
    .local v1, lenNumber:I
    sget-object v4, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 218
    sget-object v4, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    aget-object v3, v4, v1

    .line 221
    :cond_3
    if-eqz v3, :cond_1

    .line 222
    const-string v4, "HtcCdmaModifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "matchingTable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v0, 0x0

    .line 225
    .local v0, i:I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_4

    aget-object v4, v3, v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    .line 226
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 228
    :cond_4
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 229
    add-int/lit8 v4, v0, 0x1

    aget-object v2, v3, v4

    goto :goto_0
.end method
