.class final Lcom/android/server/HtcPowerSaver$Wifi;
.super Lcom/android/server/HtcPowerSaver$Feature;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcPowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Wifi"
.end annotation


# static fields
.field public static final DEFAULT_N_WIFI:Z = true

.field public static final KEY_N_WIFI:Ljava/lang/String; = "psaver_normal_wifi"


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/HtcPowerSaver;


# direct methods
.method constructor <init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "ctx"

    .prologue
    .line 1063
    iput-object p1, p0, Lcom/android/server/HtcPowerSaver$Wifi;->this$0:Lcom/android/server/HtcPowerSaver;

    .line 1064
    const-string v2, "Wifi"

    const-string v3, "powersaver_wifi"

    const/4 v4, 0x0

    const-string v5, "sys.psaver.wifi"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/HtcPowerSaver$Feature;-><init>(Lcom/android/server/HtcPowerSaver;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1065
    iput-object p2, p0, Lcom/android/server/HtcPowerSaver$Wifi;->mContext:Landroid/content/Context;

    .line 1066
    return-void
.end method

.method private getSysSettings()Z
    .locals 3

    .prologue
    .line 1070
    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$Wifi;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1071
    .local v0, wifimgr:Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 1073
    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$Wifi;->TAG:Ljava/lang/String;

    const-string v2, "Cannot get Wifi service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    const/4 v1, 0x0

    .line 1076
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method private setSysSettings(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 1081
    iget-object v4, p0, Lcom/android/server/HtcPowerSaver$Wifi;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 1082
    .local v3, wifimgr:Landroid/net/wifi/WifiManager;
    if-nez v3, :cond_1

    .line 1084
    iget-object v4, p0, Lcom/android/server/HtcPowerSaver$Wifi;->TAG:Ljava/lang/String;

    const-string v5, "Cannot get WifiManager"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :cond_0
    :goto_0
    return-void

    .line 1087
    :cond_1
    iget-object v4, p0, Lcom/android/server/HtcPowerSaver$Wifi;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1088
    .local v0, CM:Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1089
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz p1, :cond_2

    .line 1093
    :try_start_0
    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1094
    iget-object v4, p0, Lcom/android/server/HtcPowerSaver$Wifi;->TAG:Ljava/lang/String;

    const-string v5, "wifi set fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1096
    :catch_0
    move-exception v1

    .line 1097
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 1100
    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_2
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1104
    :try_start_1
    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1105
    iget-object v4, p0, Lcom/android/server/HtcPowerSaver$Wifi;->TAG:Ljava/lang/String;

    const-string v5, "wifi set fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1107
    :catch_1
    move-exception v1

    .line 1108
    .restart local v1       #e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 1111
    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_3
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1112
    iget-object v4, p0, Lcom/android/server/HtcPowerSaver$Wifi;->TAG:Ljava/lang/String;

    const-string v5, "wifi not enable"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_4
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1114
    iget-object v4, p0, Lcom/android/server/HtcPowerSaver$Wifi;->TAG:Ljava/lang/String;

    const-string v5, "not connect3"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected applyPowerSaverSettings()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1135
    invoke-direct {p0, v2}, Lcom/android/server/HtcPowerSaver$Wifi;->setSysSettings(Z)V

    .line 1136
    iget-object v0, p0, Lcom/android/server/HtcPowerSaver$Wifi;->TAG:Ljava/lang/String;

    const-string v1, "applyPowerSaverSettings."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    return v2
.end method

.method protected restoreSystemSettings()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1142
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$Wifi;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/server/HtcPowerSaver$Wifi;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1143
    .local v1, sp:Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 1145
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$Wifi;->TAG:Ljava/lang/String;

    const-string v3, "Get SharedPreferences fail."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :goto_0
    return v4

    .line 1148
    :cond_0
    const-string v2, "psaver_normal_wifi"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1149
    .local v0, normalValue:Z
    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$Wifi;->getSysSettings()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1151
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$Wifi;->TAG:Ljava/lang/String;

    const-string v3, "Wifi was enabled."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1153
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/HtcPowerSaver$Wifi;->setSysSettings(Z)V

    goto :goto_0
.end method

.method protected saveSystemSettings()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1121
    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$Wifi;->getSysSettings()Z

    move-result v1

    .line 1122
    .local v1, sysValue:Z
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$Wifi;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/server/HtcPowerSaver$Wifi;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1123
    .local v0, sp:Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 1125
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$Wifi;->TAG:Ljava/lang/String;

    const-string v3, "Get SharedPreferences fail."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :goto_0
    return v5

    .line 1128
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "psaver_normal_wifi"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1129
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$Wifi;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveSystemSettings: sysValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
