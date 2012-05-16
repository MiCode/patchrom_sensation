.class public Lcom/htc/music/util/DlnaUtils;
.super Ljava/lang/Object;
.source "DlnaUtils.java"


# static fields
.field public static final INDEX_DEFAULT_SORT_ORDER:Ljava/lang/String; = "index_id COLLATE NOCASE ASC"

.field public static final MAX_QUERY_CONTENTS:I = 0xc7

.field public static final QUERY_CONTENTS:I = 0x1e

.field public static final QUERY_DIRECTION_DOWN:I = 0x1

.field public static final QUERY_DIRECTION_UP:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isWifiEnabled(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, bResult:Z
    const/4 v2, 0x0

    .line 20
    .local v2, connManager:Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    .line 22
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    const/4 v4, 0x0

    .line 24
    .local v4, wifiManager:Landroid/net/wifi/WifiManager;
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #wifiManager:Landroid/net/wifi/WifiManager;
    check-cast v4, Landroid/net/wifi/WifiManager;

    .restart local v4       #wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v4, :cond_0

    .line 27
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 29
    const/4 v0, 0x1

    move v1, v0

    .line 47
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 34
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #connManager:Landroid/net/ConnectivityManager;
    check-cast v2, Landroid/net/ConnectivityManager;

    .restart local v2       #connManager:Landroid/net/ConnectivityManager;
    if-nez v2, :cond_1

    move v1, v0

    .line 35
    .restart local v1       #bResult:I
    goto :goto_0

    .line 37
    .end local v1           #bResult:I
    :cond_1
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-nez v3, :cond_2

    move v1, v0

    .line 38
    .restart local v1       #bResult:I
    goto :goto_0

    .line 40
    .end local v1           #bResult:I
    :cond_2
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    if-eq v5, v6, :cond_3

    move v1, v0

    .line 41
    .restart local v1       #bResult:I
    goto :goto_0

    .line 43
    .end local v1           #bResult:I
    :cond_3
    const/4 v5, 0x1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-eq v5, v6, :cond_4

    move v1, v0

    .line 44
    .restart local v1       #bResult:I
    goto :goto_0

    .line 46
    .end local v1           #bResult:I
    :cond_4
    const/4 v0, 0x1

    move v1, v0

    .line 47
    .restart local v1       #bResult:I
    goto :goto_0
.end method
