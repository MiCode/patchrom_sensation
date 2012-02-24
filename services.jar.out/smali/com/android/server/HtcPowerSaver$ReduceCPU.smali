.class final Lcom/android/server/HtcPowerSaver$ReduceCPU;
.super Lcom/android/server/HtcPowerSaver$Feature;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcPowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReduceCPU"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIPowerManager:Landroid/os/IPowerManager;

.field final synthetic this$0:Lcom/android/server/HtcPowerSaver;


# direct methods
.method constructor <init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "ctx"

    .prologue
    .line 1232
    iput-object p1, p0, Lcom/android/server/HtcPowerSaver$ReduceCPU;->this$0:Lcom/android/server/HtcPowerSaver;

    .line 1233
    const-string v2, "ReduceCPU"

    const-string v3, "powersaver_reduce_CPU"

    const/4 v4, 0x1

    const-string v5, "sys.psaver.rdcpu"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/HtcPowerSaver$Feature;-><init>(Lcom/android/server/HtcPowerSaver;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1234
    iput-object p2, p0, Lcom/android/server/HtcPowerSaver$ReduceCPU;->mContext:Landroid/content/Context;

    .line 1235
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver$ReduceCPU;->mIPowerManager:Landroid/os/IPowerManager;

    .line 1236
    return-void
.end method


# virtual methods
.method protected applyPowerSaverSettings()I
    .locals 4

    .prologue
    .line 1246
    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$ReduceCPU;->TAG:Ljava/lang/String;

    const-string v2, "applyPowerSaverSettings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    invoke-static {}, Landroid/os/Power;->acquireCpuSingleCore()V

    .line 1249
    :try_start_0
    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$ReduceCPU;->mIPowerManager:Landroid/os/IPowerManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->enableCpuApDvcs(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1253
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 1250
    :catch_0
    move-exception v0

    .line 1251
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$ReduceCPU;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyPowerSaverSettings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected restoreSystemSettings()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1258
    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$ReduceCPU;->TAG:Ljava/lang/String;

    const-string v2, "restorePowerSaverSettings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    invoke-static {}, Landroid/os/Power;->releaseCpuSingleCore()V

    .line 1261
    :try_start_0
    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$ReduceCPU;->mIPowerManager:Landroid/os/IPowerManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->enableCpuApDvcs(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1265
    :goto_0
    return v4

    .line 1262
    :catch_0
    move-exception v0

    .line 1263
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$ReduceCPU;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreSystemSettings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected saveSystemSettings()I
    .locals 2

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/android/server/HtcPowerSaver$ReduceCPU;->TAG:Ljava/lang/String;

    const-string v1, "restoreSystemSettings: do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    const/4 v0, 0x0

    return v0
.end method
