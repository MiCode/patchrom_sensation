.class public Lcom/htc/service/DeviceManager3LM;
.super Ljava/lang/Object;
.source "DeviceManager3LM.java"


# static fields
.field public static final SETTINGS_SECURE_ADB_BLOCKED:Ljava/lang/String; = "adb_blocked"

.field public static final SETTINGS_SECURE_EMERGENCY_LOCK_TEXT:Ljava/lang/String; = "emergency_lock"

.field private static final TAG:Ljava/lang/String; = "DeviceManager3LM"


# instance fields
.field private mService:Landroid/os/IDeviceManager3LM;


# direct methods
.method public constructor <init>(Landroid/os/IDeviceManager3LM;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    .line 36
    return-void
.end method

.method public static getNoEncryptionList(Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 1
    .parameter "res"

    .prologue
    .line 564
    if-eqz p0, :cond_0

    .line 565
    const v0, 0x1070031

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 567
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public blockAdb(Z)V
    .locals 3
    .parameter "block"

    .prologue
    .line 530
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->blockAdb(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :goto_0
    return-void

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "blockAdb: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkAppInstallPolicies(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .parameter "pkgName"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 234
    .local p2, requestedPermissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, pkgSigs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IDeviceManager3LM;->checkAppInstallPolicies(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 238
    :goto_0
    return v1

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "checkAppInstallPolicies: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkAppUninstallPolicies(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->checkAppUninstallPolicies(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 257
    :goto_0
    return v1

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "checkAppUninstallPolicies: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkPackagePermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "permName"
    .parameter "pkgName"

    .prologue
    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2}, Landroid/os/IDeviceManager3LM;->checkPackagePermission(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 158
    :goto_0
    return v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "checkPackagePermission: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkUidPermission(Ljava/lang/String;I)Z
    .locals 3
    .parameter "permName"
    .parameter "uid"

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2}, Landroid/os/IDeviceManager3LM;->checkUidPermission(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 149
    :goto_0
    return v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "checkUidPermission: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkVpnDns(Ljava/lang/String;)Z
    .locals 3
    .parameter "vpnSuffixes"

    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->checkVpnDns(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 121
    :goto_0
    return v1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "checkVpnDns: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "clear: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearApplicationUserData(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 520
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->clearApplicationUserData(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 524
    :goto_0
    return v1

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "clearApplicationUserData: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public connectToVpn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "abstractSocketName"
    .parameter "vpnSubnets"

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2}, Landroid/os/IDeviceManager3LM;->connectToVpn(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 103
    :goto_0
    return v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "connectToVpn: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deletePackage(Ljava/lang/String;Z)V
    .locals 3
    .parameter "pkgName"
    .parameter "delete_data"

    .prologue
    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2}, Landroid/os/IDeviceManager3LM;->deletePackage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "deletePackage: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disablePackage(Ljava/lang/String;)V
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->disablePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "disablePackage: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disconnectFromVpn(Z)Z
    .locals 3
    .parameter "doReset"

    .prologue
    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->disconnectFromVpn(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 139
    :goto_0
    return v1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "restoreOriginalDns: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enablePackage(Ljava/lang/String;)V
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->enablePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "enablePackage: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public encryptPackage(Ljava/lang/String;ZZ)V
    .locals 3
    .parameter "pkgName"
    .parameter "encrypt"
    .parameter "required"

    .prologue
    .line 466
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IDeviceManager3LM;->encryptPackage(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :goto_0
    return-void

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "encryptPackage: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getBluetoothEnabled()Z
    .locals 3

    .prologue
    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->getBluetoothEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 85
    :goto_0
    return v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "getBluetoothEnabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNfcState()I
    .locals 3

    .prologue
    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->getNfcState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 489
    :goto_0
    return v1

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "getNfcState: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 489
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 475
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->getPackageGids(Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 479
    :goto_0
    return-object v1

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "getPackageGids: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVersion()I
    .locals 3

    .prologue
    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->getVersion()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 52
    :goto_0
    return v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "getVersion: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiState()I
    .locals 3

    .prologue
    .line 502
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->getWifiState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 506
    :goto_0
    return v1

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "getWifiState: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 506
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installPackage(Ljava/lang/String;)V
    .locals 3
    .parameter "packageURIAsString"

    .prologue
    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->installPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "installPackage: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isAdbBlocked()Z
    .locals 3

    .prologue
    .line 538
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->isAdbBlocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 542
    :goto_0
    return v1

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "isAdbBlocked: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDataEncrypted()Z
    .locals 3

    .prologue
    .line 422
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->isDataEncrypted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 426
    :goto_0
    return v1

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "isDataEncrypted: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDataEncryptionRequired()Z
    .locals 3

    .prologue
    .line 431
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->isDataEncryptionRequired()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 435
    :goto_0
    return v1

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "isDataEncryptionRequired: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPackageDisabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->isPackageDisabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 201
    :goto_0
    return v1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "isPackageDisabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPackageEncrypted(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 448
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->isPackageEncrypted(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 452
    :goto_0
    return v1

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "isPackageEncrypted: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPackageEncryptionRequired(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 457
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->isPackageEncryptionRequired(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 461
    :goto_0
    return v1

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "isPackageEncryptionRequired: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 461
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSdEncrypted()Z
    .locals 3

    .prologue
    .line 396
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->isSdEncrypted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 400
    :goto_0
    return v1

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "isSdEncrypted: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSdEncryptionRequired()Z
    .locals 3

    .prologue
    .line 405
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->isSdEncryptionRequired()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 409
    :goto_0
    return v1

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "isSdEncryptionRequired: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSsidAllowed(Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"

    .prologue
    .line 555
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->isSsidAllowed(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 559
    :goto_0
    return v1

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "isSsidAllowed: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 559
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStoreChangePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "oldPassword"
    .parameter "newPassword"

    .prologue
    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2}, Landroid/os/IDeviceManager3LM;->keyStoreChangePassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 372
    :goto_0
    return v1

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "keyStoreChangePassword: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStoreContains(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    .line 350
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->keyStoreContains(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 354
    :goto_0
    return v1

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "keyStoreContains: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStoreDeleteKey(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    .line 306
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->keyStoreDeleteKey(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 310
    :goto_0
    return v1

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "keyStoreDeleteKey: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStoreGetKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->keyStoreGetKey(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 301
    :goto_0
    return-object v1

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "keyStoreGetKey: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStoreGetLastError()I
    .locals 3

    .prologue
    .line 341
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->keyStoreGetLastError()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 345
    :goto_0
    return v1

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "keyStoreGetLastError: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStoreLock()Z
    .locals 3

    .prologue
    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->keyStoreLock()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 327
    :goto_0
    return v1

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "keyStoreLock: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStorePutKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "name"
    .parameter "key"

    .prologue
    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2}, Landroid/os/IDeviceManager3LM;->keyStorePutKey(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 292
    :goto_0
    return v1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "keyStorePutKey: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStoreReset()Z
    .locals 3

    .prologue
    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->keyStoreReset()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 363
    :goto_0
    return v1

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "keyStoreReset: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStoreSetPassword(Ljava/lang/String;)V
    .locals 3
    .parameter "password"

    .prologue
    .line 315
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->keyStoreSetPassword(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "keyStoreSetPassword: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public keyStoreTest()I
    .locals 3

    .prologue
    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->keyStoreTest()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 283
    :goto_0
    return v1

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "keyStoreTest: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyStoreUnlock(Ljava/lang/String;)Z
    .locals 3
    .parameter "password"

    .prologue
    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->keyStoreUnlock(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 336
    :goto_0
    return v1

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "keyStoreUnlock: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public putSettingsSecureInt(Ljava/lang/String;I)Z
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 386
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2}, Landroid/os/IDeviceManager3LM;->putSettingsSecureInt(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 390
    :goto_0
    return v1

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "putSettingsSecureInt: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public putSettingsSecureString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 377
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2}, Landroid/os/IDeviceManager3LM;->putSettingsSecureString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 381
    :goto_0
    return v1

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "putSettingsSecureString: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public restoreOriginalDns(Ljava/lang/String;)Z
    .locals 3
    .parameter "vpnSuffixes"

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->restoreOriginalDns(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 130
    :goto_0
    return v1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "restoreOriginalDns: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAllowedPackages(Ljava/util/Map;)Z
    .locals 3
    .parameter "pkgNames"

    .prologue
    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setAllowedPackages(Ljava/util/Map;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 192
    :goto_0
    return v1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "setAllowedPackages: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAppInstallPermissionPolicies(Ljava/util/Map;)Z
    .locals 3
    .parameter "permNameRegexPermMap"

    .prologue
    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setAppInstallPermissionPolicies(Ljava/util/Map;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 220
    :goto_0
    return v1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "setAppInstallPermissionPolicies: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAppInstallPkgNamePolicies(Ljava/util/Map;)Z
    .locals 3
    .parameter "pkgNameRegexPermMap"

    .prologue
    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setAppInstallPkgNamePolicies(Ljava/util/Map;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 211
    :goto_0
    return v1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "setAppInstallPkgNamePolicies: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAppInstallPubkeyPolicies(Ljava/util/Map;)Z
    .locals 3
    .parameter "pubkeyRegexPermMap"

    .prologue
    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setAppInstallPubkeyPolicies(Ljava/util/Map;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 229
    :goto_0
    return v1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "setAppInstallPubkeyPolicies: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAppUninstallPkgNamePolicies(Ljava/util/Map;)Z
    .locals 3
    .parameter "uninstallPkgNameRegexPermMap"

    .prologue
    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setAppUninstallPkgNamePolicies(Ljava/util/Map;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 248
    :goto_0
    return v1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "setAppUninstallPkgNamePolicies: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBluetoothEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setBluetoothEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "setBluetoothEnabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBootLock(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setBootLock(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "setBootLock: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDataEncryptionRequired(Z)V
    .locals 3
    .parameter "required"

    .prologue
    .line 440
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setDataEncryptionRequired(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_0
    return-void

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "setDataEncryptionRequired: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setNfcState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 494
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setNfcState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :goto_0
    return-void

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "setNfcState: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setNotificationText(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setNotificationText(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "setNotificationText: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPackagePermission(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .parameter "permName"
    .parameter "pkgName"
    .parameter "enable"

    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IDeviceManager3LM;->setPackagePermission(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 167
    :goto_0
    return v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "setPackagePermission: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSdEncryptionRequired(Z)V
    .locals 3
    .parameter "required"

    .prologue
    .line 414
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setSdEncryptionRequired(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "setSdEncryptionRequired: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSsidFilter(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 547
    .local p1, filter:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setSsidFilter(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :goto_0
    return-void

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "setSsidFilter: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setWifiState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setWifiState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :goto_0
    return-void

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "setWifiState: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setupVpnDns(Ljava/lang/String;)Z
    .locals 3
    .parameter "vpnSuffixes"

    .prologue
    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->setupVpnDns(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 112
    :goto_0
    return v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "setupVpnDns: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unlock()V
    .locals 3

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->unlock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DeviceManager3LM"

    const-string v2, "unlock: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
