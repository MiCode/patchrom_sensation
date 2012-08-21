.class public Lcom/broadcom/android/bluetooth/BluetoothDataGateway;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothDataGateway.java"


# static fields
.field private static final DBG:Z = true

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_dg_service"

.field private static final TAG:Ljava/lang/String; = "BluetoothDataGateway"


# instance fields
.field private mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 86
    const-string v0, "BluetoothDataGateway"

    const-string v1, "BluetoothDataGateway Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iput-object p1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    .line 88
    return-void
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .locals 3
    .parameter "ctx"
    .parameter "cb"

    .prologue
    .line 58
    const-string v1, "bluetooth_dg_service"

    invoke-static {p0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    const-string v1, "BluetoothDataGateway"

    const-string v2, "Unable to get proxy: service is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v1, 0x0

    .line 63
    :goto_0
    return v1

    .line 62
    :cond_0
    new-instance v0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    invoke-direct {v0}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;-><init>()V

    .line 63
    .local v0, p:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.BluetoothTestModeService"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public dataGatewayClose(BB)V
    .locals 3
    .parameter "serviceId"
    .parameter "appId"

    .prologue
    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->dataGatewayClose(BB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDataGateway"

    const-string v2, "dataGatewayClose Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized dataGatewayDisable()V
    .locals 3

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->dataGatewayDisable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    monitor-exit p0

    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "BluetoothDataGateway"

    const-string v2, "dataGatewayDisable failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 211
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dataGatewayEnable()V
    .locals 3

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->dataGatewayEnable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    monitor-exit p0

    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "BluetoothDataGateway"

    const-string v2, "dataGatewayEnable failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 198
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dataGatewayListen(BBLjava/lang/String;B)V
    .locals 3
    .parameter "serviceId"
    .parameter "securityMask"
    .parameter "serviceName"
    .parameter "appId"

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->dataGatewayListen(BBLjava/lang/String;B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    monitor-exit p0

    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "BluetoothDataGateway"

    const-string v2, "dataGatewayListen failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 229
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public dataGatewayOpen(Ljava/lang/String;BBLjava/lang/String;B)V
    .locals 7
    .parameter "bdAddress"
    .parameter "serviceId"
    .parameter "securityMask"
    .parameter "serviceName"
    .parameter "appId"

    .prologue
    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->dataGatewayOpen(Ljava/lang/String;BBLjava/lang/String;B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v6

    .line 248
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "BluetoothDataGateway"

    const-string v1, "dataGatewayOpen Failed"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dataGatewayShutdown(BB)V
    .locals 3
    .parameter "serviceId"
    .parameter "appId"

    .prologue
    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->dataGatewayShutdown(BB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDataGateway"

    const-string v2, "dataGatewayShutdown Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized getFirstAvailableSerialPort()B
    .locals 3

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->getFirstAvailableSerialPort()B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 99
    :goto_0
    monitor-exit p0

    return v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "BluetoothDataGateway"

    const-string v2, "getFirstAvailableSerialPort failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    const/4 v1, -0x1

    goto :goto_0

    .line 96
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getSerialPortStatus(B)I
    .locals 3
    .parameter "portId"

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->getSerialPortStatus(B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 113
    :goto_0
    monitor-exit p0

    return v1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "BluetoothDataGateway"

    const-string v2, "getSerialPortStatus failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    const/4 v1, -0x1

    goto :goto_0

    .line 110
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected init(Landroid/os/IBinder;)Z
    .locals 3
    .parameter "service"

    .prologue
    .line 72
    :try_start_0
    check-cast p1, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    .end local p1
    iput-object p1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    const/4 v1, 0x1

    .line 77
    :goto_0
    return v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothDataGateway"

    const-string v2, "Unable to initialize proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized registerSppCallback(ILcom/broadcom/android/bluetooth/IBluetoothSPPCallback;)V
    .locals 4
    .parameter "portId"
    .parameter "callback"

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothDataGateway"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerSppCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->registerSppCallback(ILcom/broadcom/android/bluetooth/IBluetoothSPPCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    monitor-exit p0

    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "BluetoothDataGateway"

    const-string v2, "registerSppCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setSerialPortStatus(BI)V
    .locals 3
    .parameter "portId"
    .parameter "status"

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->setSerialPortStatus(BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    monitor-exit p0

    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "BluetoothDataGateway"

    const-string v2, "unregisterSppCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 124
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sppRead(B)[B
    .locals 3
    .parameter "portId"

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->sppRead(B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 187
    :goto_0
    monitor-exit p0

    return-object v1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "BluetoothDataGateway"

    const-string v2, "sppRead failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    const/4 v1, 0x0

    goto :goto_0

    .line 184
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sppWrite(BI[B)I
    .locals 3
    .parameter "portId"
    .parameter "length"
    .parameter "buffer"

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1, p2, p3}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->sppWrite(BI[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 172
    :goto_0
    monitor-exit p0

    return v1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "BluetoothDataGateway"

    const-string v2, "sppWrite failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    const/4 v1, -0x1

    goto :goto_0

    .line 169
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized unregisterSppCallback(I)V
    .locals 3
    .parameter "portId"

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->unregisterSppCallback(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    monitor-exit p0

    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "BluetoothDataGateway"

    const-string v2, "unregisterSppCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 153
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public waitForDataOnPort(B)V
    .locals 3
    .parameter "appId"

    .prologue
    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->waitForDataOnPort(B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDataGateway"

    const-string v2, "waitForDataOnPort Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
