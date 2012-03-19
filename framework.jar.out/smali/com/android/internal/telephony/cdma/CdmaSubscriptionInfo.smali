.class public Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;
.super Ljava/lang/Object;
.source "CdmaSubscriptionInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CdmaSubscriptionInfo"


# instance fields
.field public mHomeNetworkId:[I

.field public mHomeSystemId:[I

.field public mMdn:Ljava/lang/String;

.field public mMin:Ljava/lang/String;

.field public mPrlVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    .line 26
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeNetworkId:[I

    .line 32
    return-void
.end method


# virtual methods
.method public isHomeSid(I)Z
    .locals 2
    .parameter "sid"

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    if-eqz v1, :cond_1

    .line 112
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 114
    const/4 v1, 0x1

    .line 118
    .end local v0           #i:I
    :goto_1
    return v1

    .line 112
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isSidsAllZeros()Z
    .locals 2

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    if-eqz v1, :cond_1

    .line 97
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    .line 99
    const/4 v1, 0x0

    .line 103
    .end local v0           #i:I
    :goto_1
    return v1

    .line 97
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public populateSubscriptionInfoFromRegistrationState([Ljava/lang/String;)V
    .locals 6
    .parameter "cdmaSubscriptionArray"

    .prologue
    const/4 v4, 0x0

    .line 35
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mMdn:Ljava/lang/String;

    .line 36
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    .line 37
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeNetworkId:[I

    .line 38
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mMin:Ljava/lang/String;

    .line 39
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mPrlVersion:Ljava/lang/String;

    .line 43
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p1, v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mMdn:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    const/4 v4, 0x1

    :try_start_1
    aget-object v4, p1, v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, sid:[Ljava/lang/String;
    array-length v4, v3

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    .line 52
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-ge v1, v4, :cond_0

    .line 54
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 52
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 44
    .end local v1           #i:I
    .end local v3           #sid:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 45
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "CdmaSubscriptionInfo"

    const-string v5, "error parsing mdn: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 55
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #i:I
    .restart local v3       #sid:[Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 56
    .local v0, ex:Ljava/lang/NumberFormatException;
    :try_start_3
    const-string v4, "CdmaSubscriptionInfo"

    const-string v5, "error parsing system id: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 60
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    .end local v1           #i:I
    .end local v3           #sid:[Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 61
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "CdmaSubscriptionInfo"

    const-string v5, "error parsing system id: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x2

    :try_start_4
    aget-object v4, p1, v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, nid:[Ljava/lang/String;
    array-length v4, v2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeNetworkId:[I

    .line 68
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    array-length v4, v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-ge v1, v4, :cond_1

    .line 70
    :try_start_5
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeNetworkId:[I

    aget-object v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 68
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 71
    :catch_3
    move-exception v0

    .line 72
    .local v0, ex:Ljava/lang/NumberFormatException;
    :try_start_6
    const-string v4, "CdmaSubscriptionInfo"

    const-string v5, "error parsing network id: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    .line 76
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    .end local v1           #i:I
    .end local v2           #nid:[Ljava/lang/String;
    :catch_4
    move-exception v0

    .line 77
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "CdmaSubscriptionInfo"

    const-string v5, "error parsing network id: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x3

    :try_start_7
    aget-object v4, p1, v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mMin:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 87
    :goto_5
    return-void

    .line 83
    :catch_5
    move-exception v0

    .line 84
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v4, "CdmaSubscriptionInfo"

    const-string v5, "error parsing min: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setPrlVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "prlVersion"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mPrlVersion:Ljava/lang/String;

    .line 92
    return-void
.end method
