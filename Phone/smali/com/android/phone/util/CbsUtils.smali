.class public Lcom/android/phone/util/CbsUtils;
.super Ljava/lang/Object;
.source "CbsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/util/CbsUtils$1;,
        Lcom/android/phone/util/CbsUtils$ChannelChangeTask;,
        Lcom/android/phone/util/CbsUtils$CbsUtilsBroadcastReceiver;,
        Lcom/android/phone/util/CbsUtils$OnCbSyncCompletedListener;
    }
.end annotation


# static fields
.field private static final ACTION_CB_LIST_CHANGE:Ljava/lang/String; = "com.android.mms.action.CB_LIST_CHANGE"

.field private static final ACTION_CMAS_CHANGE:Ljava/lang/String; = "com.android.mms.action.CMAS_CHANGE"

.field private static ACTION_CMAS_LIST_CHANGE:Ljava/lang/String; = null

.field private static final CBCHANNEL:Ljava/lang/String; = "channel"

.field private static final CBCHANNEL_NAME:Ljava/lang/String; = "channel_name"

.field private static final CBLOCALE:Ljava/lang/String; = "locale"

.field private static final CBPROJECTION:[Ljava/lang/String; = null

.field private static final CBREADONLY:Ljava/lang/String; = "readonly"

.field private static final CB_CONTENT_URI:Landroid/net/Uri; = null

.field private static final CMASSUPPOT_CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "channel DESC"

.field private static final FALSESTR:Ljava/lang/String; = "falseStr"

.field private static final ID:Ljava/lang/String; = "_id"

.field private static final KEY:Ljava/lang/String; = "key"

.field private static final KEYVALUE:Ljava/lang/String; = "keyvalue"

.field private static final KEY_CMAS:Ljava/lang/String; = "CMASsupport"

.field private static final LOG_TAG:Ljava/lang/String; = "CbsUtils"

.field private static final MSGGENERAL_PROJECTION:[Ljava/lang/String; = null

.field private static final MSG_PROVIDER_URI:Landroid/net/Uri; = null

.field private static PREF_KEY_CH_LIST:Ljava/lang/String; = null

.field private static PREF_KEY_CMAS_LIST:Ljava/lang/String; = null

.field private static PREF_KEY_CMAS_SUPPORT:Ljava/lang/String; = null

.field private static PREF_KEY_MMS_CUSTOMIZE_DONE:Ljava/lang/String; = null

.field private static PREF_NAME_CBCH_LIST:Ljava/lang/String; = null

.field public static final PROJECTION:[Ljava/lang/String; = null

.field private static final TRUESTR:Ljava/lang/String; = "trueStr"

.field private static bootsetCSCBDone:Z

.field private static currentCBList:Ljava/lang/String;

.field private static currentLanguage:Ljava/lang/String;

.field private static mbCMASsupport:Z

.field public static sCbChSyncCompleted:Z

.field private static sConstantChList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sConstantChListStr:Ljava/lang/String;

.field private static sConstantChNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sConstantChReadonlyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sMe:Lcom/android/phone/util/CbsUtils;

.field public static testcbstr:Ljava/lang/String;

.field public static teststr:Ljava/lang/String;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mOnCbSyncCompletedListener:Lcom/android/phone/util/CbsUtils$OnCbSyncCompletedListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 38
    const-string v0, "content://cbchannels/cbch"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/util/CbsUtils;->CONTENT_URI:Landroid/net/Uri;

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "channel"

    aput-object v1, v0, v5

    const-string v1, "enable"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/phone/util/CbsUtils;->PROJECTION:[Ljava/lang/String;

    .line 50
    const-string v0, "com.android.mms.action.CMAS_LIST_CHANGE"

    sput-object v0, Lcom/android/phone/util/CbsUtils;->ACTION_CMAS_LIST_CHANGE:Ljava/lang/String;

    .line 51
    const-string v0, "cbch_shared_pref"

    sput-object v0, Lcom/android/phone/util/CbsUtils;->PREF_NAME_CBCH_LIST:Ljava/lang/String;

    .line 52
    const-string v0, "perf_key_cmas_list"

    sput-object v0, Lcom/android/phone/util/CbsUtils;->PREF_KEY_CMAS_LIST:Ljava/lang/String;

    .line 53
    const-string v0, "perf_key_ch_list"

    sput-object v0, Lcom/android/phone/util/CbsUtils;->PREF_KEY_CH_LIST:Ljava/lang/String;

    .line 54
    const-string v0, "perf_key_cmas_support"

    sput-object v0, Lcom/android/phone/util/CbsUtils;->PREF_KEY_CMAS_SUPPORT:Ljava/lang/String;

    .line 55
    const-string v0, "channel_init_done"

    sput-object v0, Lcom/android/phone/util/CbsUtils;->PREF_KEY_MMS_CUSTOMIZE_DONE:Ljava/lang/String;

    .line 57
    sput-boolean v3, Lcom/android/phone/util/CbsUtils;->sCbChSyncCompleted:Z

    .line 62
    sput-object v2, Lcom/android/phone/util/CbsUtils;->currentCBList:Ljava/lang/String;

    .line 63
    sput-object v2, Lcom/android/phone/util/CbsUtils;->currentLanguage:Ljava/lang/String;

    .line 64
    sput-boolean v3, Lcom/android/phone/util/CbsUtils;->bootsetCSCBDone:Z

    .line 65
    sput-object v2, Lcom/android/phone/util/CbsUtils;->teststr:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/phone/util/CbsUtils;->sConstantChList:Ljava/util/ArrayList;

    .line 70
    const-string v0, ""

    sput-object v0, Lcom/android/phone/util/CbsUtils;->sConstantChListStr:Ljava/lang/String;

    .line 71
    sput-object v2, Lcom/android/phone/util/CbsUtils;->sConstantChNameList:Ljava/util/ArrayList;

    .line 72
    sput-object v2, Lcom/android/phone/util/CbsUtils;->sConstantChReadonlyList:Ljava/util/ArrayList;

    .line 79
    const-string v0, "content://cbsetting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/util/CbsUtils;->CB_CONTENT_URI:Landroid/net/Uri;

    .line 80
    const-string v0, "content://cbsetting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/util/CbsUtils;->CMASSUPPOT_CONTENT_URI:Landroid/net/Uri;

    .line 81
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "locale"

    aput-object v1, v0, v4

    const-string v1, "channel"

    aput-object v1, v0, v5

    const-string v1, "channel_name"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "readonly"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/util/CbsUtils;->CBPROJECTION:[Ljava/lang/String;

    .line 82
    const-string v0, "content://htcmsggeneral/general"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/util/CbsUtils;->MSG_PROVIDER_URI:Landroid/net/Uri;

    .line 85
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "key"

    aput-object v1, v0, v4

    const-string v1, "keyvalue"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/util/CbsUtils;->MSGGENERAL_PROJECTION:[Ljava/lang/String;

    .line 87
    sput-boolean v3, Lcom/android/phone/util/CbsUtils;->mbCMASsupport:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 910
    return-void
.end method

.method static synthetic access$100()Lcom/android/phone/util/CbsUtils;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/phone/util/CbsUtils;->sMe:Lcom/android/phone/util/CbsUtils;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Lcom/android/phone/util/CbsUtils;->constantRemoveCMASchannels(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Lcom/android/phone/util/CbsUtils;->updateCBChList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/phone/util/CbsUtils;->ACTION_CMAS_LIST_CHANGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/phone/util/CbsUtils;->PREF_NAME_CBCH_LIST:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/android/phone/util/CbsUtils;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/phone/util/CbsUtils;->PREF_KEY_CMAS_LIST:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()V
    .locals 0

    .prologue
    .line 35
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->setCBCh()V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/phone/util/CbsUtils;->PREF_KEY_CMAS_SUPPORT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    sput-boolean p0, Lcom/android/phone/util/CbsUtils;->mbCMASsupport:Z

    return p0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/phone/util/CbsUtils;->sConstantChListStr:Ljava/lang/String;

    return-object v0
.end method

.method public static checkPackageInstalled(Ljava/lang/String;)Z
    .locals 7
    .parameter "packageName"

    .prologue
    .line 1094
    const/4 v0, 0x0

    .line 1095
    .local v0, bResult:Z
    sget-object v4, Lcom/android/phone/util/CbsUtils;->sMe:Lcom/android/phone/util/CbsUtils;

    iget-object v4, v4, Lcom/android/phone/util/CbsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1098
    .local v3, myPackageManager:Landroid/content/pm/PackageManager;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1099
    .local v2, myPackageInfo:Landroid/content/pm/PackageInfo;
    const-string v4, "CbsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is installed in the device"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    const/4 v0, 0x1

    .line 1107
    .end local v2           #myPackageInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return v0

    .line 1102
    :catch_0
    move-exception v1

    .line 1105
    .local v1, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "CbsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not installed in the device"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static clearEntrieCbDatabase(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, selection:Ljava/lang/String;
    sget-object v1, Lcom/android/phone/util/CbsUtils;->sConstantChListStr:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 194
    new-instance v0, Ljava/lang/String;

    .end local v0           #selection:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel NOT IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/util/CbsUtils;->sConstantChListStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 198
    .restart local v0       #selection:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/util/CbsUtils;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method private static concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "selection1"
    .parameter "selection2"

    .prologue
    .line 456
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    .end local p1
    :goto_0
    return-object p1

    .line 458
    .restart local p1
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p0

    .line 459
    goto :goto_0

    .line 461
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static concatWithComma(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str1"
    .parameter "str2"

    .prologue
    .line 466
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    .end local p1
    :goto_0
    return-object p1

    .line 468
    .restart local p1
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p0

    .line 469
    goto :goto_0

    .line 471
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static constantRemoveCMASchannels(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .parameter "channel"
    .parameter "channelname"
    .parameter "channelreadonly"

    .prologue
    .line 1124
    const/4 v9, 0x3

    new-array v5, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p0, v5, v9

    const/4 v9, 0x1

    aput-object p1, v5, v9

    const/4 v9, 0x2

    aput-object p2, v5, v9

    .line 1125
    .local v5, ret:[Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->isSupportCmas()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1161
    :cond_0
    :goto_0
    return-object v5

    .line 1128
    :cond_1
    const-string v9, ","

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1129
    .local v0, channelarray:[Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1130
    .local v3, namearray:[Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {p2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1132
    .local v4, readonlyarray:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1133
    .local v6, sbchannel:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 1134
    .local v7, sbname:Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 1135
    .local v8, sbreadonly:Ljava/lang/StringBuilder;
    array-length v1, v0

    .line 1136
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 1137
    aget-object v9, v0, v2

    invoke-static {v9}, Lcom/android/phone/util/CbsUtils;->iswithinGSMCMASrange(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1139
    const-string v9, "CbsUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add in channel: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v0, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    if-nez v6, :cond_3

    .line 1141
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #sbchannel:Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1142
    .restart local v6       #sbchannel:Ljava/lang/StringBuilder;
    aget-object v9, v0, v2

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #sbname:Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1144
    .restart local v7       #sbname:Ljava/lang/StringBuilder;
    aget-object v9, v3, v2

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8           #sbreadonly:Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1146
    .restart local v8       #sbreadonly:Ljava/lang/StringBuilder;
    aget-object v9, v4, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1148
    :cond_3
    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v3, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v4, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1155
    :cond_4
    if-eqz v6, :cond_0

    .line 1156
    const/4 v9, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    .line 1157
    const/4 v9, 0x1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    .line 1158
    const/4 v9, 0x2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    goto/16 :goto_0
.end method

.method public static deleteNonReadonlyConstant()V
    .locals 7

    .prologue
    .line 1011
    const/4 v3, 0x0

    .line 1013
    .local v3, selection:Ljava/lang/String;
    const-string v3, "readonly = 0 "

    .line 1015
    sget-object v4, Lcom/android/phone/util/CbsUtils;->sMe:Lcom/android/phone/util/CbsUtils;

    iget-object v4, v4, Lcom/android/phone/util/CbsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://cbsetting"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1017
    .local v1, count:I
    const-string v4, "CbsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phone deleteNonReadonlyConstant count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    sget-object v4, Lcom/android/phone/util/CbsUtils;->sConstantChList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1020
    const/4 v0, 0x0

    .line 1021
    .local v0, bchanged:Z
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    const/4 v4, -0x1

    if-le v2, v4, :cond_1

    .line 1022
    sget-object v4, Lcom/android/phone/util/CbsUtils;->sConstantChReadonlyList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_0

    .line 1023
    const-string v5, "CbsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/android/phone/util/CbsUtils;->sConstantChList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " / "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v4, Lcom/android/phone/util/CbsUtils;->sConstantChNameList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " / "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/android/phone/util/CbsUtils;->sConstantChReadonlyList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    sget-object v4, Lcom/android/phone/util/CbsUtils;->sConstantChList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1027
    sget-object v4, Lcom/android/phone/util/CbsUtils;->sConstantChNameList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1028
    sget-object v4, Lcom/android/phone/util/CbsUtils;->sConstantChReadonlyList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1029
    const/4 v0, 0x1

    .line 1021
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1033
    :cond_1
    if-eqz v0, :cond_2

    .line 1034
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->initializeConstantChList()V

    .line 1035
    :cond_2
    return-void
.end method

.method public static getCmdChannelStr(Landroid/content/Context;)Ljava/lang/String;
    .locals 15
    .parameter "context"

    .prologue
    const/4 v14, 0x0

    .line 334
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->getConstantChannelListStr()Ljava/lang/String;

    move-result-object v5

    .line 335
    .local v5, constantList:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->getConstantChListCount()I

    move-result v4

    .line 336
    .local v4, consCnt:I
    const-string v12, "gsm.cb.max.channel"

    const-string v13, "10"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 337
    .local v10, max:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 338
    .local v0, SimMaxCnt:I
    const/4 v2, 0x0

    .line 340
    .local v2, chCount:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .local v3, channelslList:Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 342
    .local v8, mCH:Ljava/lang/String;
    const/4 v7, 0x0

    .line 345
    .local v7, hasChennal:Z
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 346
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const/4 v7, 0x1

    .line 348
    add-int/2addr v2, v4

    .line 355
    :cond_0
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->getGsmAllCmasChannelCount()I

    move-result v12

    add-int/2addr v2, v12

    .line 360
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 361
    .local v11, sp:Landroid/content/SharedPreferences;
    const-string v12, "recevie_channel_list"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 364
    .local v9, mReChList:Z
    if-eqz v9, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 368
    :cond_1
    const-string v12, "enable = 1"

    invoke-static {p0, v14, v12, v14, v14}, Lcom/android/phone/util/CbsUtils;->getUserCbCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 369
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 371
    :cond_2
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_4

    if-ge v2, v0, :cond_4

    .line 372
    const-string v12, "channel"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, ch:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v12, "0"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 375
    if-eqz v7, :cond_3

    .line 376
    const-string v12, ","

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 378
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    const/4 v7, 0x1

    goto :goto_1

    .line 385
    .end local v1           #ch:Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 390
    :cond_5
    if-eqz v9, :cond_6

    .line 391
    if-eqz v7, :cond_8

    .line 392
    const-string v12, ","

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    :cond_6
    :goto_2
    if-eqz v7, :cond_7

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 399
    :cond_7
    const-string v12, "CbsUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getCmdChannelStr> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-string v12, "CbsUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "receive ch list?> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-object v8

    .line 385
    :catchall_0
    move-exception v12

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v12

    .line 394
    :cond_8
    const-string v12, "0"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const/4 v7, 0x1

    goto :goto_2
.end method

.method public static getCmdLanguageCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 316
    sget-object v2, Lcom/android/phone/util/CbsUtils;->sConstantChListStr:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/util/CbsUtils;->getGsmCmasChannelListStr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 319
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "lang_list"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .end local v1           #sp:Landroid/content/SharedPreferences;
    .local v0, langStr:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 325
    .end local v0           #langStr:Ljava/lang/String;
    :cond_0
    const-string v0, "15"

    .restart local v0       #langStr:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getConstantAndUserCbCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 145
    if-nez p4, :cond_0

    const-string p4, "channel DESC"

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "channel NOT IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/util/CbsUtils;->getGsmAllCmasChannelListStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/phone/util/CbsUtils;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/util/CbsUtils;->CONTENT_URI:Landroid/net/Uri;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 156
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 157
    const-string v0, "CbsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constant and user cursor count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_1
    return-object v6
.end method

.method public static getConstantChListCount()I
    .locals 1

    .prologue
    .line 231
    sget-object v0, Lcom/android/phone/util/CbsUtils;->sConstantChList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static getConstantChannelList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    sget-object v0, Lcom/android/phone/util/CbsUtils;->sConstantChList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getConstantChannelListStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lcom/android/phone/util/CbsUtils;->sConstantChListStr:Ljava/lang/String;

    return-object v0
.end method

.method public static getConstantChannelName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ch"

    .prologue
    .line 1042
    sget-object v2, Lcom/android/phone/util/CbsUtils;->sConstantChList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1044
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1045
    sget-object v2, Lcom/android/phone/util/CbsUtils;->sConstantChList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1046
    sget-object v2, Lcom/android/phone/util/CbsUtils;->sConstantChNameList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1049
    :goto_1
    return-object v2

    .line 1044
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v2, p0

    .line 1049
    goto :goto_1
.end method

.method public static getEntireCbChannelListCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/util/CbsUtils;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/util/CbsUtils;->PROJECTION:[Ljava/lang/String;

    const-string v5, "channel DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 181
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method public static getGsmAllCmasChannelCount()I
    .locals 1

    .prologue
    .line 236
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->isSupportCmas()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-static {}, Lcom/android/internal/telephony/CmasMessage;->getGsmAllCmasChannelCount()I

    move-result v0

    .line 239
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getGsmAllCmasChannelListStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->isSupportCmas()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-static {}, Lcom/android/internal/telephony/CmasMessage;->getGsmAllCmasChannelListStr()Ljava/lang/String;

    move-result-object v0

    .line 210
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getGsmCmasChannelListStr()Ljava/lang/String;
    .locals 4

    .prologue
    .line 214
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->isSupportCmas()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    sget-object v2, Lcom/android/phone/util/CbsUtils;->PREF_NAME_CBCH_LIST:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/phone/util/CbsUtils;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 218
    .local v1, sp:Landroid/content/SharedPreferences;
    sget-object v2, Lcom/android/phone/util/CbsUtils;->PREF_KEY_CMAS_LIST:Ljava/lang/String;

    const-string v3, "4370"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "name"
    .parameter "mode"

    .prologue
    .line 718
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/phone/PhoneApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getUILanguageCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 309
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 310
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "lang_list"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, langStr:Ljava/lang/String;
    return-object v0
.end method

.method public static getUserCbCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 167
    if-nez p4, :cond_0

    const-string p4, "channel DESC"

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "channel NOT IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/util/CbsUtils;->sConstantChListStr:Ljava/lang/String;

    invoke-static {}, Lcom/android/phone/util/CbsUtils;->getGsmAllCmasChannelListStr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/util/CbsUtils;->concatWithComma(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/util/CbsUtils;->getGsmAllCmasChannelListStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/phone/util/CbsUtils;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/util/CbsUtils;->CONTENT_URI:Landroid/net/Uri;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 175
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method private static initializeConstantChList()V
    .locals 6

    .prologue
    .line 610
    sget-object v3, Lcom/android/phone/util/CbsUtils;->sConstantChList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 611
    .local v0, count:I
    const/4 v2, 0x0

    .line 612
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 613
    if-nez v2, :cond_0

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #sb:Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 615
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    sget-object v3, Lcom/android/phone/util/CbsUtils;->sConstantChList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 612
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 617
    :cond_0
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/util/CbsUtils;->sConstantChList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 620
    :cond_1
    if-eqz v2, :cond_2

    .line 621
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/phone/util/CbsUtils;->sConstantChListStr:Ljava/lang/String;

    .line 625
    :goto_2
    const-string v3, "CbsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "default ch list> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/phone/util/CbsUtils;->sConstantChListStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return-void

    .line 623
    :cond_2
    const-string v3, ""

    sput-object v3, Lcom/android/phone/util/CbsUtils;->sConstantChListStr:Ljava/lang/String;

    goto :goto_2
.end method

.method public static initializeDefaultChList()V
    .locals 16

    .prologue
    const/4 v4, 0x0

    .line 523
    sget-object v0, Lcom/android/phone/util/CbsUtils;->sMe:Lcom/android/phone/util/CbsUtils;

    iget-object v0, v0, Lcom/android/phone/util/CbsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v15

    .line 524
    .local v15, localestr:Ljava/lang/String;
    const/4 v3, 0x0

    .line 527
    .local v3, selection:Ljava/lang/String;
    const-string v0, "en_US"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "locale = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "locale"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'en_US\' OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "readonly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = 0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 532
    :goto_0
    const/4 v12, 0x0

    .line 533
    .local v12, channelsb:Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 534
    .local v10, channelnamesb:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 537
    .local v11, channelreadonlysb:Ljava/lang/StringBuilder;
    sget-object v0, Lcom/android/phone/util/CbsUtils;->sMe:Lcom/android/phone/util/CbsUtils;

    iget-object v0, v0, Lcom/android/phone/util/CbsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/util/CbsUtils;->CB_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/util/CbsUtils;->CBPROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 544
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_9

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_9

    .line 547
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 548
    .local v14, localechannels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v0, "en_US"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 549
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 551
    :cond_0
    const-string v0, "locale"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 552
    .local v7, cblocale:Ljava/lang/String;
    const-string v0, "channel"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 554
    .local v6, cb:I
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    const-string v0, "CbsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Locale channels: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v14}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    .end local v6           #cb:I
    .end local v7           #cblocale:Ljava/lang/String;
    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 564
    :cond_3
    const-string v0, "locale"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 565
    .restart local v7       #cblocale:Ljava/lang/String;
    const-string v0, "channel"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 566
    .restart local v6       #cb:I
    const-string v0, "channel_name"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 567
    .local v8, cbname:Ljava/lang/String;
    const-string v0, "readonly"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 570
    .local v9, cbreadonly:I
    const-string v0, "en_US"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "en_US"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 588
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 591
    if-eqz v12, :cond_4

    .line 594
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/phone/util/CbsUtils;->updateCBChList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    .end local v6           #cb:I
    .end local v7           #cblocale:Ljava/lang/String;
    .end local v8           #cbname:Ljava/lang/String;
    .end local v9           #cbreadonly:I
    .end local v14           #localechannels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    :goto_2
    if-eqz v13, :cond_5

    .line 602
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 603
    :cond_5
    return-void

    .line 530
    .end local v10           #channelnamesb:Ljava/lang/StringBuilder;
    .end local v11           #channelreadonlysb:Ljava/lang/StringBuilder;
    .end local v12           #channelsb:Ljava/lang/StringBuilder;
    .end local v13           #cursor:Landroid/database/Cursor;
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "locale = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "readonly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = 0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 574
    .restart local v6       #cb:I
    .restart local v7       #cblocale:Ljava/lang/String;
    .restart local v8       #cbname:Ljava/lang/String;
    .restart local v9       #cbreadonly:I
    .restart local v10       #channelnamesb:Ljava/lang/StringBuilder;
    .restart local v11       #channelreadonlysb:Ljava/lang/StringBuilder;
    .restart local v12       #channelsb:Ljava/lang/StringBuilder;
    .restart local v13       #cursor:Landroid/database/Cursor;
    .restart local v14       #localechannels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_7
    if-nez v12, :cond_8

    .line 575
    new-instance v12, Ljava/lang/StringBuilder;

    .end local v12           #channelsb:Ljava/lang/StringBuilder;
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 576
    .restart local v12       #channelsb:Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10           #channelnamesb:Ljava/lang/StringBuilder;
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 577
    .restart local v10       #channelnamesb:Ljava/lang/StringBuilder;
    new-instance v11, Ljava/lang/StringBuilder;

    .end local v11           #channelreadonlysb:Ljava/lang/StringBuilder;
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    .restart local v11       #channelreadonlysb:Ljava/lang/StringBuilder;
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 583
    :cond_8
    const-string v0, ","

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    const-string v0, ","

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    const-string v0, ","

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 598
    .end local v6           #cb:I
    .end local v7           #cblocale:Ljava/lang/String;
    .end local v8           #cbname:Ljava/lang/String;
    .end local v9           #cbreadonly:I
    .end local v14           #localechannels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_9
    const-string v0, "CbsUtils"

    const-string v1, "Query CBsetting DB, cursor is null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static isCbSyncCompleted()Z
    .locals 1

    .prologue
    .line 771
    sget-boolean v0, Lcom/android/phone/util/CbsUtils;->sCbChSyncCompleted:Z

    return v0
.end method

.method public static isConstantChannel(Ljava/lang/String;)Z
    .locals 3
    .parameter "ch"

    .prologue
    .line 1056
    sget-object v2, Lcom/android/phone/util/CbsUtils;->sConstantChList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1058
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1059
    sget-object v2, Lcom/android/phone/util/CbsUtils;->sConstantChList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1060
    const/4 v2, 0x1

    .line 1063
    :goto_1
    return v2

    .line 1058
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1063
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static isDevice(S)Z
    .locals 1
    .parameter "flag"

    .prologue
    .line 637
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHiddenChannel(Ljava/lang/String;)Z
    .locals 6
    .parameter "channel"

    .prologue
    .line 443
    const/4 v2, 0x0

    .line 444
    .local v2, reValue:Z
    if-eqz p0, :cond_0

    .line 446
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 447
    .local v0, chNum:Ljava/lang/Integer;
    sget-object v3, Lcom/android/phone/util/CbsUtils;->sConstantChList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 452
    .end local v0           #chNum:Ljava/lang/Integer;
    .end local v2           #reValue:Z
    :cond_0
    :goto_0
    return v2

    .line 448
    .restart local v2       #reValue:Z
    :catch_0
    move-exception v1

    .line 449
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "CbsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not parse ch name to int> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isLanguage(S)Z
    .locals 1
    .parameter "flag"

    .prologue
    .line 633
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMmsAPexist()Z
    .locals 1

    .prologue
    .line 1067
    const/4 v0, 0x0

    .line 1071
    .local v0, bexist:Z
    return v0
.end method

.method public static isMmsCustomizeInitiated()Z
    .locals 3

    .prologue
    .line 991
    sget-object v1, Lcom/android/phone/util/CbsUtils;->PREF_NAME_CBCH_LIST:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/phone/util/CbsUtils;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 992
    .local v0, sp:Landroid/content/SharedPreferences;
    sget-object v1, Lcom/android/phone/util/CbsUtils;->PREF_KEY_MMS_CUSTOMIZE_DONE:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static isNLVF(Ljava/lang/String;)Z
    .locals 3
    .parameter "mccmnc"

    .prologue
    const/4 v0, 0x0

    .line 643
    invoke-static {v0}, Lcom/android/phone/util/CbsUtils;->isDevice(S)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa9

    invoke-static {v1}, Lcom/android/phone/util/CbsUtils;->isProject(S)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 645
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 646
    const-string v1, "20404"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    const/4 v0, 0x1

    .line 651
    :cond_0
    return v0
.end method

.method private static isProject(S)Z
    .locals 1
    .parameter "flag"

    .prologue
    .line 629
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSagaNL(Ljava/lang/String;)Z
    .locals 2
    .parameter "mccmnc"

    .prologue
    .line 658
    const/16 v0, 0x94

    invoke-static {v0}, Lcom/android/phone/util/CbsUtils;->isDevice(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x62

    invoke-static {v0}, Lcom/android/phone/util/CbsUtils;->isDevice(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x7b

    invoke-static {v0}, Lcom/android/phone/util/CbsUtils;->isDevice(S)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 662
    const-string v0, "204"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    const/4 v0, 0x1

    .line 667
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportCellBroadcase()Z
    .locals 2

    .prologue
    .line 856
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd1

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x88

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd2

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x70

    if-ne v0, v1, :cond_1

    .line 862
    :cond_0
    const/4 v0, 0x0

    .line 865
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isSupportCmas()Z
    .locals 1

    .prologue
    .line 711
    sget-boolean v0, Lcom/android/phone/util/CbsUtils;->mbCMASsupport:Z

    return v0
.end method

.method public static isvivoPTB()Z
    .locals 2

    .prologue
    .line 1167
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x78

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd4

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xae

    if-ne v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v1, 0x35

    if-eq v0, v1, :cond_1

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xe1

    if-ne v0, v1, :cond_2

    .line 1173
    :cond_1
    const/4 v0, 0x1

    .line 1175
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static iswithinGSMCMASrange(Ljava/lang/String;)Z
    .locals 5
    .parameter "channel"

    .prologue
    .line 1111
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->isSupportCmas()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1112
    invoke-static {}, Lcom/android/internal/telephony/CmasMessage;->getGsmAllCmasChannelListStr()Ljava/lang/String;

    move-result-object v1

    .line 1113
    .local v1, cmass:Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1114
    .local v0, cmasArray:[Ljava/lang/String;
    array-length v2, v0

    .line 1115
    .local v2, cmassize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1116
    aget-object v4, v0, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1117
    const/4 v4, 0x1

    .line 1120
    .end local v0           #cmasArray:[Ljava/lang/String;
    .end local v1           #cmass:Ljava/lang/String;
    .end local v2           #cmassize:I
    .end local v3           #i:I
    :goto_1
    return v4

    .line 1115
    .restart local v0       #cmasArray:[Ljava/lang/String;
    .restart local v1       #cmass:Ljava/lang/String;
    .restart local v2       #cmassize:I
    .restart local v3       #i:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1120
    .end local v0           #cmasArray:[Ljava/lang/String;
    .end local v1           #cmass:Ljava/lang/String;
    .end local v2           #cmassize:I
    .end local v3           #i:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static queryCmasSupportStatus()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 480
    sget-object v0, Lcom/android/phone/util/CbsUtils;->PREF_NAME_CBCH_LIST:Ljava/lang/String;

    invoke-static {v0, v12}, Lcom/android/phone/util/CbsUtils;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 484
    .local v8, sp:Landroid/content/SharedPreferences;
    sget-object v0, Lcom/android/phone/util/CbsUtils;->PREF_KEY_CMAS_SUPPORT:Ljava/lang/String;

    const-string v1, "not_define"

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 485
    .local v9, stmp:Ljava/lang/String;
    const-string v0, "CbsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phone init CMAS in preference is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const-string v0, "trueStr"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    sput-boolean v11, Lcom/android/phone/util/CbsUtils;->mbCMASsupport:Z

    .line 489
    const-string v0, "CbsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phone init Cmas in preference value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/util/CbsUtils;->mbCMASsupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    const-string v0, "falseStr"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 492
    sput-boolean v12, Lcom/android/phone/util/CbsUtils;->mbCMASsupport:Z

    .line 493
    const-string v0, "CbsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phone init Cmas in preference value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/util/CbsUtils;->mbCMASsupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 498
    :cond_2
    const-string v3, "key = \'CMASsupport\'"

    .line 499
    .local v3, selection:Ljava/lang/String;
    const-string v6, "false"

    .line 500
    .local v6, FALSE:Ljava/lang/String;
    sget-object v0, Lcom/android/phone/util/CbsUtils;->sMe:Lcom/android/phone/util/CbsUtils;

    iget-object v0, v0, Lcom/android/phone/util/CbsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/util/CbsUtils;->MSG_PROVIDER_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/util/CbsUtils;->MSGGENERAL_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 503
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 504
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 506
    :cond_3
    const-string v0, "keyvalue"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 507
    .local v10, value:Ljava/lang/String;
    const-string v0, "trueStr"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v11

    :goto_1
    sput-boolean v0, Lcom/android/phone/util/CbsUtils;->mbCMASsupport:Z

    .line 508
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 510
    const-string v0, "CbsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phone init Cmas support db query value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/util/CbsUtils;->mbCMASsupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .end local v10           #value:Ljava/lang/String;
    :cond_4
    if-eqz v7, :cond_0

    .line 513
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .restart local v10       #value:Ljava/lang/String;
    :cond_5
    move v0, v12

    .line 507
    goto :goto_1
.end method

.method public static registerPhoneInstance(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    .line 118
    new-instance v1, Lcom/android/phone/util/CbsUtils;

    invoke-direct {v1}, Lcom/android/phone/util/CbsUtils;-><init>()V

    sput-object v1, Lcom/android/phone/util/CbsUtils;->sMe:Lcom/android/phone/util/CbsUtils;

    .line 119
    sget-object v1, Lcom/android/phone/util/CbsUtils;->sMe:Lcom/android/phone/util/CbsUtils;

    iput-object p0, v1, Lcom/android/phone/util/CbsUtils;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 120
    sget-object v1, Lcom/android/phone/util/CbsUtils;->sMe:Lcom/android/phone/util/CbsUtils;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/util/CbsUtils;->mContext:Landroid/content/Context;

    .line 121
    sget-object v1, Lcom/android/phone/util/CbsUtils;->sMe:Lcom/android/phone/util/CbsUtils;

    new-instance v2, Lcom/android/phone/util/CbsUtils$CbsUtilsBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/phone/util/CbsUtils$CbsUtilsBroadcastReceiver;-><init>(Lcom/android/phone/util/CbsUtils$1;)V

    iput-object v2, v1, Lcom/android/phone/util/CbsUtils;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    .local v0, intentFilter:Landroid/content/IntentFilter;
    sget-object v1, Lcom/android/phone/util/CbsUtils;->ACTION_CMAS_LIST_CHANGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v1, "com.android.mms.action.CB_LIST_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v1, "com.android.mms.action.CMAS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    sget-object v1, Lcom/android/phone/util/CbsUtils;->sMe:Lcom/android/phone/util/CbsUtils;

    iget-object v1, v1, Lcom/android/phone/util/CbsUtils;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/phone/util/CbsUtils;->sMe:Lcom/android/phone/util/CbsUtils;

    iget-object v2, v2, Lcom/android/phone/util/CbsUtils;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    return-void
.end method

.method public static removeConstantChannels(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "chsStr"

    .prologue
    const/4 v11, 0x0

    .line 671
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 696
    :cond_0
    :goto_0
    return-object v11

    .line 672
    :cond_1
    const-string v12, ","

    invoke-virtual {p0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 674
    .local v2, chs:[Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->getConstantChannelList()Ljava/util/ArrayList;

    move-result-object v3

    .line 675
    .local v3, consChs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .line 676
    .local v9, sb:Ljava/lang/StringBuilder;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    move-object v10, v9

    .end local v9           #sb:Ljava/lang/StringBuilder;
    .local v10, sb:Ljava/lang/StringBuilder;
    :goto_1
    if-ge v6, v7, :cond_5

    aget-object v1, v0, v6

    .line 677
    .local v1, ch:Ljava/lang/String;
    const/4 v5, 0x0

    .line 680
    .local v5, exist:Z
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 681
    .local v8, num:Ljava/lang/Integer;
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 682
    const/4 v5, 0x1

    .line 684
    :cond_2
    if-nez v5, :cond_4

    .line 685
    if-nez v10, :cond_3

    .line 686
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 676
    .end local v8           #num:Ljava/lang/Integer;
    .end local v10           #sb:Ljava/lang/StringBuilder;
    .restart local v9       #sb:Ljava/lang/StringBuilder;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-object v10, v9

    .end local v9           #sb:Ljava/lang/StringBuilder;
    .restart local v10       #sb:Ljava/lang/StringBuilder;
    goto :goto_1

    .line 688
    .restart local v8       #num:Ljava/lang/Integer;
    :cond_3
    const-string v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8           #num:Ljava/lang/Integer;
    :cond_4
    :goto_3
    move-object v9, v10

    .end local v10           #sb:Ljava/lang/StringBuilder;
    .restart local v9       #sb:Ljava/lang/StringBuilder;
    goto :goto_2

    .line 691
    .end local v9           #sb:Ljava/lang/StringBuilder;
    .restart local v10       #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    .line 692
    .local v4, e:Ljava/lang/Exception;
    const-string v12, "CbsUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "can not parse ch> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 695
    .end local v1           #ch:Ljava/lang/String;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #exist:Z
    :cond_5
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0
.end method

.method public static removeGsmCmasChannel(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "chsStr"

    .prologue
    const/4 v13, 0x0

    .line 244
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object p0, v13

    .line 285
    .end local p0
    .local v3, chs:[Ljava/lang/String;
    .local v4, cmasArray:[Ljava/lang/String;
    .local v6, cmass:Ljava/lang/String;
    .local v9, i$:I
    .local v12, sb:Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 248
    .end local v3           #chs:[Ljava/lang/String;
    .end local v4           #cmasArray:[Ljava/lang/String;
    .end local v6           #cmass:Ljava/lang/String;
    .end local v9           #i$:I
    .end local v12           #sb:Ljava/lang/StringBuilder;
    .restart local p0
    :cond_1
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->isSupportCmas()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 252
    const-string v14, ","

    invoke-virtual {p0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 254
    .restart local v3       #chs:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/CmasMessage;->getGsmAllCmasChannelListStr()Ljava/lang/String;

    move-result-object v6

    .line 255
    .restart local v6       #cmass:Ljava/lang/String;
    const-string v14, ","

    invoke-virtual {v6, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 256
    .restart local v4       #cmasArray:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 257
    .restart local v12       #sb:Ljava/lang/StringBuilder;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v10, v0

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v9, v8

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .restart local v9       #i$:I
    :goto_1
    if-ge v9, v10, :cond_6

    aget-object v2, v0, v9

    .line 258
    .local v2, ch:Ljava/lang/String;
    const/4 v7, 0x0

    .line 260
    .local v7, exist:Z
    move-object v1, v4

    .local v1, arr$:[Ljava/lang/String;
    array-length v11, v1

    .local v11, len$:I
    const/4 v8, 0x0

    .end local v9           #i$:I
    .restart local v8       #i$:I
    :goto_2
    if-ge v8, v11, :cond_2

    aget-object v5, v1, v8

    .line 262
    .local v5, cmasId:Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 263
    const/4 v7, 0x1

    .line 267
    .end local v5           #cmasId:Ljava/lang/String;
    :cond_2
    if-nez v7, :cond_3

    .line 268
    if-nez v12, :cond_5

    .line 269
    new-instance v12, Ljava/lang/StringBuilder;

    .end local v12           #sb:Ljava/lang/StringBuilder;
    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    .restart local v12       #sb:Ljava/lang/StringBuilder;
    :cond_3
    :goto_3
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto :goto_1

    .line 260
    .end local v9           #i$:I
    .restart local v5       #cmasId:Ljava/lang/String;
    .restart local v8       #i$:I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 271
    .end local v5           #cmasId:Ljava/lang/String;
    :cond_5
    const-string v14, ","

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 284
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #ch:Ljava/lang/String;
    .end local v7           #exist:Z
    .end local v8           #i$:I
    .end local v11           #len$:I
    .restart local v9       #i$:I
    :cond_6
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_7
    move-object p0, v13

    .line 285
    goto :goto_0
.end method

.method private static setCBCh()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 739
    sget-object v4, Lcom/android/phone/util/CbsUtils;->PREF_NAME_CBCH_LIST:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/android/phone/util/CbsUtils;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 742
    .local v3, sp:Landroid/content/SharedPreferences;
    sget-object v4, Lcom/android/phone/util/CbsUtils;->PREF_KEY_CMAS_LIST:Ljava/lang/String;

    const-string v5, "4370"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 743
    .local v2, cmasList:Ljava/lang/String;
    sget-object v4, Lcom/android/phone/util/CbsUtils;->PREF_KEY_CH_LIST:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 744
    .local v1, chList:Ljava/lang/String;
    const-string v4, "CbsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chList "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 747
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 765
    :cond_0
    const-string v4, "CbsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCbCh() false> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> 15"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    new-instance v0, Lcom/android/internal/telephony/gsm/CBMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/CBMessage;-><init>()V

    .line 767
    .local v0, cb:Lcom/android/internal/telephony/gsm/CBMessage;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "15"

    invoke-virtual {v0, v4, v2, v5}, Lcom/android/internal/telephony/gsm/CBMessage;->setCBChannel(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    return-void
.end method

.method public static setCBCh(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "mode"
    .parameter "mMsgId"
    .parameter "mDsc"

    .prologue
    .line 722
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->isSupportCmas()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 724
    sget-object v3, Lcom/android/phone/util/CbsUtils;->PREF_NAME_CBCH_LIST:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/phone/util/CbsUtils;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 727
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 728
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v3, Lcom/android/phone/util/CbsUtils;->PREF_KEY_CH_LIST:Ljava/lang/String;

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 729
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 730
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->setCBCh()V

    .line 736
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 732
    :cond_0
    const-string v3, "CbsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCbCh> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    new-instance v0, Lcom/android/internal/telephony/gsm/CBMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/CBMessage;-><init>()V

    .line 734
    .local v0, cb:Lcom/android/internal/telephony/gsm/CBMessage;
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/gsm/CBMessage;->setCBChannel(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setCbSyncCompleted(Z)V
    .locals 3
    .parameter "done"

    .prologue
    .line 775
    const-string v0, "CbsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCbSyncCompleted> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    sput-boolean p0, Lcom/android/phone/util/CbsUtils;->sCbChSyncCompleted:Z

    .line 777
    sget-object v0, Lcom/android/phone/util/CbsUtils;->sMe:Lcom/android/phone/util/CbsUtils;

    iget-object v0, v0, Lcom/android/phone/util/CbsUtils;->mOnCbSyncCompletedListener:Lcom/android/phone/util/CbsUtils$OnCbSyncCompletedListener;

    if-eqz v0, :cond_0

    .line 778
    sget-object v0, Lcom/android/phone/util/CbsUtils;->sMe:Lcom/android/phone/util/CbsUtils;

    iget-object v0, v0, Lcom/android/phone/util/CbsUtils;->mOnCbSyncCompletedListener:Lcom/android/phone/util/CbsUtils$OnCbSyncCompletedListener;

    invoke-interface {v0, p0}, Lcom/android/phone/util/CbsUtils$OnCbSyncCompletedListener;->onCbSyncCompleted(Z)V

    .line 780
    :cond_0
    return-void
.end method

.method public static setMmsCustomizelInitiated()V
    .locals 4

    .prologue
    .line 999
    sget-object v2, Lcom/android/phone/util/CbsUtils;->PREF_NAME_CBCH_LIST:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/phone/util/CbsUtils;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1000
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1001
    .local v1, spEditor:Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/android/phone/util/CbsUtils;->PREF_KEY_MMS_CUSTOMIZE_DONE:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1002
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1003
    return-void
.end method

.method public static setOnCbSyncCompletedListener(Lcom/android/phone/util/CbsUtils$OnCbSyncCompletedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 783
    sget-object v0, Lcom/android/phone/util/CbsUtils;->sMe:Lcom/android/phone/util/CbsUtils;

    iput-object p0, v0, Lcom/android/phone/util/CbsUtils;->mOnCbSyncCompletedListener:Lcom/android/phone/util/CbsUtils$OnCbSyncCompletedListener;

    .line 784
    return-void
.end method

.method public static submitCscb(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 406
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 407
    .local v4, sp:Landroid/content/SharedPreferences;
    const-string v7, "pref_key_cb_enable"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 409
    .local v1, mCBSetting:Z
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->getConstantChListCount()I

    move-result v7

    if-lez v7, :cond_2

    move v3, v5

    .line 412
    .local v3, needSetCmd:Z
    :goto_0
    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/phone/util/CbsUtils;->getGsmCmasChannelListStr()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 413
    const/4 v3, 0x1

    .line 417
    :cond_0
    if-nez v3, :cond_1

    if-eqz v1, :cond_4

    .line 418
    :cond_1
    invoke-static {p0}, Lcom/android/phone/util/CbsUtils;->getCmdLanguageCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, langStr:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/phone/util/CbsUtils;->getCmdChannelStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, mCh:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 429
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5, v2, v0}, Lcom/android/phone/util/CbsUtils;->setCBCh(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    .end local v0           #langStr:Ljava/lang/String;
    .end local v2           #mCh:Ljava/lang/String;
    :goto_1
    return-void

    .end local v3           #needSetCmd:Z
    :cond_2
    move v3, v6

    .line 409
    goto :goto_0

    .line 431
    .restart local v0       #langStr:Ljava/lang/String;
    .restart local v2       #mCh:Ljava/lang/String;
    .restart local v3       #needSetCmd:Z
    :cond_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5, v8, v8}, Lcom/android/phone/util/CbsUtils;->setCBCh(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 435
    .end local v0           #langStr:Ljava/lang/String;
    .end local v2           #mCh:Ljava/lang/String;
    :cond_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5, v8, v8}, Lcom/android/phone/util/CbsUtils;->setCBCh(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v5, "CbsUtils"

    const-string v6, "setCbCh> true> null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static unregisterPhoneInstance()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    sget-object v0, Lcom/android/phone/util/CbsUtils;->sMe:Lcom/android/phone/util/CbsUtils;

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/android/phone/util/CbsUtils;->sMe:Lcom/android/phone/util/CbsUtils;

    iget-object v0, v0, Lcom/android/phone/util/CbsUtils;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/phone/util/CbsUtils;->sMe:Lcom/android/phone/util/CbsUtils;

    iget-object v1, v1, Lcom/android/phone/util/CbsUtils;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 132
    sget-object v0, Lcom/android/phone/util/CbsUtils;->sMe:Lcom/android/phone/util/CbsUtils;

    iput-object v2, v0, Lcom/android/phone/util/CbsUtils;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 133
    sget-object v0, Lcom/android/phone/util/CbsUtils;->sMe:Lcom/android/phone/util/CbsUtils;

    iput-object v2, v0, Lcom/android/phone/util/CbsUtils;->mContext:Landroid/content/Context;

    .line 134
    sget-object v0, Lcom/android/phone/util/CbsUtils;->sMe:Lcom/android/phone/util/CbsUtils;

    iput-object v2, v0, Lcom/android/phone/util/CbsUtils;->mOnCbSyncCompletedListener:Lcom/android/phone/util/CbsUtils$OnCbSyncCompletedListener;

    .line 135
    sput-object v2, Lcom/android/phone/util/CbsUtils;->sMe:Lcom/android/phone/util/CbsUtils;

    .line 137
    :cond_0
    return-void
.end method

.method private static updateCBChList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "cbliststr"
    .parameter "cbnameliststr"
    .parameter "cbreadonlyliststr"

    .prologue
    .line 875
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 876
    .local v2, cbchannels:[Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 877
    .local v0, cbchannelnames:[Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 881
    .local v1, cbchannelreadonlys:[Ljava/lang/String;
    sget-object v4, Lcom/android/phone/util/CbsUtils;->sConstantChList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/phone/util/CbsUtils;->sConstantChList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 885
    :goto_0
    sget-object v4, Lcom/android/phone/util/CbsUtils;->sConstantChNameList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/phone/util/CbsUtils;->sConstantChNameList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 889
    :goto_1
    sget-object v4, Lcom/android/phone/util/CbsUtils;->sConstantChReadonlyList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/phone/util/CbsUtils;->sConstantChReadonlyList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 892
    :goto_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    array-length v4, v2

    if-ge v3, v4, :cond_4

    .line 893
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->isSupportCmas()Z

    move-result v4

    if-eqz v4, :cond_3

    aget-object v4, v2, v3

    invoke-static {v4}, Lcom/android/phone/util/CbsUtils;->iswithinGSMCMASrange(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 892
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 882
    .end local v3           #i:I
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/phone/util/CbsUtils;->sConstantChList:Ljava/util/ArrayList;

    goto :goto_0

    .line 886
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/phone/util/CbsUtils;->sConstantChNameList:Ljava/util/ArrayList;

    goto :goto_1

    .line 890
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/phone/util/CbsUtils;->sConstantChReadonlyList:Ljava/util/ArrayList;

    goto :goto_2

    .line 896
    .restart local v3       #i:I
    :cond_3
    sget-object v4, Lcom/android/phone/util/CbsUtils;->sConstantChList:Ljava/util/ArrayList;

    aget-object v5, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    sget-object v4, Lcom/android/phone/util/CbsUtils;->sConstantChNameList:Ljava/util/ArrayList;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    sget-object v4, Lcom/android/phone/util/CbsUtils;->sConstantChReadonlyList:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 901
    :cond_4
    invoke-static {v2, v0, v1}, Lcom/android/phone/util/CbsUtils;->updateDBChannelName([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 902
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->initializeConstantChList()V

    .line 903
    return-void
.end method

.method private static updateDBChannelName([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .parameter "cbchannels"
    .parameter "cbchannelnames"
    .parameter "cbchannelreadonlys"

    .prologue
    .line 1076
    const-string v5, "content://cbchannels/cbch"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1077
    .local v0, CONTENT_URI:Landroid/net/Uri;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_0

    .line 1078
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "channel=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1080
    .local v3, selectionChannel:Ljava/lang/String;
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1081
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "title"

    aget-object v6, p1, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    const-string v5, "CbsUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update DB channel/name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p0, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    sget-object v5, Lcom/android/phone/util/CbsUtils;->sMe:Lcom/android/phone/util/CbsUtils;

    iget-object v5, v5, Lcom/android/phone/util/CbsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v4, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1077
    .end local v4           #values:Landroid/content/ContentValues;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1086
    :catch_0
    move-exception v1

    .line 1087
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "CbsUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSDBSoundSetting Exception ex= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1090
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v3           #selectionChannel:Ljava/lang/String;
    :cond_0
    return-void
.end method
