.class final Lcom/android/server/HtcPowerSaver$OnlyCDMA;
.super Lcom/android/server/HtcPowerSaver$Feature;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcPowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnlyCDMA"
.end annotation


# static fields
.field private static final DEFAULT_N_NETWORK_TYPE:I = 0x8

.field private static final KEY_N_ONLY_CDMA:Ljava/lang/String; = "powersaver_normal_network_mode"


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/HtcPowerSaver;


# direct methods
.method constructor <init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "ctx"

    .prologue
    .line 1284
    iput-object p1, p0, Lcom/android/server/HtcPowerSaver$OnlyCDMA;->this$0:Lcom/android/server/HtcPowerSaver;

    .line 1285
    const-string v2, "OnlyCDMA"

    const-string v3, "powersaver_CDMAonly"

    const/4 v4, 0x1

    const-string v5, "sys.psaver.lteconn"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/HtcPowerSaver$Feature;-><init>(Lcom/android/server/HtcPowerSaver;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1286
    iput-object p2, p0, Lcom/android/server/HtcPowerSaver$OnlyCDMA;->mContext:Landroid/content/Context;

    .line 1287
    return-void
.end method

.method private getNetworkType()I
    .locals 6

    .prologue
    .line 1299
    const/16 v2, 0x8

    .line 1301
    .local v2, type:I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/HtcPowerSaver$OnlyCDMA;->mContext:Landroid/content/Context;

    const-string v4, "htctelephony"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/HtcTelephonyManager;

    .line 1302
    .local v1, mgr:Lcom/htc/service/HtcTelephonyManager;
    invoke-virtual {v1}, Lcom/htc/service/HtcTelephonyManager;->getPreferredNetworkType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1306
    .end local v1           #mgr:Lcom/htc/service/HtcTelephonyManager;
    :goto_0
    return v2

    .line 1303
    :catch_0
    move-exception v0

    .line 1304
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcPowerSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get PreferredNetworktype fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSysSettings()I
    .locals 4

    .prologue
    .line 1310
    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$OnlyCDMA;->getNetworkType()I

    move-result v0

    .line 1311
    .local v0, mode:I
    const-string v1, "HtcPowerSaver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSysSettings: mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    return v0
.end method

.method private setNetworkType(I)V
    .locals 5
    .parameter "networkType"

    .prologue
    .line 1291
    :try_start_0
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$OnlyCDMA;->mContext:Landroid/content/Context;

    const-string v3, "htctelephony"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/HtcTelephonyManager;

    .line 1292
    .local v1, mgr:Lcom/htc/service/HtcTelephonyManager;
    invoke-virtual {v1, p1}, Lcom/htc/service/HtcTelephonyManager;->setPreferredNetworkType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1296
    .end local v1           #mgr:Lcom/htc/service/HtcTelephonyManager;
    :goto_0
    return-void

    .line 1293
    :catch_0
    move-exception v0

    .line 1294
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set PreferredNetworktype fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected applyPowerSaverSettings()I
    .locals 2

    .prologue
    .line 1330
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/HtcPowerSaver$OnlyCDMA;->setNetworkType(I)V

    .line 1331
    const-string v0, "HtcPowerSaver"

    const-string v1, "applyPowerSaverSettings: setNetworkType=4"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    const/4 v0, 0x0

    return v0
.end method

.method protected restoreSystemSettings()I
    .locals 5

    .prologue
    .line 1337
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$OnlyCDMA;->this$0:Lcom/android/server/HtcPowerSaver;

    iget-object v3, p0, Lcom/android/server/HtcPowerSaver$OnlyCDMA;->mContext:Landroid/content/Context;

    #calls: Lcom/android/server/HtcPowerSaver;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static {v2, v3}, Lcom/android/server/HtcPowerSaver;->access$400(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1338
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "powersaver_normal_network_mode"

    const/16 v3, 0x8

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1339
    .local v0, normalValue:I
    invoke-direct {p0, v0}, Lcom/android/server/HtcPowerSaver$OnlyCDMA;->setNetworkType(I)V

    .line 1340
    const-string v2, "HtcPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreSystemSettings: normalValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    const/4 v2, 0x0

    return v2
.end method

.method protected saveSystemSettings()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1317
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$OnlyCDMA;->this$0:Lcom/android/server/HtcPowerSaver;

    iget-object v3, p0, Lcom/android/server/HtcPowerSaver$OnlyCDMA;->mContext:Landroid/content/Context;

    #calls: Lcom/android/server/HtcPowerSaver;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static {v2, v3}, Lcom/android/server/HtcPowerSaver;->access$400(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1318
    .local v1, sp:Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 1319
    const-string v2, "HtcPowerSaver"

    const-string v3, "Get SharedPreferences fail."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    :goto_0
    return v5

    .line 1322
    :cond_0
    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$OnlyCDMA;->getSysSettings()I

    move-result v0

    .line 1323
    .local v0, mode:I
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "powersaver_normal_network_mode"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1324
    const-string v2, "HtcPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveSystemSettings: save mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
