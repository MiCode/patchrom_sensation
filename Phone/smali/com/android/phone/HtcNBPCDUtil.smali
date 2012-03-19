.class public Lcom/android/phone/HtcNBPCDUtil;
.super Ljava/lang/Object;
.source "HtcNBPCDUtil.java"


# static fields
.field public static final CONTENT_URI_ASSISTED_DIALING:Landroid/net/Uri; = null

.field public static final CONTENT_URI_MCC_OTA:Landroid/net/Uri; = null

.field private static final DBG:Z = false

.field public static final ENABLE_ASSISTED_DIALING:Ljava/lang/String; = "EnableAssistedDialing"

.field public static final ENABLE_VZW_CONVERSION:Ljava/lang/String; = "EnableVZWConversion"

.field private static final EVENT_INIT_AREA_CODE:I = 0x3

.field private static final EVENT_NBPCD_INFO:I = 0x1

.field private static final EVENT_SERVICE_STATUS_CHANGED:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "HtcNBPCDUtil"

.field public static final MCC_NAME:Ljava/lang/String; = "MCC"

.field private static final MCC_PREFIX:Ljava/lang/String; = "un_"

.field private static final VDBG:Z = false

.field public static final VZWConvSetting:Ljava/lang/String; = "VZWConversionSetting"

.field public static final VZW_CUSTOMER_SERVICE_DIAL:Ljava/lang/String; = "*611"

.field public static final VZW_VOICEMAIL_DIAL:Ljava/lang/String; = "*86"

.field private static bVZWConversion:Z

.field private static currentMCC:Ljava/lang/String;

.field private static mAssistedDialUsing:Z

.field static mAssistedDialing:Z

.field private static mHBPCDRetryDialing:Z

.field private static mHBPCDRetryUI:Z

.field private static mMe:Lcom/android/phone/HtcNBPCDUtil;

.field static mNBPCDSupport:Z

.field private static m_AD_CDMA:Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;

.field private static strADNumber:Ljava/lang/String;

.field private static strHBPCDNumber:Ljava/lang/String;

.field private static strInternationalVMNumbers:[Ljava/lang/String;

.field private static strOriginNumber:Ljava/lang/String;

.field private static strParsedNumber:Ljava/lang/String;


# instance fields
.field editor:Landroid/content/SharedPreferences$Editor;

.field public mContext:Landroid/content/Context;

.field public mCr:Landroid/content/ContentResolver;

.field private mHandler:Landroid/os/Handler;

.field public mPhone:Lcom/android/internal/telephony/Phone;

.field private project:[Ljava/lang/String;

.field settings:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 96
    new-instance v0, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;

    invoke-direct {v0}, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;-><init>()V

    sput-object v0, Lcom/android/phone/HtcNBPCDUtil;->m_AD_CDMA:Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;

    .line 155
    sput-boolean v1, Lcom/android/phone/HtcNBPCDUtil;->mAssistedDialing:Z

    .line 156
    sput-boolean v1, Lcom/android/phone/HtcNBPCDUtil;->mNBPCDSupport:Z

    .line 195
    sput-boolean v1, Lcom/android/phone/HtcNBPCDUtil;->mHBPCDRetryUI:Z

    .line 196
    sput-boolean v1, Lcom/android/phone/HtcNBPCDUtil;->mHBPCDRetryDialing:Z

    .line 198
    sput-object v2, Lcom/android/phone/HtcNBPCDUtil;->strHBPCDNumber:Ljava/lang/String;

    .line 199
    sput-object v2, Lcom/android/phone/HtcNBPCDUtil;->strOriginNumber:Ljava/lang/String;

    .line 200
    sput-object v2, Lcom/android/phone/HtcNBPCDUtil;->strParsedNumber:Ljava/lang/String;

    .line 202
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v1

    aput-object v2, v0, v3

    sput-object v0, Lcom/android/phone/HtcNBPCDUtil;->strInternationalVMNumbers:[Ljava/lang/String;

    .line 205
    sput-boolean v1, Lcom/android/phone/HtcNBPCDUtil;->mAssistedDialUsing:Z

    .line 206
    sput-object v2, Lcom/android/phone/HtcNBPCDUtil;->strADNumber:Ljava/lang/String;

    .line 247
    sput-boolean v3, Lcom/android/phone/HtcNBPCDUtil;->bVZWConversion:Z

    .line 362
    const-string v0, "content://htc.cdma.mcc/MccOTA"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HtcNBPCDUtil;->CONTENT_URI_MCC_OTA:Landroid/net/Uri;

    .line 364
    const-string v0, "null"

    sput-object v0, Lcom/android/phone/HtcNBPCDUtil;->currentMCC:Ljava/lang/String;

    .line 508
    const-string v0, "content://htc.cdma.mcc/AssistedDialing"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HtcNBPCDUtil;->CONTENT_URI_ASSISTED_DIALING:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 7
    .parameter "phone"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v1, Lcom/android/phone/HtcNBPCDUtil$1;

    invoke-direct {v1, p0}, Lcom/android/phone/HtcNBPCDUtil$1;-><init>(Lcom/android/phone/HtcNBPCDUtil;)V

    iput-object v1, p0, Lcom/android/phone/HtcNBPCDUtil;->mHandler:Landroid/os/Handler;

    .line 365
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "MCC"

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/phone/HtcNBPCDUtil;->project:[Ljava/lang/String;

    .line 99
    sput-object p0, Lcom/android/phone/HtcNBPCDUtil;->mMe:Lcom/android/phone/HtcNBPCDUtil;

    .line 100
    iput-object p1, p0, Lcom/android/phone/HtcNBPCDUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 101
    iget-object v1, p0, Lcom/android/phone/HtcNBPCDUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/HtcNBPCDUtil;->mContext:Landroid/content/Context;

    .line 102
    iget-object v1, p0, Lcom/android/phone/HtcNBPCDUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/HtcNBPCDUtil;->mCr:Landroid/content/ContentResolver;

    .line 103
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->EnableNBPCDSetting:Z

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/phone/HtcNBPCDUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/HtcNBPCDUtil;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2, v4, v6}, Lcom/android/internal/telephony/Phone;->registerForNBPCDInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 105
    iget-object v1, p0, Lcom/android/phone/HtcNBPCDUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/HtcNBPCDUtil;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3, v6}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 107
    sget-object v1, Lcom/android/phone/HtcNBPCDUtil;->mMe:Lcom/android/phone/HtcNBPCDUtil;

    iget-object v1, v1, Lcom/android/phone/HtcNBPCDUtil;->mContext:Landroid/content/Context;

    const-string v2, "VZWConversionSetting"

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 108
    .local v0, vzwConvSettings:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 109
    const-string v1, "EnableVZWConversion"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/phone/HtcNBPCDUtil;->bVZWConversion:Z

    .line 110
    const-string v1, "EnableAssistedDialing"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/phone/HtcNBPCDUtil;->mAssistedDialing:Z

    .line 114
    .end local v0           #vzwConvSettings:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static IsVMNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter "number"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 494
    sget-object v2, Lcom/android/phone/HtcNBPCDUtil;->mMe:Lcom/android/phone/HtcNBPCDUtil;

    if-eqz v2, :cond_1

    if-eqz p0, :cond_1

    sget-object v2, Lcom/android/phone/HtcNBPCDUtil;->strInternationalVMNumbers:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/phone/HtcNBPCDUtil;->strInternationalVMNumbers:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/HtcNBPCDUtil;->mMe:Lcom/android/phone/HtcNBPCDUtil;

    iget-object v3, v3, Lcom/android/phone/HtcNBPCDUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 500
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/HtcNBPCDUtil;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/HtcNBPCDUtil;->updateAreaCodeByMdn()V

    return-void
.end method

.method private static getAssistedDialingEnbale()Z
    .locals 1

    .prologue
    .line 164
    sget-boolean v0, Lcom/android/phone/HtcNBPCDUtil;->mAssistedDialing:Z

    return v0
.end method

.method public static getHBPCDString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    sget-object v0, Lcom/android/phone/HtcNBPCDUtil;->strHBPCDNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getNBPCDSupport()Z
    .locals 1

    .prologue
    .line 189
    sget-boolean v0, Lcom/android/phone/HtcNBPCDUtil;->mNBPCDSupport:Z

    return v0
.end method

.method public static getOriginNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    sget-object v0, Lcom/android/phone/HtcNBPCDUtil;->strOriginNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getVMTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    sget-object v0, Lcom/android/phone/HtcNBPCDUtil;->mMe:Lcom/android/phone/HtcNBPCDUtil;

    iget-object v0, v0, Lcom/android/phone/HtcNBPCDUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVZWConvEnbale()Z
    .locals 1

    .prologue
    .line 258
    sget-boolean v0, Lcom/android/phone/HtcNBPCDUtil;->bVZWConversion:Z

    return v0
.end method

.method public static isAssistedDialUsing()Z
    .locals 1

    .prologue
    .line 235
    sget-boolean v0, Lcom/android/phone/HtcNBPCDUtil;->mAssistedDialUsing:Z

    return v0
.end method

.method public static isHBPCDRetryDialing()Z
    .locals 1

    .prologue
    .line 222
    sget-boolean v0, Lcom/android/phone/HtcNBPCDUtil;->mHBPCDRetryDialing:Z

    return v0
.end method

.method public static isHBPCDRetryUI()Z
    .locals 1

    .prologue
    .line 210
    sget-boolean v0, Lcom/android/phone/HtcNBPCDUtil;->mHBPCDRetryUI:Z

    return v0
.end method

.method public static isUnknowOperatorChecked(Ljava/lang/String;)Z
    .locals 5
    .parameter "mccmnc"

    .prologue
    .line 444
    const/4 v1, 0x1

    .line 445
    .local v1, isUnknowOperatorChecked:Z
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->EnableNBPCDSetting:Z

    if-nez v2, :cond_0

    .line 446
    const/4 v2, 0x1

    .line 453
    :goto_0
    return v2

    .line 449
    :cond_0
    sget-object v2, Lcom/android/phone/HtcNBPCDUtil;->mMe:Lcom/android/phone/HtcNBPCDUtil;

    iget-object v2, v2, Lcom/android/phone/HtcNBPCDUtil;->mContext:Landroid/content/Context;

    const-string v3, "htc_cdma_settings"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 450
    .local v0, cdmaSettings:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_1

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "un_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    :cond_1
    move v2, v1

    .line 453
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 151
    const-string v0, "HtcNBPCDUtil"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method public static parseNumber(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 11
    .parameter "numberDialing"
    .parameter "numberMDN"
    .parameter "bIscontact"

    .prologue
    .line 267
    const/4 v9, 0x0

    .line 268
    .local v9, iConversion_Result:I
    const/4 v4, 0x0

    .line 269
    .local v4, bIsNBPCDSupport:Z
    invoke-static {}, Lcom/android/phone/HtcNBPCDUtil;->getNBPCDSupport()Z

    move-result v4

    .line 270
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 272
    .local v10, operator:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 273
    const-string v0, "HtcNBPCDUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseNumber, wrong MMC(operator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), no conv."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {}, Lcom/android/phone/HtcNBPCDUtil;->setNoConversion()V

    .line 339
    .end local p0
    :goto_0
    return-object p0

    .line 278
    .restart local p0
    :cond_0
    sget-boolean v0, Lcom/android/phone/HtcNBPCDUtil;->bVZWConversion:Z

    if-nez v0, :cond_1

    .line 279
    const-string v0, "HtcNBPCDUtil"

    const-string v1, "parseNumber, Disable all conversion."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-static {}, Lcom/android/phone/HtcNBPCDUtil;->setNoConversion()V

    goto :goto_0

    .line 284
    :cond_1
    sput-object p0, Lcom/android/phone/HtcNBPCDUtil;->strOriginNumber:Ljava/lang/String;

    .line 286
    const-string v0, "HtcNBPCDUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseNumber, operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v0, "HtcNBPCDUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseNumber, IsContact="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getNBPCDSupport()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AD= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/HtcNBPCDUtil;->getAssistedDialingEnbale()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :try_start_0
    sget-object v0, Lcom/android/phone/HtcNBPCDUtil;->m_AD_CDMA:Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/HtcNBPCDUtil;->getAssistedDialingEnbale()Z

    move-result v5

    sget-object v1, Lcom/android/phone/HtcNBPCDUtil;->mMe:Lcom/android/phone/HtcNBPCDUtil;

    iget-object v7, v1, Lcom/android/phone/HtcNBPCDUtil;->mContext:Landroid/content/Context;

    move-object v1, p0

    move v2, p2

    move-object v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->DialingStringConversionExtNBPCD(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 299
    :goto_1
    packed-switch v9, :pswitch_data_0

    .line 312
    invoke-static {}, Lcom/android/phone/HtcNBPCDUtil;->setNoConversion()V

    goto :goto_0

    .line 295
    :catch_0
    move-exception v8

    .line 296
    .local v8, ex:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 302
    .end local v8           #ex:Ljava/lang/Exception;
    :pswitch_0
    sget-object v0, Lcom/android/phone/HtcNBPCDUtil;->m_AD_CDMA:Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->Get_ConvertedString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HtcNBPCDUtil;->strParsedNumber:Ljava/lang/String;

    .line 316
    :goto_2
    const/4 v0, 0x2

    if-eq v9, v0, :cond_2

    const/4 v0, 0x3

    if-ne v9, v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    :goto_3
    sput-boolean v0, Lcom/android/phone/HtcNBPCDUtil;->mAssistedDialUsing:Z

    .line 319
    const/4 v0, 0x3

    if-ne v9, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    sput-boolean v0, Lcom/android/phone/HtcNBPCDUtil;->mHBPCDRetryUI:Z

    .line 320
    sget-object v0, Lcom/android/phone/HtcNBPCDUtil;->strParsedNumber:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 322
    const-string v0, "*86"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    const/4 v0, 0x3

    if-ne v9, v0, :cond_6

    .line 326
    sget-object v0, Lcom/android/phone/HtcNBPCDUtil;->strInternationalVMNumbers:[Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/phone/HtcNBPCDUtil;->strParsedNumber:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 327
    sget-object v0, Lcom/android/phone/HtcNBPCDUtil;->strInternationalVMNumbers:[Ljava/lang/String;

    const/4 v1, 0x1

    sget-object v2, Lcom/android/phone/HtcNBPCDUtil;->strHBPCDNumber:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 335
    :cond_3
    :goto_5
    sget-object p0, Lcom/android/phone/HtcNBPCDUtil;->strParsedNumber:Ljava/lang/String;

    goto/16 :goto_0

    .line 305
    :pswitch_1
    sget-object v0, Lcom/android/phone/HtcNBPCDUtil;->m_AD_CDMA:Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->Get_NBPCDString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HtcNBPCDUtil;->strParsedNumber:Ljava/lang/String;

    .line 306
    sget-object v0, Lcom/android/phone/HtcNBPCDUtil;->m_AD_CDMA:Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->Get_HBPCDString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HtcNBPCDUtil;->strHBPCDNumber:Ljava/lang/String;

    goto :goto_2

    .line 316
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 319
    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    .line 329
    :cond_6
    const/4 v0, 0x1

    if-eq v9, v0, :cond_7

    const/4 v0, 0x2

    if-ne v9, v0, :cond_3

    .line 331
    :cond_7
    sget-object v0, Lcom/android/phone/HtcNBPCDUtil;->strInternationalVMNumbers:[Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/phone/HtcNBPCDUtil;->strParsedNumber:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 332
    sget-object v0, Lcom/android/phone/HtcNBPCDUtil;->strInternationalVMNumbers:[Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_5

    .line 337
    :cond_8
    const-string v0, "HtcNBPCDUtil"

    const-string v1, "strParsedNumber is null! reset to no conversion."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-static {}, Lcom/android/phone/HtcNBPCDUtil;->setNoConversion()V

    goto/16 :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setAssistedDialingEnbale(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 159
    sput-boolean p0, Lcom/android/phone/HtcNBPCDUtil;->mAssistedDialing:Z

    .line 160
    const-string v0, "HtcNBPCDUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Set Assisted Dialing Enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method public static setCheckhtcCdmaOperator(Ljava/lang/String;)V
    .locals 5
    .parameter "mccmnc"

    .prologue
    .line 456
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->EnableNBPCDSetting:Z

    if-nez v2, :cond_0

    .line 464
    :goto_0
    return-void

    .line 459
    :cond_0
    sget-object v2, Lcom/android/phone/HtcNBPCDUtil;->mMe:Lcom/android/phone/HtcNBPCDUtil;

    iget-object v2, v2, Lcom/android/phone/HtcNBPCDUtil;->mContext:Landroid/content/Context;

    const-string v3, "htc_cdma_settings"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 460
    .local v0, cdmaSettings:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 461
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "un_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 462
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static setHBPCDRetryDialing(Z)V
    .locals 0
    .parameter "bRetry"

    .prologue
    .line 227
    sput-boolean p0, Lcom/android/phone/HtcNBPCDUtil;->mHBPCDRetryDialing:Z

    .line 228
    return-void
.end method

.method public static setHBPCDRetryUI(Z)V
    .locals 1
    .parameter "bRetry"

    .prologue
    .line 215
    sput-boolean p0, Lcom/android/phone/HtcNBPCDUtil;->mHBPCDRetryUI:Z

    .line 217
    sget-boolean v0, Lcom/android/phone/HtcNBPCDUtil;->mHBPCDRetryUI:Z

    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/HtcNBPCDUtil;->mHBPCDRetryDialing:Z

    .line 219
    :cond_0
    return-void
.end method

.method protected static setNoConversion()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 352
    sput-boolean v0, Lcom/android/phone/HtcNBPCDUtil;->mAssistedDialUsing:Z

    .line 353
    sput-boolean v0, Lcom/android/phone/HtcNBPCDUtil;->mHBPCDRetryUI:Z

    .line 354
    sput-boolean v0, Lcom/android/phone/HtcNBPCDUtil;->mHBPCDRetryDialing:Z

    .line 355
    sput-object v1, Lcom/android/phone/HtcNBPCDUtil;->strParsedNumber:Ljava/lang/String;

    .line 356
    sput-object v1, Lcom/android/phone/HtcNBPCDUtil;->strHBPCDNumber:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public static setVZWConversionEnbale(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 250
    sput-boolean p0, Lcom/android/phone/HtcNBPCDUtil;->bVZWConversion:Z

    .line 256
    return-void
.end method

.method private updateAreaCodeByMdn()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 513
    iget-object v3, p0, Lcom/android/phone/HtcNBPCDUtil;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_3

    .line 514
    iget-object v3, p0, Lcom/android/phone/HtcNBPCDUtil;->settings:Landroid/content/SharedPreferences;

    if-nez v3, :cond_0

    .line 515
    iget-object v3, p0, Lcom/android/phone/HtcNBPCDUtil;->mContext:Landroid/content/Context;

    const-string v4, "updateAreaCode"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/HtcNBPCDUtil;->settings:Landroid/content/SharedPreferences;

    .line 517
    :cond_0
    iget-object v3, p0, Lcom/android/phone/HtcNBPCDUtil;->settings:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_3

    .line 518
    iget-object v3, p0, Lcom/android/phone/HtcNBPCDUtil;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez v3, :cond_1

    .line 519
    iget-object v3, p0, Lcom/android/phone/HtcNBPCDUtil;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/HtcNBPCDUtil;->editor:Landroid/content/SharedPreferences$Editor;

    .line 522
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/HtcNBPCDUtil;->settings:Landroid/content/SharedPreferences;

    const-string v4, "MDN"

    const-string v5, "000"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 523
    .local v2, preAreaCode:Ljava/lang/String;
    const-string v3, "ril.cdmaphoneapp.mdn"

    const-string v4, "0000000000"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, currAreCode:Ljava/lang/String;
    const-string v3, "000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 527
    iget-object v3, p0, Lcom/android/phone/HtcNBPCDUtil;->mCr:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/phone/HtcNBPCDUtil;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->updateAreaCodeByMdn(Landroid/content/ContentResolver;Landroid/content/Context;)V

    .line 528
    iget-object v3, p0, Lcom/android/phone/HtcNBPCDUtil;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v3, :cond_2

    .line 529
    iget-object v3, p0, Lcom/android/phone/HtcNBPCDUtil;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "MDN"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 530
    iget-object v3, p0, Lcom/android/phone/HtcNBPCDUtil;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 532
    :cond_2
    const-string v3, "HtcNBPCDUtil"

    const-string v4, "Update Area Code"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    .end local v0           #currAreCode:Ljava/lang/String;
    .end local v2           #preAreaCode:Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 534
    :catch_0
    move-exception v1

    .line 535
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "HtcNBPCDUtil"

    const-string v4, " updateAreaCodeByMdn error"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateVM_Number(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "curMCC"
    .parameter "strMDN"

    .prologue
    const/4 v10, 0x1

    .line 471
    const/4 v9, 0x0

    .line 472
    .local v9, iConversion_Result:I
    :try_start_0
    sget-object v0, Lcom/android/phone/HtcNBPCDUtil;->m_AD_CDMA:Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;

    const-string v1, "*86"

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/phone/HtcNBPCDUtil;->getNBPCDSupport()Z

    move-result v4

    invoke-static {}, Lcom/android/phone/HtcNBPCDUtil;->getAssistedDialingEnbale()Z

    move-result v5

    sget-object v3, Lcom/android/phone/HtcNBPCDUtil;->mMe:Lcom/android/phone/HtcNBPCDUtil;

    iget-object v7, v3, Lcom/android/phone/HtcNBPCDUtil;->mContext:Landroid/content/Context;

    move-object v3, p0

    move-object v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->DialingStringConversionExtNBPCD(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;Landroid/content/Context;)I

    move-result v9

    .line 477
    if-eq v9, v10, :cond_0

    const/4 v0, 0x2

    if-ne v9, v0, :cond_1

    .line 479
    :cond_0
    sget-object v0, Lcom/android/phone/HtcNBPCDUtil;->strInternationalVMNumbers:[Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/phone/HtcNBPCDUtil;->m_AD_CDMA:Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->Get_ConvertedString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 480
    sget-object v0, Lcom/android/phone/HtcNBPCDUtil;->strInternationalVMNumbers:[Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 483
    :cond_1
    const/4 v0, 0x3

    if-ne v9, v0, :cond_2

    .line 484
    sget-object v0, Lcom/android/phone/HtcNBPCDUtil;->strInternationalVMNumbers:[Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/phone/HtcNBPCDUtil;->m_AD_CDMA:Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->Get_NBPCDString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 485
    sget-object v0, Lcom/android/phone/HtcNBPCDUtil;->strInternationalVMNumbers:[Ljava/lang/String;

    const/4 v1, 0x1

    sget-object v2, Lcom/android/phone/HtcNBPCDUtil;->m_AD_CDMA:Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/AssistedDialing_CDMA;->Get_HBPCDString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :cond_2
    :goto_0
    return-void

    .line 487
    :catch_0
    move-exception v8

    .line 488
    .local v8, ex:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 122
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->EnableNBPCDSetting:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/phone/HtcNBPCDUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/HtcNBPCDUtil;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForNBPCDInfo(Landroid/os/Handler;)V

    .line 124
    iget-object v0, p0, Lcom/android/phone/HtcNBPCDUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/HtcNBPCDUtil;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 126
    :cond_0
    return-void
.end method

.method public handleNBPCDInfo(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    .line 168
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 169
    const-string v3, "HtcNBPCDUtil"

    const-string v4, "Exception Loopback mode:"

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    :goto_0
    return-void

    .line 173
    :cond_0
    :try_start_0
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 175
    .local v2, nbpcdInfo:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/phone/HtcNBPCDUtil;->mNBPCDSupport:Z

    .line 181
    :goto_1
    const-string v3, "ril.cdmaphoneapp.nbpcd.support"

    sget-boolean v4, Lcom/android/phone/HtcNBPCDUtil;->mNBPCDSupport:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    .end local v2           #nbpcdInfo:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 184
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 178
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v2       #nbpcdInfo:[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    sput-boolean v3, Lcom/android/phone/HtcNBPCDUtil;->mNBPCDSupport:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public handleServiceStateChange(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter "ar"

    .prologue
    .line 368
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->EnableNBPCDSetting:Z

    if-eqz v0, :cond_1

    .line 369
    sget-object v0, Lcom/android/phone/HtcNBPCDUtil;->mMe:Lcom/android/phone/HtcNBPCDUtil;

    iget-object v0, v0, Lcom/android/phone/HtcNBPCDUtil;->mContext:Landroid/content/Context;

    const-string v1, "VZWConversionSetting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 370
    .local v13, settings:Landroid/content/SharedPreferences;
    if-eqz v13, :cond_1

    .line 371
    const-string v0, "EnableVZWConversion"

    const/4 v1, 0x1

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 372
    .local v10, isEnableNBPCD:Z
    if-nez v10, :cond_1

    .line 441
    .end local v10           #isEnableNBPCD:Z
    .end local v13           #settings:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->EnableNBPCDSetting:Z

    if-nez v0, :cond_3

    .line 380
    :cond_2
    const-string v0, "HtcNBPCDUtil"

    const-string v1, "Exception handleServiceStateChaange mode:"

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 383
    :cond_3
    const/4 v7, 0x0

    .line 386
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 387
    .local v12, operator:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_4

    .line 436
    if-eqz v7, :cond_0

    .line 437
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 392
    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x3

    :try_start_1
    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 396
    .local v11, mcc:Ljava/lang/String;
    sget-object v0, Lcom/android/phone/HtcNBPCDUtil;->currentMCC:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 398
    iget-object v0, p0, Lcom/android/phone/HtcNBPCDUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/android/phone/HtcNBPCDUtil;->updateVM_Number(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    sput-object v11, Lcom/android/phone/HtcNBPCDUtil;->currentMCC:Ljava/lang/String;

    .line 403
    :cond_5
    invoke-static {v12}, Lcom/android/phone/HtcNBPCDUtil;->isUnknowOperatorChecked(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_6

    .line 436
    if-eqz v7, :cond_0

    .line 437
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 409
    :cond_6
    :try_start_2
    const-string v3, "MCC=?"

    .line 410
    .local v3, whereClause:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v11, v4, v0

    .line 412
    .local v4, whereArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 414
    .local v6, bFindMcc:Z
    iget-object v0, p0, Lcom/android/phone/HtcNBPCDUtil;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/phone/HtcNBPCDUtil;->CONTENT_URI_MCC_OTA:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/phone/HtcNBPCDUtil;->project:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 416
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 418
    const/4 v6, 0x1

    .line 423
    :cond_7
    if-nez v6, :cond_8

    iget-object v0, p0, Lcom/android/phone/HtcNBPCDUtil;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_8

    invoke-static {v12}, Lcom/android/phone/HtcNBPCDUtil;->isUnknowOperatorChecked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 427
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    .local v9, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/phone/HtcNBPCDUtil;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/phone/HtcCdmaUnknowMccScreen;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    const/high16 v0, 0x1000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 430
    iget-object v0, p0, Lcom/android/phone/HtcNBPCDUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 432
    .end local v9           #intent:Landroid/content/Intent;
    :cond_8
    invoke-static {v12}, Lcom/android/phone/HtcNBPCDUtil;->setCheckhtcCdmaOperator(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 436
    if-eqz v7, :cond_0

    .line 437
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 433
    .end local v3           #whereClause:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v6           #bFindMcc:Z
    .end local v11           #mcc:Ljava/lang/String;
    .end local v12           #operator:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 434
    .local v8, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 436
    if-eqz v7, :cond_0

    .line 437
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 436
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_9

    .line 437
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method public updateHtcNBPCDUtilafterRadioTechnologyChange()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 116
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->EnableNBPCDSetting:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/phone/HtcNBPCDUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/HtcNBPCDUtil;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForNBPCDInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/android/phone/HtcNBPCDUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/HtcNBPCDUtil;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 120
    :cond_0
    return-void
.end method
