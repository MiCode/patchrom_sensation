.class public final Lcom/android/internal/telephony/HtcIsimData;
.super Ljava/lang/Object;
.source "HtcIsimData.java"


# static fields
.field public static final ADDRESS_TYPE_FQDN_KEY:Ljava/lang/String; = "address_type_fqdn"

.field public static final ADDRESS_TYPE_IPV4_KEY:Ljava/lang/String; = "address_type_ipv4"

.field public static final ADDRESS_TYPE_IPV6_KEY:Ljava/lang/String; = "address_type_ipv6"

.field public static mAid:Ljava/lang/String;

.field private static mBtid:Ljava/lang/String;

.field public static mCDMA_IMSI:Ljava/lang/String;

.field public static mCDMA_MDN:Ljava/lang/String;

.field public static mDOMAIN:Ljava/lang/String;

.field public static mGSM_IMSI:Ljava/lang/String;

.field public static mGSM_MSISDN:Ljava/lang/String;

.field private static mHasISIM:Z

.field public static mIMPI:Ljava/lang/String;

.field public static mIMPUList:[Ljava/lang/String;

.field private static mIsGBASupported:Z

.field private static mKeyLifetime:Ljava/lang/String;

.field public static mPCSCFList:Landroid/os/Bundle;

.field private static mRand:[B

.field private static mSessionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mIMPI:Ljava/lang/String;

    .line 39
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mDOMAIN:Ljava/lang/String;

    .line 40
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mIMPUList:[Ljava/lang/String;

    .line 41
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mPCSCFList:Landroid/os/Bundle;

    .line 43
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mGSM_IMSI:Ljava/lang/String;

    .line 44
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mCDMA_IMSI:Ljava/lang/String;

    .line 46
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mGSM_MSISDN:Ljava/lang/String;

    .line 47
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mCDMA_MDN:Ljava/lang/String;

    .line 49
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    .line 51
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/HtcIsimData;->mSessionId:I

    .line 52
    sput-boolean v2, Lcom/android/internal/telephony/HtcIsimData;->mHasISIM:Z

    .line 53
    sput-boolean v2, Lcom/android/internal/telephony/HtcIsimData;->mIsGBASupported:Z

    .line 54
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mRand:[B

    .line 55
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mBtid:Ljava/lang/String;

    .line 56
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mKeyLifetime:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetBtid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mBtid:Ljava/lang/String;

    return-object v0
.end method

.method public static GetDOMAIN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mDOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method public static GetIMPI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mIMPI:Ljava/lang/String;

    return-object v0
.end method

.method public static GetIMPU()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mIMPUList:[Ljava/lang/String;

    return-object v0
.end method

.method public static GetIMSI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "phonetype"

    .prologue
    .line 101
    const-string v1, "gsm"

    .line 102
    .local v1, gsm_type:Ljava/lang/String;
    const-string v0, "cdma"

    .line 103
    .local v0, cdma_type:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    sget-object v2, Lcom/android/internal/telephony/HtcIsimData;->mGSM_IMSI:Ljava/lang/String;

    .line 108
    :goto_0
    return-object v2

    .line 105
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    sget-object v2, Lcom/android/internal/telephony/HtcIsimData;->mCDMA_IMSI:Ljava/lang/String;

    goto :goto_0

    .line 108
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static GetKeyLifetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mKeyLifetime:Ljava/lang/String;

    return-object v0
.end method

.method public static GetMobileNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "phonetype"

    .prologue
    .line 114
    const-string v1, "gsm"

    .line 115
    .local v1, gsm_type:Ljava/lang/String;
    const-string v0, "cdma"

    .line 116
    .local v0, cdma_type:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    sget-object v2, Lcom/android/internal/telephony/HtcIsimData;->mGSM_MSISDN:Ljava/lang/String;

    .line 121
    :goto_0
    return-object v2

    .line 118
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    sget-object v2, Lcom/android/internal/telephony/HtcIsimData;->mCDMA_MDN:Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static GetPCSCF()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mPCSCFList:Landroid/os/Bundle;

    return-object v0
.end method

.method public static GetRand()[B
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mRand:[B

    return-object v0
.end method

.method public static GetSessionId()I
    .locals 1

    .prologue
    .line 96
    sget v0, Lcom/android/internal/telephony/HtcIsimData;->mSessionId:I

    return v0
.end method

.method public static SetBtid(Ljava/lang/String;)V
    .locals 0
    .parameter "btid"

    .prologue
    .line 170
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mBtid:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public static SetCDMA_IMSI(Ljava/lang/String;)V
    .locals 0
    .parameter "imsi"

    .prologue
    .line 146
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mCDMA_IMSI:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public static SetCDMA_MDN(Ljava/lang/String;)V
    .locals 0
    .parameter "mdn"

    .prologue
    .line 154
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mCDMA_MDN:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public static SetDOMAIN(Ljava/lang/String;)V
    .locals 0
    .parameter "domain"

    .prologue
    .line 130
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mDOMAIN:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public static SetGSM_IMSI(Ljava/lang/String;)V
    .locals 0
    .parameter "imsi"

    .prologue
    .line 142
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mGSM_IMSI:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public static SetGSM_MSISDN(Ljava/lang/String;)V
    .locals 0
    .parameter "msisdn"

    .prologue
    .line 150
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mGSM_MSISDN:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public static SetHasISIM(Z)V
    .locals 0
    .parameter "hasISIM"

    .prologue
    .line 158
    sput-boolean p0, Lcom/android/internal/telephony/HtcIsimData;->mHasISIM:Z

    .line 159
    return-void
.end method

.method public static SetIMPI(Ljava/lang/String;)V
    .locals 0
    .parameter "impi"

    .prologue
    .line 126
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mIMPI:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public static SetIMPU([Ljava/lang/String;)V
    .locals 0
    .parameter "impu"

    .prologue
    .line 134
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mIMPUList:[Ljava/lang/String;

    .line 135
    return-void
.end method

.method public static SetIsGBASupported(Z)V
    .locals 0
    .parameter "gbaSupported"

    .prologue
    .line 162
    sput-boolean p0, Lcom/android/internal/telephony/HtcIsimData;->mIsGBASupported:Z

    .line 163
    return-void
.end method

.method public static SetKeyLifetime(Ljava/lang/String;)V
    .locals 0
    .parameter "keyLifetime"

    .prologue
    .line 174
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mKeyLifetime:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public static SetPCSCF(Landroid/os/Bundle;)V
    .locals 0
    .parameter "pcscf"

    .prologue
    .line 138
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mPCSCFList:Landroid/os/Bundle;

    .line 139
    return-void
.end method

.method public static SetRand([B)V
    .locals 0
    .parameter "rand"

    .prologue
    .line 166
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mRand:[B

    .line 167
    return-void
.end method

.method public static SetSessionId(I)V
    .locals 0
    .parameter "sessionId"

    .prologue
    .line 178
    sput p0, Lcom/android/internal/telephony/HtcIsimData;->mSessionId:I

    .line 179
    return-void
.end method

.method public static hasISIM()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/android/internal/telephony/HtcIsimData;->mHasISIM:Z

    return v0
.end method

.method public static isGBASupported()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/android/internal/telephony/HtcIsimData;->mIsGBASupported:Z

    return v0
.end method
