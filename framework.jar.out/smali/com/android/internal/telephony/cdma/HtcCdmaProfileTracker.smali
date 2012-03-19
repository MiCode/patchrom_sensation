.class public Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;
.super Ljava/lang/Object;
.source "HtcCdmaProfileTracker.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "HtcDPT"

.field static mProfileList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field dct:Lcom/android/internal/telephony/DataConnectionTracker;

.field private mCurrentProfile:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 40
    sput-object v4, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

    .line 43
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 47
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .local v0, e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 49
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 51
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "HtcDPT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create Mapping failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sput-object v4, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;)V
    .locals 8
    .parameter "dct"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0xd

    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v3, 0xa

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mCurrentProfile:I

    .line 37
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dct:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 70
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dct:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 71
    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 73
    const-string v3, "HtcDPT"

    const-string/jumbo v4, "mProfileList is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_0
    return-void

    .line 77
    :cond_0
    new-array v1, v5, [I

    .line 80
    .local v1, apnNeedSwitch:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ro.net.apnswitch."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 86
    :cond_1
    const/16 v3, 0xb

    const/16 v4, 0x3e9

    aput v4, v1, v3

    .line 87
    const/4 v3, 0x3

    aput v7, v1, v3

    .line 90
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_2

    .line 92
    aget v3, v1, v2

    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->put(II)V

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 96
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 97
    .local v0, al:Ljava/util/ArrayList;
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 99
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v7, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->put(II)V

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 102
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dumpAllProfiles()V

    goto :goto_0
.end method

.method private dumpAllProfiles()V
    .locals 3

    .prologue
    .line 107
    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

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

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 109
    .local v1, profileID:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dumpProfile(I)V

    goto :goto_0

    .line 111
    .end local v1           #profileID:I
    :cond_0
    return-void
.end method

.method private put(II)V
    .locals 4
    .parameter "profileID"
    .parameter "apnID"

    .prologue
    .line 128
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 130
    const-string v1, "HtcDPT"

    const-string/jumbo v2, "mProfileList is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 135
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 138
    .local v0, al:Ljava/util/ArrayList;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public ApnIDToProfileID(I)I
    .locals 8
    .parameter "apnid"

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x3

    .line 195
    sget-object v4, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mCurrentProfile:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 198
    .local v0, al:Ljava/util/ArrayList;
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mCurrentProfile:I

    if-ne v4, v3, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dct:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v4, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcGetAnyDataEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 206
    .local v3, skipcurrent:Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_2

    if-nez v3, :cond_2

    .line 208
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 210
    const-string v4, "HtcDPT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ApnIDToProfileID: return current, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mCurrentProfile:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mCurrentProfile:I

    .line 230
    :goto_1
    return v2

    .line 198
    .end local v3           #skipcurrent:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 218
    .restart local v3       #skipcurrent:Z
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 220
    .local v2, profileID:I
    sget-object v4, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #al:Ljava/util/ArrayList;
    check-cast v0, Ljava/util/ArrayList;

    .line 221
    .restart local v0       #al:Ljava/util/ArrayList;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 223
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 229
    .end local v2           #profileID:I
    :cond_4
    const-string v4, "HtcDPT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ApnIDToProfileID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/16 v2, 0xa

    goto :goto_1
.end method

.method public dumpProfile(I)V
    .locals 4
    .parameter "profileID"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->getSupportedApnTypes(I)[Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, sArr:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 118
    const-string v1, "HtcDPT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpProfile("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    const-string v1, "HtcDPT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpProfile("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")=null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentProfile()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mCurrentProfile:I

    return v0
.end method

.method public getSupportedApnTypes(I)[Ljava/lang/String;
    .locals 6
    .parameter "profileID"

    .prologue
    .line 146
    sget-object v4, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 147
    .local v0, al:Ljava/util/ArrayList;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Integer;

    move-object v1, v4

    check-cast v1, [Ljava/lang/Integer;

    .line 150
    .local v1, arr:[Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 151
    .local v3, sArr:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 152
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->dct:Lcom/android/internal/telephony/DataConnectionTracker;

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    .end local v1           #arr:[Ljava/lang/Integer;
    .end local v2           #i:I
    .end local v3           #sArr:[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    :cond_1
    return-object v3
.end method

.method public makeApnSettingByProfileID(I)Lcom/android/internal/telephony/ApnSetting;
    .locals 19
    .parameter "profileID"

    .prologue
    .line 161
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->getSupportedApnTypes(I)[Ljava/lang/String;

    move-result-object v14

    .line 162
    .local v14, types:[Ljava/lang/String;
    new-instance v1, Lcom/android/internal/telephony/ApnSetting;

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const/4 v13, 0x0

    const-string v15, "IP"

    const-string v16, "IP"

    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v2, p1

    invoke-direct/range {v1 .. v18}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 164
    .local v1, apn:Lcom/android/internal/telephony/ApnSetting;
    const-string v2, "HtcDPT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeApnSettingByProfileID: profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " apnsetting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-object v1
.end method

.method public profileAllowDataConnection()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, allow:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->getCurrentProfile()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 176
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x91

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x40

    if-eq v3, v4, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->IS_VM_OMADM()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 180
    :cond_0
    const-string v3, "dm.hfa"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 181
    .local v1, provision:I
    const-string v3, "HtcDPT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dm.hfa provision="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    if-eqz v1, :cond_1

    move v0, v2

    .line 189
    .end local v1           #provision:I
    :goto_0
    const-string v2, "HtcDPT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "profileAllowDataConnection()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",getCurrentDataProfile()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->getCurrentProfile()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return v0

    .line 173
    :pswitch_0
    const/4 v0, 0x1

    .line 174
    goto :goto_0

    .line 182
    .restart local v1       #provision:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 185
    .end local v1           #provision:I
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public setCurrentProfile(I)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 64
    const-string v0, "HtcDPT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mCurrentProfile:I

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, sb:Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->mProfileList:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
