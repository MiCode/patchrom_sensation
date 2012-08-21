.class public Lcom/broadcom/android/bluetooth/BluetoothSPP;
.super Ljava/lang/Object;
.source "BluetoothSPP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_SPP_PORT_TYPE_CLIENT:B = 0x2t

.field private static final BLUETOOTH_SPP_PORT_TYPE_INVALID:B = -0x1t

.field private static final BLUETOOTH_SPP_PORT_TYPE_SERVER:B = 0x1t

.field private static final BLUETOOTH_SPP_SEC_ATHN_MASK:B = 0x11t

.field private static final BLUETOOTH_SPP_SEC_AUTH_MASK:B = 0x1t

.field private static final BLUETOOTH_SPP_SEC_ENCR_MASK:B = 0x24t

.field private static final BLUETOOTH_SPP_SEC_NONE_MASK:B = 0x0t

.field private static final TAG:Ljava/lang/String; = "BluetoothSPP"


# instance fields
.field private dataReceived:[B

.field private mAppId:B

.field private mBluetoothSPPEventHandler:Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

.field private mCallback:Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;

.field private mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

.field private mPortId:B

.field private mPortState:I

.field private mPortType:B

.field private mReadThread:Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;

.field private mSerialPortName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/broadcom/android/bluetooth/BluetoothDataGateway;)V
    .locals 2
    .parameter "proxy"

    .prologue
    const/4 v1, -0x1

    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "AndroidBTSerialPort"

    iput-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mSerialPortName:Ljava/lang/String;

    .line 351
    new-instance v0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;

    invoke-direct {v0, p0}, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;-><init>(Lcom/broadcom/android/bluetooth/BluetoothSPP;)V

    iput-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mCallback:Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;

    .line 64
    iput-object p1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    .line 66
    iput-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortId:B

    .line 67
    iput-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    .line 68
    iput-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortType:B

    .line 70
    new-instance v0, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;-><init>(Lcom/broadcom/android/bluetooth/BluetoothSPP;Lcom/broadcom/android/bluetooth/BluetoothSPP$1;)V

    iput-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mReadThread:Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;

    .line 72
    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/android/bluetooth/BluetoothSPP;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortState:I

    return v0
.end method

.method static synthetic access$102(Lcom/broadcom/android/bluetooth/BluetoothSPP;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortState:I

    return p1
.end method

.method static synthetic access$200(Lcom/broadcom/android/bluetooth/BluetoothSPP;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->waitForData()V

    return-void
.end method

.method static synthetic access$300(Lcom/broadcom/android/bluetooth/BluetoothSPP;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->dataReceived:[B

    return-object v0
.end method

.method static synthetic access$302(Lcom/broadcom/android/bluetooth/BluetoothSPP;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->dataReceived:[B

    return-object p1
.end method

.method static synthetic access$400(Lcom/broadcom/android/bluetooth/BluetoothSPP;)B
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-byte v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    return v0
.end method

.method static synthetic access$500(Lcom/broadcom/android/bluetooth/BluetoothSPP;)B
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-byte v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortId:B

    return v0
.end method

.method static synthetic access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mBluetoothSPPEventHandler:Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    return-object v0
.end method

.method private getFirstAvailableSerialPort()B
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    invoke-virtual {v0}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->getFirstAvailableSerialPort()B

    move-result v0

    return v0
.end method

.method private isPortIdValid(B)Z
    .locals 2
    .parameter "portId"

    .prologue
    const/4 v0, 0x0

    .line 114
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortId:B

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private registerSppCallback()V
    .locals 3

    .prologue
    .line 130
    const-string v0, "BluetoothSPP"

    const-string v1, "Register SPP callback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    iget-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    iget-object v2, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mCallback:Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->registerSppCallback(ILcom/broadcom/android/bluetooth/IBluetoothSPPCallback;)V

    .line 133
    return-void
.end method

.method private unregisterSppCallback()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    iget-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v1}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->unregisterSppCallback(I)V

    .line 140
    return-void
.end method

.method private waitForData()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    iget-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v1}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->waitForDataOnPort(B)V

    .line 331
    return-void
.end method


# virtual methods
.method public connect(BLjava/lang/String;)V
    .locals 6
    .parameter "portId"
    .parameter "remoteAddress"

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->isPortIdValid(B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortType:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BluetoothSPP connect invalid port id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mSerialPortName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-byte v5, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->dataGatewayOpen(Ljava/lang/String;BBLjava/lang/String;B)V

    .line 276
    return-void
.end method

.method public create(B)Z
    .locals 3
    .parameter "portId"

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-direct {p0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->getFirstAvailableSerialPort()B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    .line 151
    iget-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 160
    :goto_0
    return v0

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->registerSppCallback()V

    .line 158
    iput-byte p1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortId:B

    .line 159
    invoke-virtual {p0, p1, v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->setSerialPortStatus(BI)V

    .line 160
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public destroy(B)V
    .locals 2
    .parameter "portId"

    .prologue
    const/4 v1, -0x1

    .line 285
    invoke-virtual {p0, p1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->disable(B)V

    .line 286
    invoke-direct {p0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->unregisterSppCallback()V

    .line 288
    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->setSerialPortStatus(BI)V

    .line 289
    iput-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortId:B

    .line 290
    iput-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    .line 291
    iput-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortType:B

    .line 292
    return-void
.end method

.method public disable(B)V
    .locals 3
    .parameter "portId"

    .prologue
    const/4 v2, 0x1

    .line 241
    invoke-direct {p0, p1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->isPortIdValid(B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BluetoothSPP disable invalid port id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_0
    iget-byte v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortType:B

    if-ne v0, v2, :cond_1

    .line 247
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    iget-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v2, v1}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->dataGatewayShutdown(BB)V

    .line 256
    :goto_0
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->setSerialPortStatus(BI)V

    .line 258
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    iget-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v2, v1}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->dataGatewayClose(BB)V

    goto :goto_0
.end method

.method public disconnect(B)V
    .locals 3
    .parameter "portId"

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->isPortIdValid(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    const/4 v1, 0x1

    iget-byte v2, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->dataGatewayClose(BB)V

    .line 182
    return-void

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BluetoothSPP disconnect invalid port id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enable(BB)V
    .locals 5
    .parameter "portId"
    .parameter "portType"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 193
    invoke-direct {p0, p1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->isPortIdValid(B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BluetoothSPP enable invalid port id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    iget-byte v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortType:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 199
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 200
    iput-byte p2, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortType:B

    .line 201
    invoke-virtual {p0, p1, v3}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->setSerialPortStatus(BI)V

    .line 233
    :cond_1
    :goto_0
    return-void

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mSerialPortName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-byte v2, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->dataGatewayListen(BBLjava/lang/String;B)V

    .line 209
    iput-byte p2, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortType:B

    goto :goto_0

    .line 212
    :cond_3
    iget-byte v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortType:B

    if-eq v0, p2, :cond_1

    .line 214
    iget-byte v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortType:B

    if-ne v0, v3, :cond_4

    .line 216
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    iget-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v3, v1}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->dataGatewayShutdown(BB)V

    .line 217
    invoke-virtual {p0, p1, v3}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->setSerialPortStatus(BI)V

    .line 229
    :goto_1
    iput-byte p2, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortType:B

    goto :goto_0

    .line 222
    :cond_4
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    iget-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v3, v1}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->dataGatewayClose(BB)V

    .line 224
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mSerialPortName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-byte v2, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->dataGatewayListen(BBLjava/lang/String;B)V

    goto :goto_1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 78
    :try_start_0
    iget-byte v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortId:B

    invoke-virtual {p0, v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->destroy(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 83
    return-void

    .line 81
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getReceivedData()[B
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->dataReceived:[B

    return-object v0
.end method

.method public getSerialPortStatus(B)I
    .locals 1
    .parameter "portId"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    invoke-virtual {v0, p1}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->getSerialPortStatus(B)I

    move-result v0

    return v0
.end method

.method public declared-synchronized read_port(B)[B
    .locals 2
    .parameter "portId"

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->isPortIdValid(B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 311
    const/4 v0, 0x0

    .line 314
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    iget-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v1}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->sppRead(B)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerEventhandler(Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 325
    iput-object p1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mBluetoothSPPEventHandler:Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    .line 326
    return-void
.end method

.method public setSerialPortStatus(BI)V
    .locals 1
    .parameter "portId"
    .parameter "status"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->setSerialPortStatus(BI)V

    .line 127
    return-void
.end method

.method public startReadData()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mReadThread:Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mReadThread:Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;

    invoke-virtual {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;->start()V

    .line 93
    :cond_0
    return-void
.end method

.method public write(I[B)I
    .locals 2
    .parameter "length"
    .parameter "buffer"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    iget-byte v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v1, p1, p2}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->sppWrite(BI[B)I

    move-result v0

    return v0
.end method
