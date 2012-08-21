.class public final Lcom/broadcom/bt/service/gatt/BluetoothGattService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "BluetoothGattService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothGattService"

.field private static final V:Z = true

.field private static mBLEConnectionCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAttrConvMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mClientInitialCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/broadcom/bt/le/api/GattClientContext;",
            ">;"
        }
    .end annotation
.end field

.field private mDirtyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/broadcom/bt/le/api/CharacteristicContext;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mIsFinish:Z

.field private mServerCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/broadcom/bt/le/api/GattServerContext;",
            ">;"
        }
    .end annotation
.end field

.field private mServerInitialCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/broadcom/bt/le/api/GattServerContext;",
            ">;"
        }
    .end annotation
.end field

.field private mServerProfileCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/broadcom/bt/service/gatt/BluetoothGattID;",
            "Lcom/broadcom/bt/le/api/IBleProfileEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSvcInstanceIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/broadcom/bt/service/gatt/BluetoothGattID;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mserIftoUuidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/broadcom/bt/service/gatt/BluetoothGattID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mBLEConnectionCache:Ljava/util/ArrayList;

    .line 86
    invoke-static {}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->classInitNative()V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 91
    iput-boolean v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mIsFinish:Z

    .line 92
    iput-boolean v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mEnabled:Z

    .line 93
    return-void
.end method

.method private native GATTServer_AddCharDescriptorNative(IIJJI)V
.end method

.method private native GATTServer_AddCharacteristicNative(IIJJII)V
.end method

.method private native GATTServer_AddIncludedServiceNative(II)V
.end method

.method private GATTServer_AppDeregister(I)V
    .locals 2
    .parameter "serIf"

    .prologue
    .line 1685
    const-string v0, "BluetoothGattService"

    const-string v1, "GATTServer_AppDeregister"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AppDeregisterNative(I)V

    .line 1687
    return-void
.end method

.method private native GATTServer_AppDeregisterNative(I)V
.end method

.method private GATTServer_AppRegister(IJJ)V
    .locals 3
    .parameter "type"
    .parameter "appUuidLsb"
    .parameter "appUuidMsb"

    .prologue
    .line 1677
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GATTServer_AppRegister uuid lsb is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msb is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    invoke-direct/range {p0 .. p5}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AppRegisterNative(IJJ)V

    .line 1680
    return-void
.end method

.method private native GATTServer_AppRegisterNative(IJJ)V
.end method

.method private native GATTServer_CancelOpenNative(BLjava/lang/String;Z)V
.end method

.method private native GATTServer_CloseNative(I)V
.end method

.method private native GATTServer_CreateServiceNative(BIJJIIZ)V
.end method

.method private native GATTServer_DeleteServiceNative(I)V
.end method

.method private native GATTServer_HandleValueIndicationNative(II[B)V
.end method

.method private native GATTServer_HandleValueNotificationNative(II[B)V
.end method

.method private native GATTServer_OpenNative(BLjava/lang/String;Z)V
.end method

.method private native GATTServer_SendRspNative(IIBII[BBZ)V
.end method

.method private native GATTServer_StartServiceNative(IB)V
.end method

.method private native GATTServer_StopServiceNative(I)V
.end method

.method private static native classInitNative()V
.end method

.method private native closeNative(BLjava/lang/String;IZ)V
.end method

.method private native deregisterForNotificationsNative(BLjava/lang/String;IIIJJIIJJ)V
.end method

.method private native disableNative()V
.end method

.method private native enableNative()V
.end method

.method private native executeWriteNative(IZ)V
.end method

.method private findAllContextsByAddress(Ljava/lang/String;)[Lcom/broadcom/bt/le/api/GattClientContext;
    .locals 8
    .parameter "address"

    .prologue
    .line 295
    const-string v4, "BluetoothGattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findcontextByAddress "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v1, clientContext:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/broadcom/bt/le/api/GattClientContext;>;"
    iget-object v5, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 299
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/GattClientContext;

    .line 301
    .local v0, c:Lcom/broadcom/bt/le/api/GattClientContext;
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getPeerAddress()Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, peerAddress:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 303
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getPeerAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 304
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    const-string v4, "BluetoothGattService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findAllContextsByAddress found context for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 311
    .end local v0           #c:Lcom/broadcom/bt/le/api/GattClientContext;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #peerAddress:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/broadcom/bt/le/api/GattClientContext;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/broadcom/bt/le/api/GattClientContext;

    return-object v4
.end method

.method private findCachedConnection(ILjava/lang/String;)Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    .locals 5
    .parameter "connId"
    .parameter "address"

    .prologue
    .line 1034
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findCachedConnection: connId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", address = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mBLEConnectionCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1037
    sget-object v2, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mBLEConnectionCache:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;

    .line 1038
    .local v0, connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findCachedConnection:  index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " address = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;->mremoteAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] connId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;->mconnId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iget v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;->mconnId:I

    if-ne v2, p1, :cond_0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;->mremoteAddress:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1043
    const-string v2, "BluetoothGattService"

    const-string v3, "findCachedConnection: connection found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    .end local v0           #connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    :goto_1
    return-object v0

    .line 1036
    .restart local v0       #connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1047
    .end local v0           #connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    :cond_1
    const-string v2, "BluetoothGattService"

    const-string v3, "findCachedConnection: connection not found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private findCachedConnection(Ljava/lang/String;)Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    .locals 5
    .parameter "address"

    .prologue
    .line 1017
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findCachedConnection: address = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mBLEConnectionCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1019
    sget-object v2, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mBLEConnectionCache:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;

    .line 1020
    .local v0, connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findCachedConnection:  index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " address = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;->mremoteAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] connId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;->mconnId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;->mremoteAddress:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1024
    const-string v2, "BluetoothGattService"

    const-string v3, "findCachedConnection: connection found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    .end local v0           #connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    :goto_1
    return-object v0

    .line 1018
    .restart local v0       #connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1028
    .end local v0           #connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    :cond_1
    const-string v2, "BluetoothGattService"

    const-string v3, "findCachedConnection: connection not found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private findContextByAppId(Lcom/broadcom/bt/service/gatt/BluetoothGattID;)Lcom/broadcom/bt/le/api/GattClientContext;
    .locals 7
    .parameter "appId"

    .prologue
    .line 279
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findcontextByAppId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v2, 0x0

    .line 281
    .local v2, ret:Lcom/broadcom/bt/le/api/GattClientContext;
    iget-object v4, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 282
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/GattClientContext;

    .line 284
    .local v0, c:Lcom/broadcom/bt/le/api/GattClientContext;
    iget-object v3, v0, Lcom/broadcom/bt/le/api/GattClientContext;->mClientAppId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v3, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 285
    const-string v3, "BluetoothGattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findcontextByAppId found context for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    move-object v2, v0

    .line 290
    .end local v0           #c:Lcom/broadcom/bt/le/api/GattClientContext;
    :cond_1
    monitor-exit v4

    .line 291
    return-object v2

    .line 290
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private findContextByClientIf(I)Lcom/broadcom/bt/le/api/GattClientContext;
    .locals 7
    .parameter "clientIf"

    .prologue
    .line 261
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findcontextByclientIf "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v2, 0x0

    .line 263
    .local v2, ret:Lcom/broadcom/bt/le/api/GattClientContext;
    iget-object v4, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 264
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/GattClientContext;

    .line 266
    .local v0, c:Lcom/broadcom/bt/le/api/GattClientContext;
    iget-byte v3, v0, Lcom/broadcom/bt/le/api/GattClientContext;->mClientIf:B

    if-ne v3, p1, :cond_0

    .line 267
    const-string v3, "BluetoothGattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findcontextByclientIf found context for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    move-object v2, v0

    .line 273
    .end local v0           #c:Lcom/broadcom/bt/le/api/GattClientContext;
    :cond_1
    monitor-exit v4

    .line 274
    return-object v2

    .line 273
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;
    .locals 7
    .parameter "connID"

    .prologue
    .line 243
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findContextByConnID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v2, 0x0

    .line 246
    .local v2, ret:Lcom/broadcom/bt/le/api/GattClientContext;
    iget-object v4, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 247
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/GattClientContext;

    .line 249
    .local v0, c:Lcom/broadcom/bt/le/api/GattClientContext;
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getConnID()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 250
    const-string v3, "BluetoothGattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findcontextByconnID found context for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    move-object v2, v0

    .line 256
    .end local v0           #c:Lcom/broadcom/bt/le/api/GattClientContext;
    :cond_1
    monitor-exit v4

    .line 257
    return-object v2

    .line 256
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private findcontextByAddress(Ljava/lang/String;)Lcom/broadcom/bt/le/api/GattClientContext;
    .locals 8
    .parameter "address"

    .prologue
    .line 317
    const-string v4, "BluetoothGattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findcontextByAddress "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v3, 0x0

    .line 319
    .local v3, ret:Lcom/broadcom/bt/le/api/GattClientContext;
    iget-object v5, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 320
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/GattClientContext;

    .line 322
    .local v0, c:Lcom/broadcom/bt/le/api/GattClientContext;
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getPeerAddress()Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, peerAddress:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 324
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getPeerAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 325
    const-string v4, "BluetoothGattService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findcontextByAddress found context for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    move-object v3, v0

    .line 332
    .end local v0           #c:Lcom/broadcom/bt/le/api/GattClientContext;
    .end local v2           #peerAddress:Ljava/lang/String;
    :cond_1
    monitor-exit v5

    .line 333
    return-object v3

    .line 332
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private native getFirstCharDescrNative(IIIIJJIIJJZIJJ)V
.end method

.method private native getFirstCharNative(IIIIJJZIJJ)V
.end method

.method private native getFirstIncludedServiceNative(IIIIJJZIJJ)V
.end method

.method private native getNextCharDescrNative(IIIIJJIIJJIJJZIJJ)V
.end method

.method private native getNextCharNative(IIIIJJIIJJZIJJ)V
.end method

.method private native getNextIncludedServiceNative(IIIIJJIIIJJZIJJ)V
.end method

.method private native openNative(BLjava/lang/String;Z)V
.end method

.method private native prepareWriteNative(IIIIJJIIJJII[B)V
.end method

.method private native readCharDescrNative(IIIIJJIIJJIJJB)V
.end method

.method private native readCharNative(IIIIJJIIJJB)V
.end method

.method private native registerAppNative(IJJ)V
.end method

.method private native registerForNotificationsNative(BLjava/lang/String;IIIJJIIJJ)V
.end method

.method private removeCachedConnection(ILjava/lang/String;)Z
    .locals 6
    .parameter "connId"
    .parameter "address"

    .prologue
    const/4 v2, 0x1

    .line 1052
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeCachedConnection: connId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", address = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mBLEConnectionCache:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1055
    sget-object v3, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mBLEConnectionCache:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;

    .line 1056
    .local v0, connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    iget-object v3, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;->mremoteAddress:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1057
    iget v3, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;->mconnId:I

    if-ne v3, p1, :cond_0

    iget-object v3, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;->mremoteAddress:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v2, :cond_0

    .line 1059
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeCachedConnection: removed connId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", address = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    sget-object v3, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mBLEConnectionCache:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1068
    .end local v0           #connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    :goto_1
    return v2

    .line 1054
    .restart local v0       #connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1066
    .end local v0           #connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    :cond_1
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeCachedConnection: connId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", address = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private native searchServiceNative(IZIJJ)V
.end method

.method private native sendIndConfirmNative(IIIIJJIIJJ)V
.end method

.method private native setEncryptionNative(Ljava/lang/String;B)V
.end method

.method private native setScanParametersNative(II)V
.end method

.method private native unregisterAppNative(B)V
.end method

.method private native writeCharDescrValueNative(IIIIJJIIJJIJJIB[B)V
.end method

.method private native writeCharValueNative(IIIIJJIIJJIB[B)V
.end method


# virtual methods
.method public GATTServer_AddCharDescriptor(IILcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 8
    .parameter "svc_handle"
    .parameter "permissions"
    .parameter "descrId"

    .prologue
    .line 1798
    const-string v0, "BluetoothGattService"

    const-string v1, "GATTServer_AddCharDescriptor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    invoke-virtual {p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1801
    invoke-virtual {p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v2

    invoke-virtual {p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid16()I

    move-result v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AddCharDescriptorNative(IIJJI)V

    .line 1809
    :goto_0
    return-void

    .line 1804
    :cond_0
    invoke-virtual {p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v2

    invoke-virtual {p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-virtual {p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v5

    move-object v0, p0

    move v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AddCharDescriptorNative(IIJJI)V

    goto :goto_0
.end method

.method public GATTServer_AddCharacteristic(ILcom/broadcom/bt/service/gatt/BluetoothGattID;IIZI)V
    .locals 8
    .parameter "svcHandle"
    .parameter "charId"
    .parameter "permissions"
    .parameter "charProperty"
    .parameter "dirtyFlag"
    .parameter "dirtyDescNum"

    .prologue
    .line 1734
    const-string v0, "BluetoothGattService"

    const-string v1, "GATTServer_AddCharacteristic"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AddCharacteristic(ILcom/broadcom/bt/service/gatt/BluetoothGattID;IIZIZ)V

    .line 1737
    return-void
.end method

.method public GATTServer_AddCharacteristic(ILcom/broadcom/bt/service/gatt/BluetoothGattID;IIZIZ)V
    .locals 10
    .parameter "svcHandle"
    .parameter "charId"
    .parameter "permissions"
    .parameter "charProperty"
    .parameter "dirtyFlag"
    .parameter "dirtyDescNum"
    .parameter "waitQueueCheck"

    .prologue
    .line 1742
    const-string v1, "BluetoothGattService"

    const-string v2, "GATTServer_AddCharacteristic with waitQueueCheck"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    new-instance v0, Lcom/broadcom/bt/le/api/CharacteristicContext;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/broadcom/bt/le/api/CharacteristicContext;-><init>(ILcom/broadcom/bt/service/gatt/BluetoothGattID;IIZI)V

    .line 1746
    .local v0, context:Lcom/broadcom/bt/le/api/CharacteristicContext;
    if-eqz p7, :cond_1

    .line 1747
    monitor-enter p0

    .line 1748
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mDirtyList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1749
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mDirtyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1750
    const-string v1, "BluetoothGattService"

    const-string v2, "Queuing up the characteristic.."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    monitor-exit p0

    .line 1766
    :goto_0
    return-void

    .line 1753
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1756
    :cond_1
    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1757
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uuid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid16()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v3

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid16()I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v8, p3

    move v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AddCharacteristicNative(IIJJII)V

    goto :goto_0

    .line 1753
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1761
    :cond_2
    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v3

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v6

    move-object v1, p0

    move v2, p1

    move v8, p3

    move v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AddCharacteristicNative(IIJJII)V

    goto :goto_0
.end method

.method public GATTServer_AddIncludedService(II)V
    .locals 2
    .parameter "svcHandle"
    .parameter "includedSvcHandle"

    .prologue
    .line 1722
    const-string v0, "BluetoothGattService"

    const-string v1, "GATTServer_AddIncludedService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AddIncludedServiceNative(II)V

    .line 1725
    return-void
.end method

.method public GATTServer_CancelOpen(BLjava/lang/String;Z)V
    .locals 2
    .parameter "serIf"
    .parameter "address"
    .parameter "isDirect"

    .prologue
    .line 1781
    const-string v0, "BluetoothGattService"

    const-string v1, "GATTServer_CancelOpen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_CancelOpenNative(BLjava/lang/String;Z)V

    .line 1783
    return-void
.end method

.method public GATTServer_Close(I)V
    .locals 2
    .parameter "connId"

    .prologue
    .line 1788
    const-string v0, "BluetoothGattService"

    const-string v1, "GATTServer_close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_CloseNative(I)V

    .line 1790
    return-void
.end method

.method public declared-synchronized GATTServer_CreateService(BLcom/broadcom/bt/service/gatt/BluetoothGattID;I)V
    .locals 20
    .parameter "serIf"
    .parameter "svcId"
    .parameter "numHandles"

    .prologue
    .line 1696
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothGattService"

    const-string v1, "GATTServer_CreateService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    const/4 v9, 0x0

    .line 1698
    .local v9, isPrimary:Z
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v2

    .line 1699
    .local v2, uuidType:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v0

    if-nez v0, :cond_0

    .line 1700
    const/4 v9, 0x1

    .line 1703
    :cond_0
    const/4 v0, 0x2

    if-ne v2, v0, :cond_1

    .line 1704
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid16()I

    move-result v0

    int-to-long v3, v0

    .line 1705
    .local v3, lsb:J
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uuid type =16 id is 0x"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "%x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "InstanceId ="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "isPrimary="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    const-wide/16 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v7

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_CreateServiceNative(BIJJIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1715
    .end local v3           #lsb:J
    :goto_0
    monitor-exit p0

    return-void

    .line 1709
    :cond_1
    :try_start_1
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uuid type =128 id is "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v17

    move-object/from16 v10, p0

    move/from16 v11, p1

    move v12, v2

    move/from16 v18, p3

    move/from16 v19, v9

    invoke-direct/range {v10 .. v19}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_CreateServiceNative(BIJJIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1696
    .end local v2           #uuidType:I
    .end local v9           #isPrimary:Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public GATTServer_DeleteService(I)V
    .locals 2
    .parameter "svcHandle"

    .prologue
    .line 1815
    const-string v0, "BluetoothGattService"

    const-string v1, "GATTServer_DeleteService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_DeleteServiceNative(I)V

    .line 1818
    return-void
.end method

.method public GATTServer_HandleValueIndication(II[B)V
    .locals 2
    .parameter "connId"
    .parameter "attrHandle"
    .parameter "val"

    .prologue
    .line 1841
    const-string v0, "BluetoothGattService"

    const-string v1, "GATTServer_HandleValueIndication"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_HandleValueIndicationNative(II[B)V

    .line 1844
    return-void
.end method

.method public GATTServer_HandleValueNotification(II[B)V
    .locals 2
    .parameter "connId"
    .parameter "attrHandle"
    .parameter "val"

    .prologue
    .line 1852
    const-string v0, "BluetoothGattService"

    const-string v1, "GATTServer_HandleValueNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_HandleValueNotificationNative(II[B)V

    .line 1854
    return-void
.end method

.method public GATTServer_Open(BLjava/lang/String;Z)V
    .locals 2
    .parameter "serIf"
    .parameter "address"
    .parameter "isDirect"

    .prologue
    .line 1772
    const-string v0, "BluetoothGattService"

    const-string v1, "GATTServer_Open"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_OpenNative(BLjava/lang/String;Z)V

    .line 1774
    return-void
.end method

.method public GATTServer_SendRsp(IIBII[BBZ)V
    .locals 2
    .parameter "connId"
    .parameter "transId"
    .parameter "response_status"
    .parameter "handle"
    .parameter "offset"
    .parameter "val"
    .parameter "authReq"
    .parameter "writeReq"

    .prologue
    .line 1863
    const-string v0, "BluetoothGattService"

    const-string v1, "GATTServer_SendRsp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    invoke-direct/range {p0 .. p8}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_SendRspNative(IIBII[BBZ)V

    .line 1866
    return-void
.end method

.method public GATTServer_StartService(IB)V
    .locals 2
    .parameter "svcHandle"
    .parameter "supTransport"

    .prologue
    .line 1824
    const-string v0, "BluetoothGattService"

    const-string v1, "GATTServer_StartService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_StartServiceNative(IB)V

    .line 1826
    return-void
.end method

.method public GATTServer_StopService(I)V
    .locals 2
    .parameter "svcHandle"

    .prologue
    .line 1831
    const-string v0, "BluetoothGattService"

    const-string v1, "GATTServer_StopService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_StopServiceNative(I)V

    .line 1833
    return-void
.end method

.method public native cleanupNative()V
.end method

.method public close(BLjava/lang/String;IZ)V
    .locals 0
    .parameter "clientIf"
    .parameter "address"
    .parameter "connId"
    .parameter "isDirect"

    .prologue
    .line 239
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->closeNative(BLjava/lang/String;IZ)V

    .line 240
    return-void
.end method

.method public deregisterForNotifications(BLjava/lang/String;Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V
    .locals 16
    .parameter "clientIf"
    .parameter "address"
    .parameter "charId"

    .prologue
    .line 878
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v8

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v11

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v12

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v15}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->deregisterForNotificationsNative(BLjava/lang/String;IIIJJIIJJ)V

    .line 888
    return-void
.end method

.method public declared-synchronized disable()V
    .locals 3

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable: enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-boolean v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mEnabled:Z

    .line 163
    invoke-direct {p0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->disableNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_0
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enable()V
    .locals 3

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable: mEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-boolean v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mEnabled:Z

    if-nez v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->enableNative()V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_0
    monitor-exit p0

    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public executeWrite(IZ)V
    .locals 0
    .parameter "connId"
    .parameter "isExecute"

    .prologue
    .line 844
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->executeWriteNative(IZ)V

    .line 845
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 141
    const-string v0, "BluetoothGattService"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->finish()V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mIsFinish:Z

    .line 144
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 145
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothGattService"

    const-string v2, "finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-boolean v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 132
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->cleanupNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    :goto_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mIsFinish:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    :cond_0
    monitor-exit p0

    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "BluetoothGattService"

    const-string v2, "Unable to cleanup gatt service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 129
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getFirstChar(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 17
    .parameter "connId"
    .parameter "serviceId"
    .parameter "condCharUuid"

    .prologue
    .line 423
    if-nez p3, :cond_2

    const/4 v10, 0x1

    .line 424
    .local v10, find_first:Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v3

    .line 425
    .local v3, serviceIdInstId:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v4

    .line 426
    .local v4, serviceType:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v5

    .line 427
    .local v5, srvcUuidType:I
    const-wide/16 v6, 0x0

    .line 428
    .local v6, serviceIdUuidLsb:J
    const-wide/16 v8, 0x0

    .line 429
    .local v8, serviceIdUuidMsb:J
    const/4 v11, 0x0

    .line 430
    .local v11, charUuidType:I
    const-wide/16 v12, 0x0

    .line 431
    .local v12, condCharUuidLsb:J
    const-wide/16 v14, 0x0

    .line 433
    .local v14, condCharUuidMsb:J
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getFirstChar: connId = "

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v16, " find_first = "

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v16, " serviceType = "

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    if-nez v10, :cond_0

    .line 436
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v11

    .line 439
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v6

    .line 440
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v8

    .line 442
    if-nez v10, :cond_1

    .line 443
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v12

    .line 444
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v14

    :cond_1
    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 447
    invoke-direct/range {v1 .. v15}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->getFirstCharNative(IIIIJJZIJJ)V

    .line 451
    return-void

    .line 423
    .end local v3           #serviceIdInstId:I
    .end local v4           #serviceType:I
    .end local v5           #srvcUuidType:I
    .end local v6           #serviceIdUuidLsb:J
    .end local v8           #serviceIdUuidMsb:J
    .end local v10           #find_first:Z
    .end local v11           #charUuidType:I
    .end local v12           #condCharUuidLsb:J
    .end local v14           #condCharUuidMsb:J
    :cond_2
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public getFirstCharDescr(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 23
    .parameter "connId"
    .parameter "charId"
    .parameter "condDescrUuid"

    .prologue
    .line 515
    if-nez p3, :cond_2

    const/16 v16, 0x1

    .line 517
    .local v16, find_first:Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v3

    .line 518
    .local v3, start_descr_srvc_id_inst_id:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v4

    .line 519
    .local v4, start_descr_service_type:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v5

    .line 520
    .local v5, start_descr_srvc_uuid_type:I
    const-wide/16 v6, 0x0

    .line 521
    .local v6, start_descr_srvc_id_uuid_lsb:J
    const-wide/16 v8, 0x0

    .line 522
    .local v8, start_descr_srvc_id_uuid_msb:J
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v10

    .line 523
    .local v10, start_descr_char_id_inst_id:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v11

    .line 525
    .local v11, start_descr_char_uuid_type:I
    const-wide/16 v12, 0x0

    .line 526
    .local v12, start_descr_char_id_uuid_lsb:J
    const-wide/16 v14, 0x0

    .line 527
    .local v14, start_descr_char_id_uuid_msb:J
    const/16 v17, 0x0

    .line 528
    .local v17, cond_descr_uuid_type:I
    const-wide/16 v18, 0x0

    .line 529
    .local v18, cond_descr_uuid_lsb:J
    const-wide/16 v20, 0x0

    .line 532
    .local v20, cond_descr_uuid_msb:J
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getFirstCharDescr: connId = "

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v22, " find_first = "

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    if-nez v16, :cond_0

    .line 536
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v17

    .line 539
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v6

    .line 540
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v8

    .line 542
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v12

    .line 543
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v14

    .line 545
    if-nez v16, :cond_1

    .line 546
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v18

    .line 547
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v20

    :cond_1
    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 550
    invoke-direct/range {v1 .. v21}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->getFirstCharDescrNative(IIIIJJIIJJZIJJ)V

    .line 559
    return-void

    .line 515
    .end local v3           #start_descr_srvc_id_inst_id:I
    .end local v4           #start_descr_service_type:I
    .end local v5           #start_descr_srvc_uuid_type:I
    .end local v6           #start_descr_srvc_id_uuid_lsb:J
    .end local v8           #start_descr_srvc_id_uuid_msb:J
    .end local v10           #start_descr_char_id_inst_id:I
    .end local v11           #start_descr_char_uuid_type:I
    .end local v12           #start_descr_char_id_uuid_lsb:J
    .end local v14           #start_descr_char_id_uuid_msb:J
    .end local v16           #find_first:Z
    .end local v17           #cond_descr_uuid_type:I
    .end local v18           #cond_descr_uuid_lsb:J
    .end local v20           #cond_descr_uuid_msb:J
    :cond_2
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method public getFirstIncludedService(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 15
    .parameter "connId"
    .parameter "srvcId"
    .parameter "condSrvcUuid"

    .prologue
    .line 631
    if-nez p3, :cond_1

    const/4 v9, 0x1

    .line 633
    .local v9, find_first:Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v2

    .line 634
    .local v2, srvc_id_inst_id:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v3

    .line 635
    .local v3, srvc_id_srvc_type:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v4

    .line 636
    .local v4, srvc_id_uuid_type:I
    const-wide/16 v5, 0x0

    .line 637
    .local v5, srvc_id_uuid_lsb:J
    const-wide/16 v7, 0x0

    .line 638
    .local v7, srvc_id_uuid_msb:J
    const/4 v10, 0x0

    .line 639
    .local v10, cond_srvc_uuid_type:I
    const-wide/16 v11, 0x0

    .line 640
    .local v11, cond_srvc_uuid_lsb:J
    const-wide/16 v13, 0x0

    .line 642
    .local v13, cond_srvc_uuid_msb:J
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v5

    .line 643
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v7

    .line 645
    if-nez v9, :cond_0

    .line 646
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v10

    .line 647
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v11

    .line 648
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v13

    :cond_0
    move-object v0, p0

    move/from16 v1, p1

    .line 651
    invoke-direct/range {v0 .. v14}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->getFirstIncludedServiceNative(IIIIJJZIJJ)V

    .line 654
    return-void

    .line 631
    .end local v2           #srvc_id_inst_id:I
    .end local v3           #srvc_id_srvc_type:I
    .end local v4           #srvc_id_uuid_type:I
    .end local v5           #srvc_id_uuid_lsb:J
    .end local v7           #srvc_id_uuid_msb:J
    .end local v9           #find_first:Z
    .end local v10           #cond_srvc_uuid_type:I
    .end local v11           #cond_srvc_uuid_lsb:J
    .end local v13           #cond_srvc_uuid_msb:J
    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "bluetooth_gatt"

    return-object v0
.end method

.method public getNextChar(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 21
    .parameter "connId"
    .parameter "startCharId"
    .parameter "condCharUuid"

    .prologue
    .line 464
    if-nez p3, :cond_2

    const/4 v15, 0x1

    .line 466
    .local v15, find_first:Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v2

    .line 467
    .local v2, startCharSrvcIdInstId:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v3

    .line 468
    .local v3, startCharServiceType:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v4

    .line 469
    .local v4, startCharSrvcUuidType:I
    const-wide/16 v5, 0x0

    .line 470
    .local v5, startCharSrvcIdUuidLsb:J
    const-wide/16 v7, 0x0

    .line 471
    .local v7, startCharSrvcIdUuidMsb:J
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v9

    .line 472
    .local v9, startCharCharIdInstId:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v10

    .line 473
    .local v10, startCharCharUuidType:I
    const-wide/16 v11, 0x0

    .line 474
    .local v11, startCharCharIdUuidLsb:J
    const-wide/16 v13, 0x0

    .line 475
    .local v13, startCharCharIdUuidMsb:J
    const/16 v16, 0x0

    .line 476
    .local v16, condCharUuidType:I
    const-wide/16 v17, 0x0

    .line 477
    .local v17, condCharUuidLsb:J
    const-wide/16 v19, 0x0

    .line 480
    .local v19, condCharUuidMsb:J
    if-nez v15, :cond_0

    .line 481
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v16

    .line 483
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v5

    .line 484
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v7

    .line 486
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v11

    .line 487
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v13

    .line 489
    if-nez v15, :cond_1

    .line 490
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v17

    .line 491
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v19

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 493
    invoke-direct/range {v0 .. v20}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->getNextCharNative(IIIIJJIIJJZIJJ)V

    .line 502
    return-void

    .line 464
    .end local v2           #startCharSrvcIdInstId:I
    .end local v3           #startCharServiceType:I
    .end local v4           #startCharSrvcUuidType:I
    .end local v5           #startCharSrvcIdUuidLsb:J
    .end local v7           #startCharSrvcIdUuidMsb:J
    .end local v9           #startCharCharIdInstId:I
    .end local v10           #startCharCharUuidType:I
    .end local v11           #startCharCharIdUuidLsb:J
    .end local v13           #startCharCharIdUuidMsb:J
    .end local v15           #find_first:Z
    .end local v16           #condCharUuidType:I
    .end local v17           #condCharUuidLsb:J
    .end local v19           #condCharUuidMsb:J
    :cond_2
    const/4 v15, 0x0

    goto :goto_0
.end method

.method public getNextCharDescr(ILcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 28
    .parameter "connId"
    .parameter "descrId"
    .parameter "condDescrUuid"

    .prologue
    .line 574
    if-nez p3, :cond_2

    const/16 v21, 0x1

    .line 576
    .local v21, find_first:Z
    :goto_0
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "getFirstCharDescr: connId = "

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v27, " find_first = "

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v3

    .line 580
    .local v3, start_descr_srvc_id_inst_id:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v4

    .line 581
    .local v4, start_descr_service_type:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v5

    .line 582
    .local v5, start_descr_srvc_uuid_type:I
    const-wide/16 v6, 0x0

    .line 583
    .local v6, start_descr_srvc_id_uuid_lsb:J
    const-wide/16 v8, 0x0

    .line 584
    .local v8, start_descr_srvc_id_uuid_msb:J
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v10

    .line 585
    .local v10, start_descr_char_id_inst_id:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v11

    .line 586
    .local v11, start_descr_char_uuid_type:I
    const-wide/16 v12, 0x0

    .line 587
    .local v12, start_descr_char_id_uuid_lsb:J
    const-wide/16 v14, 0x0

    .line 588
    .local v14, start_descr_char_id_uuid_msb:J
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getDescrId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v16

    .line 589
    .local v16, start_descr_descr_uuid_type:I
    const-wide/16 v17, 0x0

    .line 590
    .local v17, start_descr_descr_id_uuid_lsb:J
    const-wide/16 v19, 0x0

    .line 591
    .local v19, start_descr_descr_id_uuid_msb:J
    const/16 v22, 0x0

    .line 592
    .local v22, cond_descr_uuid_type:I
    const-wide/16 v23, 0x0

    .line 593
    .local v23, cond_descr_uuid_lsb:J
    const-wide/16 v25, 0x0

    .line 595
    .local v25, cond_descr_uuid_msb:J
    if-nez v21, :cond_0

    .line 596
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v22

    .line 599
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v6

    .line 600
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v8

    .line 602
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v12

    .line 603
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v14

    .line 605
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getDescrId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v17

    .line 606
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getDescrId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v19

    .line 608
    if-nez v21, :cond_1

    .line 609
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v23

    .line 610
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v25

    :cond_1
    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 613
    invoke-direct/range {v1 .. v26}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->getNextCharDescrNative(IIIIJJIIJJIJJZIJJ)V

    .line 623
    return-void

    .line 574
    .end local v3           #start_descr_srvc_id_inst_id:I
    .end local v4           #start_descr_service_type:I
    .end local v5           #start_descr_srvc_uuid_type:I
    .end local v6           #start_descr_srvc_id_uuid_lsb:J
    .end local v8           #start_descr_srvc_id_uuid_msb:J
    .end local v10           #start_descr_char_id_inst_id:I
    .end local v11           #start_descr_char_uuid_type:I
    .end local v12           #start_descr_char_id_uuid_lsb:J
    .end local v14           #start_descr_char_id_uuid_msb:J
    .end local v16           #start_descr_descr_uuid_type:I
    .end local v17           #start_descr_descr_id_uuid_lsb:J
    .end local v19           #start_descr_descr_id_uuid_msb:J
    .end local v21           #find_first:Z
    .end local v22           #cond_descr_uuid_type:I
    .end local v23           #cond_descr_uuid_lsb:J
    .end local v25           #cond_descr_uuid_msb:J
    :cond_2
    const/16 v21, 0x0

    goto/16 :goto_0
.end method

.method public getNextIncludedService(ILcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 22
    .parameter "connId"
    .parameter "startSrvcId"
    .parameter "condSrvcUuid"

    .prologue
    .line 667
    if-nez p3, :cond_1

    const/16 v16, 0x1

    .line 668
    .local v16, find_first:Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v2

    .line 669
    .local v2, start_srvc_srvc_id_inst_id:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v3

    .line 670
    .local v3, start_srvc_srvc_id_srvc_type:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v4

    .line 671
    .local v4, start_srvc_srvc_id_uuid_type:I
    const-wide/16 v5, 0x0

    .line 672
    .local v5, start_srvc_srvc_id_uuid_lsb:J
    const-wide/16 v7, 0x0

    .line 673
    .local v7, start_srvc_srvc_id_uuid_msb:J
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->getInclSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v9

    .line 674
    .local v9, start_srvc_incl_srvc_id_inst_id:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->getInclSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v10

    .line 675
    .local v10, start_srvc_incl_srvc_id_srvc_type:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->getInclSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v11

    .line 676
    .local v11, start_srvc_incl_srvc_id_uuid_type:I
    const-wide/16 v12, 0x0

    .line 677
    .local v12, start_srvc_incl_srvc_id_uuid_lsb:J
    const-wide/16 v14, 0x0

    .line 678
    .local v14, start_srvc_incl_srvc_id_uuid_msb:J
    const/16 v17, 0x0

    .line 679
    .local v17, cond_srvc_uuid_type:I
    const-wide/16 v18, 0x0

    .line 680
    .local v18, cond_srvc_uuid_lsb:J
    const-wide/16 v20, 0x0

    .line 682
    .local v20, cond_srvc_uuid_msb:J
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v5

    .line 683
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v7

    .line 685
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->getInclSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v12

    .line 686
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->getInclSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v14

    .line 688
    if-nez v16, :cond_0

    .line 689
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v17

    .line 690
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v18

    .line 691
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v20

    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 694
    invoke-direct/range {v0 .. v21}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->getNextIncludedServiceNative(IIIIJJIIIJJZIJJ)V

    .line 702
    return-void

    .line 667
    .end local v2           #start_srvc_srvc_id_inst_id:I
    .end local v3           #start_srvc_srvc_id_srvc_type:I
    .end local v4           #start_srvc_srvc_id_uuid_type:I
    .end local v5           #start_srvc_srvc_id_uuid_lsb:J
    .end local v7           #start_srvc_srvc_id_uuid_msb:J
    .end local v9           #start_srvc_incl_srvc_id_inst_id:I
    .end local v10           #start_srvc_incl_srvc_id_srvc_type:I
    .end local v11           #start_srvc_incl_srvc_id_uuid_type:I
    .end local v12           #start_srvc_incl_srvc_id_uuid_lsb:J
    .end local v14           #start_srvc_incl_srvc_id_uuid_msb:J
    .end local v16           #find_first:Z
    .end local v17           #cond_srvc_uuid_type:I
    .end local v18           #cond_srvc_uuid_lsb:J
    .end local v20           #cond_srvc_uuid_msb:J
    :cond_1
    const/16 v16, 0x0

    goto :goto_0
.end method

.method public declared-synchronized init()V
    .locals 2

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothGattService"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->initNative()V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mIsFinish:Z

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mEnabled:Z

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mAttrConvMap:Ljava/util/HashMap;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerInitialCallbackList:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mserIftoUuidMap:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerProfileCallbackMap:Ljava/util/HashMap;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mSvcInstanceIdMap:Ljava/util/HashMap;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mDirtyList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native initNative()V
.end method

.method public onAppDeregisterCompleted(BB)V
    .locals 2
    .parameter "status"
    .parameter "serIf"

    .prologue
    .line 1906
    const-string v0, "BluetoothGattService"

    const-string v1, "onAppDeregisterCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    if-nez p1, :cond_0

    .line 1908
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mserIftoUuidMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1909
    :cond_0
    return-void
.end method

.method onAppDeregistered(B)V
    .locals 5
    .parameter "clientIf"

    .prologue
    .line 939
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAppDeregistered: clientIf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByClientIf(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v0

    .line 943
    .local v0, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v0, :cond_1

    .line 945
    :try_start_0
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 946
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/broadcom/bt/le/api/IBleClientCallback;->onAppDeregistered(B)V

    .line 947
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 960
    :goto_0
    return-void

    .line 949
    :cond_0
    const-string v2, "BluetoothGattService"

    const-string v3, "No client callback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 951
    :catch_0
    move-exception v1

    .line 952
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGattService"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 955
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAppDeregistered - error finding context for clientIf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAppRegisterCompleted(BBIJJ)V
    .locals 8
    .parameter "status"
    .parameter "serIf"
    .parameter "uuidType"
    .parameter "appUuidlsb"
    .parameter "appUuidmsb"

    .prologue
    .line 1884
    const/4 v0, 0x0

    .line 1887
    .local v0, uuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    if-nez p1, :cond_0

    .line 1888
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .end local v0           #uuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    move-wide v1, p4

    move-wide v3, p6

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(JJI)V

    .line 1889
    .restart local v0       #uuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mserIftoUuidMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1892
    :cond_0
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##### uuid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerProfileCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/broadcom/bt/le/api/IBleProfileEventCallback;

    .line 1894
    .local v6, cback:Lcom/broadcom/bt/le/api/IBleProfileEventCallback;
    if-eqz v6, :cond_1

    .line 1896
    :try_start_0
    invoke-interface {v6, p1, p2}, Lcom/broadcom/bt/le/api/IBleProfileEventCallback;->onAppRegisterCompleted(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1903
    :goto_0
    return-void

    .line 1897
    :catch_0
    move-exception v7

    .line 1898
    .local v7, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothGattService"

    const-string v2, "onAppRegisterCompleted()"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1901
    .end local v7           #t:Ljava/lang/Throwable;
    :cond_1
    const-string v1, "BluetoothGattService"

    const-string v2, "Could n\'t find the application callback..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onAppRegistered(BIJJB)V
    .locals 6
    .parameter "status"
    .parameter "uuidType"
    .parameter "appuuidlsb"
    .parameter "appuuidmsb"
    .parameter "clientIf"

    .prologue
    .line 905
    const/4 v2, 0x0

    .line 908
    .local v2, uuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    if-nez p1, :cond_0

    .line 909
    const/16 v3, 0x10

    if-ne p2, v3, :cond_1

    .line 910
    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .end local v2           #uuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v3, Ljava/util/UUID;

    invoke-direct {v3, p5, p6, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v2, v3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(Ljava/util/UUID;)V

    .line 915
    .restart local v2       #uuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_0
    :goto_0
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCltAppRegistered: status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " clientIf = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByAppId(Lcom/broadcom/bt/service/gatt/BluetoothGattID;)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v0

    .line 920
    .local v0, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v0, :cond_3

    .line 923
    :try_start_0
    iput-byte p7, v0, Lcom/broadcom/bt/le/api/GattClientContext;->mClientIf:B

    .line 924
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 925
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v3

    invoke-interface {v3, p1, p7}, Lcom/broadcom/bt/le/api/IBleClientCallback;->onAppRegistered(BB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    :goto_1
    return-void

    .line 912
    .end local v0           #c:Lcom/broadcom/bt/le/api/GattClientContext;
    :cond_1
    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .end local v2           #uuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    long-to-int v3, p3

    invoke-direct {v2, v3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(I)V

    .restart local v2       #uuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_0

    .line 927
    .restart local v0       #c:Lcom/broadcom/bt/le/api/GattClientContext;
    :cond_2
    :try_start_1
    const-string v3, "BluetoothGattService"

    const-string v4, "No client callback"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 929
    :catch_0
    move-exception v1

    .line 930
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "BluetoothGattService"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 933
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_3
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAppRegistered - error finding context for appid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onAttributeExecWrite(Ljava/lang/String;III)V
    .locals 7
    .parameter "address"
    .parameter "connId"
    .parameter "transId"
    .parameter "execWrite"

    .prologue
    .line 2255
    const-string v4, "BluetoothGattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onAttributeExecWrite: addr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", connId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", transId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", execWrite = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    iget-object v4, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2262
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/broadcom/bt/le/api/GattServerContext;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/GattServerContext;

    .line 2263
    .local v0, ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    if-eqz v0, :cond_0

    .line 2265
    :try_start_0
    iget-object v4, v0, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    invoke-interface {v4, p1, p2, p3, p4}, Lcom/broadcom/bt/le/api/IBleServiceCallback;->onAttributeExecWrite(Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2267
    :catch_0
    move-exception v3

    .line 2268
    .local v3, t:Ljava/lang/Throwable;
    const-string v4, "BluetoothGattService"

    const-string v5, "onAttributeExecWrite(): error"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2272
    .end local v0           #ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/broadcom/bt/le/api/GattServerContext;>;"
    .end local v3           #t:Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method public onAttributeMtuExchange(Ljava/lang/String;III)V
    .locals 6
    .parameter "address"
    .parameter "connId"
    .parameter "transId"
    .parameter "mtuSize"

    .prologue
    .line 2277
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAttributeMtuExchange: addr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", connId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", transId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mtuSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2283
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/broadcom/bt/le/api/GattServerContext;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/GattServerContext;

    .line 2284
    .local v0, ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    if-eqz v0, :cond_0

    goto :goto_0

    .line 2289
    .end local v0           #ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/broadcom/bt/le/api/GattServerContext;>;"
    :cond_1
    return-void
.end method

.method public onAttributeRequestRead(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 10
    .parameter "address"
    .parameter "connId"
    .parameter "transId"
    .parameter "readAttr"

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 2177
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAttributeRequestRead: addr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", connId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", transId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    if-eqz p4, :cond_0

    array-length v1, p4

    if-lez v1, :cond_0

    .line 2180
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v1, p4

    if-ge v8, v1, :cond_0

    .line 2181
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readAttr["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p4, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2187
    .end local v8           #i:I
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p4, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2188
    .local v4, attrHandle:I
    const/4 v1, 0x1

    aget-object v1, p4, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 2189
    .local v6, isLong:Z
    :goto_1
    const/4 v0, 0x2

    aget-object v0, p4, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2190
    .local v5, offset:I
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mAttrConvMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/broadcom/bt/le/api/GattServerContext;

    .line 2194
    .local v7, ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAttrConvMap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mAttrConvMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ctxt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    const-string v1, "BluetoothGattService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ctxt.mCallback = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v7, :cond_2

    const-string v0, "NULL"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    if-nez v7, :cond_3

    .line 2201
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GattServerContext not found for attrHandle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    .end local v4           #attrHandle:I
    .end local v5           #offset:I
    .end local v6           #isLong:Z
    .end local v7           #ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    :goto_3
    return-void

    .restart local v4       #attrHandle:I
    :cond_1
    move v6, v0

    .line 2188
    goto/16 :goto_1

    .line 2196
    .restart local v5       #offset:I
    .restart local v6       #isLong:Z
    .restart local v7       #ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    :cond_2
    iget-object v0, v7, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    goto :goto_2

    .line 2204
    :cond_3
    iget-object v0, v7, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/le/api/IBleServiceCallback;->onAttributeRequestRead(Ljava/lang/String;IIIIZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 2208
    .end local v4           #attrHandle:I
    .end local v5           #offset:I
    .end local v6           #isLong:Z
    .end local v7           #ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    :catch_0
    move-exception v9

    .line 2209
    .local v9, t:Ljava/lang/Throwable;
    const-string v0, "BluetoothGattService"

    const-string v1, "onAttributeRequestRead(): error"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public onAttributeRequestWrite(Ljava/lang/String;II[Ljava/lang/String;[B)V
    .locals 14
    .parameter "address"
    .parameter "connId"
    .parameter "transId"
    .parameter "writeAttr"
    .parameter "data"

    .prologue
    .line 2216
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAttributeRequestWrite: addr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", connId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", transId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    array-length v1, v0

    if-lez v1, :cond_0

    .line 2219
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move-object/from16 v0, p4

    array-length v1, v0

    if-ge v12, v1, :cond_0

    .line 2220
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeAttr["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p4, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2223
    .end local v12           #i:I
    :cond_0
    if-eqz p5, :cond_1

    move-object/from16 v0, p5

    array-length v1, v0

    if-lez v1, :cond_1

    .line 2224
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_1
    move-object/from16 v0, p5

    array-length v1, v0

    if-ge v12, v1, :cond_1

    .line 2225
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p5, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2232
    .end local v12           #i:I
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p4, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2233
    .local v5, attrHandle:I
    const/4 v1, 0x1

    aget-object v1, p4, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    const/4 v6, 0x1

    .line 2234
    .local v6, isPrep:Z
    :goto_2
    const/4 v1, 0x2

    aget-object v1, p4, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2235
    .local v7, len:I
    const/4 v1, 0x3

    aget-object v1, p4, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    const/4 v8, 0x1

    .line 2236
    .local v8, needRsp:Z
    :goto_3
    const/4 v1, 0x4

    aget-object v1, p4, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2237
    .local v9, offset:I
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mAttrConvMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/broadcom/bt/le/api/GattServerContext;

    .line 2239
    .local v11, ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    if-nez v11, :cond_4

    .line 2240
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GattServerContext not found for attrHandle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    .end local v5           #attrHandle:I
    .end local v6           #isPrep:Z
    .end local v7           #len:I
    .end local v8           #needRsp:Z
    .end local v9           #offset:I
    .end local v11           #ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    :goto_4
    return-void

    .line 2233
    .restart local v5       #attrHandle:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 2235
    .restart local v6       #isPrep:Z
    .restart local v7       #len:I
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 2243
    .restart local v8       #needRsp:Z
    .restart local v9       #offset:I
    .restart local v11       #ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    :cond_4
    iget-object v1, v11, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v10, p5

    invoke-interface/range {v1 .. v10}, Lcom/broadcom/bt/le/api/IBleServiceCallback;->onAttributeRequestWrite(Ljava/lang/String;IIIZIZI[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 2247
    .end local v5           #attrHandle:I
    .end local v6           #isPrep:Z
    .end local v7           #len:I
    .end local v8           #needRsp:Z
    .end local v9           #offset:I
    .end local v11           #ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    :catch_0
    move-exception v13

    .line 2248
    .local v13, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothGattService"

    const-string v2, "onAttributeRequestWrite(): error"

    invoke-static {v1, v2, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public onCharacteristicAdded(BBIJJII)V
    .locals 13
    .parameter "status"
    .parameter "serIf"
    .parameter "type"
    .parameter "charUuidLsb"
    .parameter "charUuidMsb"
    .parameter "svcHandle"
    .parameter "charHandle"

    .prologue
    .line 1995
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCharacteristicAdded status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", serIf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", charUuidLsb = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", charUuidmsb = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "svcHandle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", char desrc handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/broadcom/bt/le/api/GattServerContext;

    .line 2002
    .local v11, ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mAttrConvMap:Ljava/util/HashMap;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Just added CharHandle ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "service Handle"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    if-nez v11, :cond_0

    .line 2006
    :try_start_0
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GattServerContext not found for svcHandle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2016
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mDirtyList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/broadcom/bt/le/api/CharacteristicContext;

    .line 2018
    .local v10, charContext:Lcom/broadcom/bt/le/api/CharacteristicContext;
    iget v2, v10, Lcom/broadcom/bt/le/api/CharacteristicContext;->mDirtyDescNum:I

    if-lez v2, :cond_1

    .line 2019
    const-string v2, "BluetoothGattService"

    const-string v3, "Dirty bit is still set.."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    :goto_1
    return-void

    .line 2009
    .end local v10           #charContext:Lcom/broadcom/bt/le/api/CharacteristicContext;
    :cond_0
    :try_start_1
    iget-object v8, v11, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    move/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(JJI)V

    move/from16 v0, p9

    invoke-interface {v8, p1, v2, v0}, Lcom/broadcom/bt/le/api/IBleServiceCallback;->onCharacteristicAdded(BLcom/broadcom/bt/service/gatt/BluetoothGattID;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2012
    :catch_0
    move-exception v12

    .line 2013
    .local v12, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothGattService"

    const-string v3, "onCharacteristicAdded(): error"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2021
    .end local v12           #t:Ljava/lang/Throwable;
    .restart local v10       #charContext:Lcom/broadcom/bt/le/api/CharacteristicContext;
    :cond_1
    const-string v2, "BluetoothGattService"

    const-string v3, "Dirty bit not set.. Adding a new one"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    monitor-enter p0

    .line 2023
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mDirtyList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2024
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mDirtyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 2025
    monitor-exit p0

    goto :goto_1

    .line 2027
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2026
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mDirtyList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/broadcom/bt/le/api/CharacteristicContext;

    move-object v10, v0

    .line 2027
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2028
    iget v3, v10, Lcom/broadcom/bt/le/api/CharacteristicContext;->mSvcHandle:I

    iget-object v4, v10, Lcom/broadcom/bt/le/api/CharacteristicContext;->mCharId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    iget v5, v10, Lcom/broadcom/bt/le/api/CharacteristicContext;->mPermissions:I

    iget v6, v10, Lcom/broadcom/bt/le/api/CharacteristicContext;->mCharProperty:I

    iget-boolean v7, v10, Lcom/broadcom/bt/le/api/CharacteristicContext;->mDirtyMask:Z

    iget v8, v10, Lcom/broadcom/bt/le/api/CharacteristicContext;->mDirtyDescNum:I

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AddCharacteristic(ILcom/broadcom/bt/service/gatt/BluetoothGattID;IIZIZ)V

    goto :goto_1
.end method

.method public onCharacteristicDescrAdded(BBIJJII)V
    .locals 14
    .parameter "status"
    .parameter "serIf"
    .parameter "type"
    .parameter "charDescUuidlsb"
    .parameter "charDescUuidMsb"
    .parameter "svcHandle"
    .parameter "charDescrHandle"

    .prologue
    .line 2039
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCharacteristicDescrAdded status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", serIf = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", charDescUuidlsb = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", charDescUuidMsb = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "svcHandle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", char desrc handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mAttrConvMap:Ljava/util/HashMap;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2047
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Just added DescHandle ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "service Handle"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/broadcom/bt/le/api/GattServerContext;

    .line 2049
    .local v12, ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    if-nez v12, :cond_0

    .line 2050
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GattServerContext not found for svcHandle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    :goto_0
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mDirtyList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/broadcom/bt/le/api/CharacteristicContext;

    .line 2062
    .local v11, charContext:Lcom/broadcom/bt/le/api/CharacteristicContext;
    iget v3, v11, Lcom/broadcom/bt/le/api/CharacteristicContext;->mDirtyDescNum:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v11, Lcom/broadcom/bt/le/api/CharacteristicContext;->mDirtyDescNum:I

    .line 2063
    iget v3, v11, Lcom/broadcom/bt/le/api/CharacteristicContext;->mDirtyDescNum:I

    if-lez v3, :cond_1

    .line 2064
    const-string v3, "BluetoothGattService"

    const-string v4, "Dirty bit is still set.."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    :goto_1
    return-void

    .line 2054
    .end local v11           #charContext:Lcom/broadcom/bt/le/api/CharacteristicContext;
    :cond_0
    :try_start_0
    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    move/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(JJI)V

    .line 2055
    .local v2, gattID:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    iget-object v3, v12, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    move/from16 v0, p9

    invoke-interface {v3, p1, v2, v0}, Lcom/broadcom/bt/le/api/IBleServiceCallback;->onCharacteristicDescrAdded(BLcom/broadcom/bt/service/gatt/BluetoothGattID;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2056
    .end local v2           #gattID:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :catch_0
    move-exception v13

    .line 2057
    .local v13, t:Ljava/lang/Throwable;
    const-string v3, "BluetoothGattService"

    const-string v4, "onCharacteristicDescrAdded(): error"

    invoke-static {v3, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2066
    .end local v13           #t:Ljava/lang/Throwable;
    .restart local v11       #charContext:Lcom/broadcom/bt/le/api/CharacteristicContext;
    :cond_1
    const-string v3, "BluetoothGattService"

    const-string v4, "Dirty bit not set.. Try adding a new one"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    monitor-enter p0

    .line 2068
    :try_start_1
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mDirtyList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2069
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mDirtyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 2070
    monitor-exit p0

    goto :goto_1

    .line 2072
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2071
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mDirtyList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/broadcom/bt/le/api/CharacteristicContext;

    move-object v11, v0

    .line 2072
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2073
    iget v4, v11, Lcom/broadcom/bt/le/api/CharacteristicContext;->mSvcHandle:I

    iget-object v5, v11, Lcom/broadcom/bt/le/api/CharacteristicContext;->mCharId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    iget v6, v11, Lcom/broadcom/bt/le/api/CharacteristicContext;->mPermissions:I

    iget v7, v11, Lcom/broadcom/bt/le/api/CharacteristicContext;->mCharProperty:I

    iget-boolean v8, v11, Lcom/broadcom/bt/le/api/CharacteristicContext;->mDirtyMask:Z

    iget v9, v11, Lcom/broadcom/bt/le/api/CharacteristicContext;->mDirtyDescNum:I

    const/4 v10, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AddCharacteristic(ILcom/broadcom/bt/service/gatt/BluetoothGattID;IIZIZ)V

    goto :goto_1
.end method

.method public onClientConnected(Ljava/lang/String;ZI)V
    .locals 7
    .parameter "bdaddr"
    .parameter "fConnected"
    .parameter "connId"

    .prologue
    .line 1913
    const-string v4, "BluetoothGattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClientConnected addr is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " connId is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    iget-object v4, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerProfileCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1918
    .local v1, entrySet:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleProfileEventCallback;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/IBleProfileEventCallback;

    .line 1920
    .local v0, entry:Lcom/broadcom/bt/le/api/IBleProfileEventCallback;
    :try_start_0
    invoke-interface {v0, p3, p1, p2}, Lcom/broadcom/bt/le/api/IBleProfileEventCallback;->onClientConnected(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1921
    :catch_0
    move-exception v3

    .line 1922
    .local v3, t:Ljava/lang/Throwable;
    const-string v4, "BluetoothGattService"

    const-string v5, "onDisconnected()"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1925
    .end local v0           #entry:Lcom/broadcom/bt/le/api/IBleProfileEventCallback;
    .end local v1           #entrySet:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleProfileEventCallback;>;"
    .end local v3           #t:Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method public onCloseCompleted(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 1879
    const-string v0, "BluetoothGattService"

    const-string v1, "onCloseCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    return-void
.end method

.method onClosed(BI)V
    .locals 5
    .parameter "status"
    .parameter "connId"

    .prologue
    .line 993
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClosed: status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v0

    .line 1001
    .local v0, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v0, :cond_0

    .line 1003
    :try_start_0
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1004
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v2

    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getPeerAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Lcom/broadcom/bt/le/api/IBleClientCallback;->onDisconnected(ILjava/lang/String;)V

    .line 1013
    :cond_0
    :goto_0
    return-void

    .line 1006
    :cond_1
    const-string v2, "BluetoothGattService"

    const-string v3, "No client callback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1008
    :catch_0
    move-exception v1

    .line 1009
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGattService"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onConnected(BILjava/lang/String;)V
    .locals 8
    .parameter "clientIf"
    .parameter "connId"
    .parameter "address"

    .prologue
    .line 1072
    const-string v5, "BluetoothGattService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onConnected: clientIf = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " connId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", address = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-direct {p0, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findCachedConnection(ILjava/lang/String;)Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;

    move-result-object v1

    .line 1076
    .local v1, connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    if-nez v1, :cond_0

    .line 1077
    invoke-direct {p0, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findCachedConnection(Ljava/lang/String;)Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;

    move-result-object v1

    .line 1078
    if-nez v1, :cond_0

    .line 1082
    sget-object v5, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mBLEConnectionCache:Ljava/util/ArrayList;

    new-instance v6, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;

    invoke-direct {v6, p0, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;-><init>(Lcom/broadcom/bt/service/gatt/BluetoothGattService;ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    :cond_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByClientIf(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v4

    .line 1093
    .local v4, oneContext:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v4, :cond_3

    .line 1094
    invoke-virtual {v4, p2}, Lcom/broadcom/bt/le/api/GattClientContext;->setConnID(I)V

    .line 1096
    :try_start_0
    invoke-virtual {v4}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1097
    invoke-virtual {v4}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v5

    invoke-interface {v5, p3, p2}, Lcom/broadcom/bt/le/api/IBleClientCallback;->onConnected(Ljava/lang/String;I)V

    .line 1123
    :cond_1
    :goto_0
    return-void

    .line 1099
    :cond_2
    const-string v5, "BluetoothGattService"

    const-string v6, "No client callback"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1101
    :catch_0
    move-exception v2

    .line 1102
    .local v2, e:Landroid/os/RemoteException;
    const-string v5, "BluetoothGattService"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1106
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_3
    invoke-direct {p0, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findAllContextsByAddress(Ljava/lang/String;)[Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v0

    .line 1108
    .local v0, c:[Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v0, :cond_1

    .line 1109
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 1110
    aget-object v5, v0, v3

    invoke-virtual {v5, p2}, Lcom/broadcom/bt/le/api/GattClientContext;->setConnID(I)V

    .line 1112
    :try_start_1
    aget-object v5, v0, v3

    invoke-virtual {v5}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1113
    aget-object v5, v0, v3

    invoke-virtual {v5}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v5

    invoke-interface {v5, p3, p2}, Lcom/broadcom/bt/le/api/IBleClientCallback;->onConnected(Ljava/lang/String;I)V

    .line 1109
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1115
    :cond_4
    const-string v5, "BluetoothGattService"

    const-string v6, "No client callback"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1117
    :catch_1
    move-exception v2

    .line 1118
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v5, "BluetoothGattService"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method onDeregForNotifications(IIIIIJJIIJJ)V
    .locals 11
    .parameter "connId"
    .parameter "status"
    .parameter "srvcInstId"
    .parameter "srvcServiceType"
    .parameter "srvcUuidType"
    .parameter "srvcUuidLsb"
    .parameter "srvcUuidMsb"
    .parameter "charInstId"
    .parameter "charUuidType"
    .parameter "charUuidLsb"
    .parameter "charUuidMsb"

    .prologue
    .line 1646
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDeregForNotifications: connId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v8

    .line 1649
    .local v8, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v8, :cond_1

    .line 1650
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move v1, p3

    move/from16 v2, p5

    move-wide/from16 v3, p6

    move-wide/from16 v5, p8

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1652
    .local v0, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v2, p10

    move/from16 v3, p11

    move-wide/from16 v4, p12

    move-wide/from16 v6, p14

    invoke-direct/range {v1 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJ)V

    .line 1655
    .local v1, charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Lcom/broadcom/bt/le/api/GattClientContext;->getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    move-result-object v10

    .line 1656
    .local v10, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    if-eqz v10, :cond_0

    .line 1658
    :try_start_0
    iget-object v2, v10, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    invoke-interface {v2, p1, p2, v0, v1}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;->onUnregisterNotifications(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1669
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v10           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :goto_0
    return-void

    .line 1660
    .restart local v0       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v1       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v10       #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :catch_0
    move-exception v9

    .line 1661
    .local v9, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGattService"

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1664
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "BluetoothGattService"

    const-string v3, "data context not found!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1667
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v10           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :cond_1
    const-string v2, "BluetoothGattService"

    const-string v3, "context not found!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onDisabled()V
    .locals 2

    .prologue
    .line 897
    const-string v0, "BluetoothGattService"

    const-string v1, "onDisabled:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->onStateChangeEvent(Z)V

    .line 900
    return-void
.end method

.method onDisconnected(BILjava/lang/String;)V
    .locals 5
    .parameter "clientIf"
    .parameter "connId"
    .parameter "address"

    .prologue
    .line 1126
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisconnected: connId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", address = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByClientIf(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v0

    .line 1132
    .local v0, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v0, :cond_0

    .line 1134
    :try_start_0
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1135
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v2

    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getPeerAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Lcom/broadcom/bt/le/api/IBleClientCallback;->onDisconnected(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    :cond_0
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->removeCachedConnection(ILjava/lang/String;)Z

    .line 1146
    return-void

    .line 1137
    :cond_1
    :try_start_1
    const-string v2, "BluetoothGattService"

    const-string v3, "No client callback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1139
    :catch_0
    move-exception v1

    .line 1140
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGattService"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onEnabled(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 891
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnabled: status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->onStateChangeEvent(Z)V

    .line 894
    return-void
.end method

.method onGetFirstChar(IIIIIIJJIIJJ)V
    .locals 13
    .parameter "connId"
    .parameter "status"
    .parameter "charProp"
    .parameter "srvcInstId"
    .parameter "srvcType"
    .parameter "srvcUuidType"
    .parameter "srvcUuidLsb"
    .parameter "srvcUuidMsb"
    .parameter "charInstId"
    .parameter "charUuidType"
    .parameter "charUuidLsb"
    .parameter "charUuidMsb"

    .prologue
    .line 1405
    const-string v4, "BluetoothGattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGetFirstChar: connId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", charProp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v10

    .line 1411
    .local v10, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v10, :cond_1

    .line 1412
    const-string v4, "BluetoothGattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGetFirstChar: srvcInstId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " srvcUuidType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " srvcUuidLsb = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p7

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " srvcUuidMsb = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p9

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v3, p4

    move/from16 v4, p6

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    move/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1415
    .local v2, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v4, p11

    move/from16 v5, p12

    move-wide/from16 v6, p13

    move-wide/from16 v8, p15

    invoke-direct/range {v3 .. v9}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJ)V

    .line 1417
    .local v3, charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const/4 v4, 0x0

    invoke-virtual {v10, v2, v4}, Lcom/broadcom/bt/le/api/GattClientContext;->getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    move-result-object v12

    .line 1418
    .local v12, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    if-eqz v12, :cond_0

    .line 1420
    :try_start_0
    iget-object v4, v12, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    invoke-interface {v4, p1, p2, v2, v3}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;->onGetFirstCharacteristic(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1430
    .end local v2           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v3           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v12           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :goto_0
    return-void

    .line 1421
    .restart local v2       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v3       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v12       #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :catch_0
    move-exception v11

    .line 1422
    .local v11, e:Landroid/os/RemoteException;
    const-string v4, "BluetoothGattService"

    invoke-virtual {v11}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1425
    .end local v11           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v4, "BluetoothGattService"

    const-string v5, "data context not found!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1428
    .end local v2           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v3           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v12           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :cond_1
    const-string v4, "BluetoothGattService"

    const-string v5, "context not found!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onGetFirstCharDescr(IIIIIJJIIJJIJJ)V
    .locals 12
    .parameter "connId"
    .parameter "status"
    .parameter "srvcInstId"
    .parameter "srvcType"
    .parameter "srvcUuidType"
    .parameter "srvcUuidLsb"
    .parameter "srvcUuidMsb"
    .parameter "charInstId"
    .parameter "charUuidType"
    .parameter "charUuidLsb"
    .parameter "charUuidMsb"
    .parameter "descrUuidType"
    .parameter "descrUuidLsb"
    .parameter "descrUuidMsb"

    .prologue
    .line 1473
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGetFirstCharDescr: connId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v9

    .line 1479
    .local v9, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v9, :cond_1

    .line 1481
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move v1, p3

    move/from16 v2, p5

    move-wide/from16 v3, p6

    move-wide/from16 v5, p8

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1483
    .local v0, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v2, p10

    move/from16 v3, p11

    move-wide/from16 v4, p12

    move-wide/from16 v6, p14

    invoke-direct/range {v1 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJ)V

    .line 1486
    .local v1, charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-wide/from16 v3, p17

    move-wide/from16 v5, p19

    move/from16 v7, p16

    invoke-direct/range {v2 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(JJI)V

    .line 1488
    .local v2, descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const/4 v3, 0x0

    invoke-virtual {v9, v0, v3}, Lcom/broadcom/bt/le/api/GattClientContext;->getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    move-result-object v11

    .line 1489
    .local v11, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    if-eqz v11, :cond_0

    .line 1491
    :try_start_0
    iget-object v3, v11, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    move v4, p1

    move v5, p2

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-interface/range {v3 .. v8}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;->onGetFirstCharacteristicDescriptor(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1501
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v11           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :goto_0
    return-void

    .line 1492
    .restart local v0       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v1       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v2       #descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v11       #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :catch_0
    move-exception v10

    .line 1493
    .local v10, e:Landroid/os/RemoteException;
    const-string v3, "BluetoothGattService"

    invoke-virtual {v10}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1496
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v3, "BluetoothGattService"

    const-string v4, "data context not found!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1499
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v11           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :cond_1
    const-string v3, "BluetoothGattService"

    const-string v4, "context not found!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onGetFirstIncludedService(IIIIIJJIIIJJ)V
    .locals 12
    .parameter "connId"
    .parameter "status"
    .parameter "srvcInstId"
    .parameter "srvcType"
    .parameter "srvcUuidType"
    .parameter "srvcUuidLsb"
    .parameter "srvcUuidMsb"
    .parameter "inclSrvcInstId"
    .parameter "inclSrvcType"
    .parameter "inclSrvcUuidType"
    .parameter "inclSrvcUuidLsb"
    .parameter "inclSrvcUuidMsb"

    .prologue
    .line 1544
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGetFirstIncludedService: connId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move v1, p3

    move/from16 v2, p5

    move-wide/from16 v3, p6

    move-wide/from16 v5, p8

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1550
    .local v0, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v2, p10

    move/from16 v3, p11

    move-wide/from16 v4, p13

    move-wide/from16 v6, p15

    move/from16 v8, p12

    invoke-direct/range {v1 .. v8}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1555
    .local v1, includedServiceId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v9

    .line 1556
    .local v9, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v9, :cond_1

    .line 1557
    const/4 v2, 0x0

    invoke-virtual {v9, v0, v2}, Lcom/broadcom/bt/le/api/GattClientContext;->getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    move-result-object v11

    .line 1558
    .local v11, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    if-eqz v11, :cond_0

    .line 1560
    :try_start_0
    iget-object v2, v11, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    invoke-interface {v2, p1, p2, v0, v1}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;->onGetFirstIncludedService(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1570
    .end local v11           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :goto_0
    return-void

    .line 1561
    .restart local v11       #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :catch_0
    move-exception v10

    .line 1562
    .local v10, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGattService"

    invoke-virtual {v10}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1565
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "BluetoothGattService"

    const-string v3, "data context not found!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1568
    .end local v11           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :cond_1
    const-string v2, "BluetoothGattService"

    const-string v3, "context not found!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onGetNextChar(IIIIIIJJIIJJ)V
    .locals 12
    .parameter "connId"
    .parameter "status"
    .parameter "charProp"
    .parameter "srvcInstId"
    .parameter "srvcType"
    .parameter "srvcUuidType"
    .parameter "srvcUuidLsb"
    .parameter "srvcUuidMsb"
    .parameter "charInstId"
    .parameter "charUuidType"
    .parameter "charUuidLsb"
    .parameter "charUuidMsb"

    .prologue
    .line 1437
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGetNextChar: connId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", charProp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", charInstId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p11

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v9

    .line 1441
    .local v9, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v9, :cond_1

    .line 1442
    new-instance v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v2, p4

    move/from16 v3, p6

    move-wide/from16 v4, p7

    move-wide/from16 v6, p9

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1445
    .local v1, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v3, p11

    move/from16 v4, p12

    move-wide/from16 v5, p13

    move-wide/from16 v7, p15

    invoke-direct/range {v2 .. v8}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJ)V

    .line 1448
    .local v2, charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const/4 v3, 0x0

    invoke-virtual {v9, v1, v3}, Lcom/broadcom/bt/le/api/GattClientContext;->getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    move-result-object v11

    .line 1449
    .local v11, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    if-eqz v11, :cond_0

    .line 1451
    :try_start_0
    iget-object v3, v11, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    invoke-interface {v3, p1, p2, v1, v2}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;->onGetNextCharacteristic(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1461
    .end local v1           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v11           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :goto_0
    return-void

    .line 1452
    .restart local v1       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v2       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v11       #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :catch_0
    move-exception v10

    .line 1453
    .local v10, e:Landroid/os/RemoteException;
    const-string v3, "BluetoothGattService"

    invoke-virtual {v10}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1456
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v3, "BluetoothGattService"

    const-string v4, "data context not found!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1459
    .end local v1           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v11           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :cond_1
    const-string v3, "BluetoothGattService"

    const-string v4, "context not found!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onGetNextCharDescr(IIIIIJJIIJJIJJ)V
    .locals 12
    .parameter "connId"
    .parameter "status"
    .parameter "srvcInstId"
    .parameter "srvcType"
    .parameter "srvcUuidType"
    .parameter "srvcUuidLsb"
    .parameter "srvcUuidMsb"
    .parameter "charInstId"
    .parameter "charUuidType"
    .parameter "charUuidLsb"
    .parameter "charUuidMsb"
    .parameter "descrUuidType"
    .parameter "descrUuidLsb"
    .parameter "descrUuidMsb"

    .prologue
    .line 1511
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGetNextChar: connId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v9

    .line 1514
    .local v9, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v9, :cond_1

    .line 1516
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move v1, p3

    move/from16 v2, p5

    move-wide/from16 v3, p6

    move-wide/from16 v5, p8

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1518
    .local v0, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v2, p10

    move/from16 v3, p11

    move-wide/from16 v4, p12

    move-wide/from16 v6, p14

    invoke-direct/range {v1 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJ)V

    .line 1521
    .local v1, charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-wide/from16 v3, p17

    move-wide/from16 v5, p19

    move/from16 v7, p16

    invoke-direct/range {v2 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(JJI)V

    .line 1523
    .local v2, descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const/4 v3, 0x0

    invoke-virtual {v9, v0, v3}, Lcom/broadcom/bt/le/api/GattClientContext;->getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    move-result-object v11

    .line 1524
    .local v11, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    if-eqz v11, :cond_0

    .line 1526
    :try_start_0
    iget-object v3, v11, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    move v4, p1

    move v5, p2

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-interface/range {v3 .. v8}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;->onGetNextCharacteristicDescriptor(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1537
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v11           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :goto_0
    return-void

    .line 1528
    .restart local v0       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v1       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v2       #descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v11       #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :catch_0
    move-exception v10

    .line 1529
    .local v10, e:Landroid/os/RemoteException;
    const-string v3, "BluetoothGattService"

    invoke-virtual {v10}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1532
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v3, "BluetoothGattService"

    const-string v4, "data context not found!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1535
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v11           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :cond_1
    const-string v3, "BluetoothGattService"

    const-string v4, "context not found!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onGetNextIncludedService(IIIIIJJIIIJJ)V
    .locals 12
    .parameter "connId"
    .parameter "status"
    .parameter "srvcInstId"
    .parameter "srvcType"
    .parameter "srvcUuidType"
    .parameter "srvcUuidLsb"
    .parameter "srvcUuidMsb"
    .parameter "inclSrvcInstId"
    .parameter "inclSrvcType"
    .parameter "inclSrvcUuidType"
    .parameter "inclSrvcUuidLsb"
    .parameter "inclSrvcUuidMsb"

    .prologue
    .line 1577
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGetNextIncludedService: connId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move v1, p3

    move/from16 v2, p5

    move-wide/from16 v3, p6

    move-wide/from16 v5, p8

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1583
    .local v0, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v2, p10

    move/from16 v3, p11

    move-wide/from16 v4, p13

    move-wide/from16 v6, p15

    move/from16 v8, p12

    invoke-direct/range {v1 .. v8}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1588
    .local v1, includedServiceId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v9

    .line 1590
    .local v9, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v9, :cond_1

    .line 1592
    const/4 v2, 0x0

    invoke-virtual {v9, v0, v2}, Lcom/broadcom/bt/le/api/GattClientContext;->getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    move-result-object v11

    .line 1593
    .local v11, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    if-eqz v11, :cond_0

    .line 1595
    :try_start_0
    iget-object v2, v11, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    invoke-interface {v2, p1, p2, v0, v1}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;->onGetNextIncludedService(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1605
    .end local v11           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :goto_0
    return-void

    .line 1596
    .restart local v11       #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :catch_0
    move-exception v10

    .line 1597
    .local v10, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGattService"

    invoke-virtual {v10}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1600
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "BluetoothGattService"

    const-string v3, "data context not found!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1603
    .end local v11           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :cond_1
    const-string v2, "BluetoothGattService"

    const-string v3, "context not found!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onHandleValueIndicationCompleted(BI)V
    .locals 5
    .parameter "status"
    .parameter "attrHandle"

    .prologue
    .line 2129
    const-string v2, "BluetoothGattService"

    const-string v3, "onHandleValueIndicationCompleted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mAttrConvMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/GattServerContext;

    .line 2133
    .local v0, ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    if-nez v0, :cond_0

    .line 2134
    :try_start_0
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GattServerContext not found for attrHandle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    :goto_0
    return-void

    .line 2137
    :cond_0
    iget-object v2, v0, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/le/api/IBleServiceCallback;->onHandleValueIndicationCompleted(BI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2140
    :catch_0
    move-exception v1

    .line 2141
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothGattService"

    const-string v3, "onHandleValueIndicationCompleted"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onHandleValueNotificationCompleted(BI)V
    .locals 5
    .parameter "status"
    .parameter "attrHandle"

    .prologue
    .line 2146
    const-string v2, "BluetoothGattService"

    const-string v3, "onHandleValueNotificationCompleted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mAttrConvMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/GattServerContext;

    .line 2150
    .local v0, ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    :try_start_0
    iget-object v2, v0, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/le/api/IBleServiceCallback;->onHandleValueNotificationCompleted(BI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2155
    :goto_0
    return-void

    .line 2152
    :catch_0
    move-exception v1

    .line 2153
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothGattService"

    const-string v3, "onHandleValueNotificationCompleted"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onIncludedServiceAdded(BBII)V
    .locals 5
    .parameter "status"
    .parameter "serIf"
    .parameter "svcHandle"
    .parameter "inclSvcHandle"

    .prologue
    .line 1973
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onIncludedServiceAdded status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", serIf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", svcHandle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", inclSvcHandle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/GattServerContext;

    .line 1981
    .local v0, ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    if-nez v0, :cond_0

    .line 1982
    :try_start_0
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GattServerContext not found for svcHandle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    :goto_0
    return-void

    .line 1985
    :cond_0
    iget-object v2, v0, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    invoke-interface {v2, p1, p4}, Lcom/broadcom/bt/le/api/IBleServiceCallback;->onIncludedServiceAdded(BI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1987
    :catch_0
    move-exception v1

    .line 1988
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothGattService"

    const-string v3, "onIncludedServiceAdded(): error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method onNotify(ILjava/lang/String;IIIJJIIJJZ[B)V
    .locals 13
    .parameter "connId"
    .parameter "address"
    .parameter "srvcInstId"
    .parameter "srvcServiceType"
    .parameter "srvcUuidType"
    .parameter "srvcUuidLsb"
    .parameter "srvcUuidMsb"
    .parameter "charInstId"
    .parameter "charUuidType"
    .parameter "charUuidLsb"
    .parameter "charUuidMsb"
    .parameter "isNotify"
    .parameter "data"

    .prologue
    .line 1335
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNotif: address = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], len = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p17

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", is notify = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findcontextByAddress(Ljava/lang/String;)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v10

    .line 1341
    .local v10, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v10, :cond_1

    .line 1342
    new-instance v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v2, p3

    move/from16 v3, p5

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    move/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1344
    .local v1, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v3, p10

    move/from16 v4, p11

    move-wide/from16 v5, p12

    move-wide/from16 v7, p14

    invoke-direct/range {v2 .. v8}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJ)V

    .line 1347
    .local v2, charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const/4 v3, 0x0

    invoke-virtual {v10, v1, v3}, Lcom/broadcom/bt/le/api/GattClientContext;->getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    move-result-object v12

    .line 1348
    .local v12, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    if-eqz v12, :cond_0

    .line 1350
    :try_start_0
    iget-object v3, v12, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    move v4, p1

    move-object v5, p2

    move-object v6, v1

    move-object v7, v2

    move/from16 v8, p16

    move-object/from16 v9, p17

    invoke-interface/range {v3 .. v9}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;->onNotify(ILjava/lang/String;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1360
    .end local v1           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v12           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :goto_0
    return-void

    .line 1351
    .restart local v1       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v2       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v12       #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :catch_0
    move-exception v11

    .line 1352
    .local v11, e:Landroid/os/RemoteException;
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error calling onNotify "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1355
    .end local v11           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v3, "BluetoothGattService"

    const-string v4, "no data context found !!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1358
    .end local v1           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v12           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :cond_1
    const-string v3, "BluetoothGattService"

    const-string v4, "no context found !!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOpenCancelCompleted(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 1875
    const-string v0, "BluetoothGattService"

    const-string v1, "onOpenCancelCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    return-void
.end method

.method public onOpenCompleted(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 1871
    const-string v0, "BluetoothGattService"

    const-string v1, "onOpenCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    return-void
.end method

.method onOpened(BBLjava/lang/String;)V
    .locals 6
    .parameter "clientIf"
    .parameter "status"
    .parameter "address"

    .prologue
    .line 963
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOpened: status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByClientIf(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v0

    .line 969
    .local v0, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v0, :cond_0

    .line 973
    if-nez p2, :cond_0

    .line 974
    invoke-direct {p0, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findCachedConnection(Ljava/lang/String;)Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;

    move-result-object v1

    .line 975
    .local v1, connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    if-eqz v1, :cond_0

    .line 977
    iget v3, v1, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;->mconnId:I

    invoke-virtual {v0, v3}, Lcom/broadcom/bt/le/api/GattClientContext;->setConnID(I)V

    .line 979
    :try_start_0
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 980
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v3

    iget v4, v1, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;->mconnId:I

    invoke-interface {v3, p3, v4}, Lcom/broadcom/bt/le/api/IBleClientCallback;->onConnected(Ljava/lang/String;I)V

    .line 990
    .end local v1           #connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    :cond_0
    :goto_0
    return-void

    .line 982
    .restart local v1       #connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    :cond_1
    const-string v3, "BluetoothGattService"

    const-string v4, "No client callback"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 984
    :catch_0
    move-exception v2

    .line 985
    .local v2, e:Landroid/os/RemoteException;
    const-string v3, "BluetoothGattService"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onReadCharDescrValue(IIIIIJJIIIJJIJJ[B)V
    .locals 13
    .parameter "connId"
    .parameter "status"
    .parameter "srvcInstId"
    .parameter "srvcType"
    .parameter "srvcUuidType"
    .parameter "srvcUuidLsb"
    .parameter "srvcUuidMsb"
    .parameter "charInstId"
    .parameter "charType"
    .parameter "charUuidType"
    .parameter "charUuidLsb"
    .parameter "charUuidMsb"
    .parameter "descrUuidType"
    .parameter "descrUuidLsb"
    .parameter "descrUuidMsb"
    .parameter "data"

    .prologue
    .line 1185
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReadCharDescrValue: connId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v10

    .line 1189
    .local v10, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v10, :cond_1

    .line 1190
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v1, p3

    move/from16 v2, p5

    move-wide/from16 v3, p6

    move-wide/from16 v5, p8

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1191
    .local v0, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v2, p10

    move/from16 v3, p12

    move-wide/from16 v4, p13

    move-wide/from16 v6, p15

    invoke-direct/range {v1 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJ)V

    .line 1192
    .local v1, charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-wide/from16 v3, p18

    move-wide/from16 v5, p20

    move/from16 v7, p17

    invoke-direct/range {v2 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(JJI)V

    .line 1194
    .local v2, descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const/4 v3, 0x0

    invoke-virtual {v10, v0, v3}, Lcom/broadcom/bt/le/api/GattClientContext;->getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    move-result-object v12

    .line 1195
    .local v12, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    if-eqz v12, :cond_0

    .line 1197
    :try_start_0
    iget-object v3, v12, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    move v4, p1

    move v5, p2

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object/from16 v9, p22

    invoke-interface/range {v3 .. v9}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;->onReadCharDescriptorValue(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1207
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v12           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :goto_0
    return-void

    .line 1198
    .restart local v0       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v1       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v2       #descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v12       #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :catch_0
    move-exception v11

    .line 1199
    .local v11, e:Landroid/os/RemoteException;
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error calling onReadCharDescriptorValue "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1202
    .end local v11           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v3, "BluetoothGattService"

    const-string v4, "No data context found"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1205
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v12           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :cond_1
    const-string v3, "BluetoothGattService"

    const-string v4, "No context found"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onReadCharValue(IIIIIJJIIIJJ[B)V
    .locals 11
    .parameter "connId"
    .parameter "status"
    .parameter "srvcInstId"
    .parameter "srvcType"
    .parameter "srvcUuidType"
    .parameter "srvcUuidLsb"
    .parameter "srvcUuidMsb"
    .parameter "charInstId"
    .parameter "charType"
    .parameter "charUuidType"
    .parameter "charUuidLsb"
    .parameter "charUuidMsb"
    .parameter "data"

    .prologue
    .line 1154
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReadCharValue: connId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v8

    .line 1158
    .local v8, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v8, :cond_1

    .line 1159
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move v1, p3

    move/from16 v2, p5

    move-wide/from16 v3, p6

    move-wide/from16 v5, p8

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1161
    .local v0, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v2, p10

    move-wide/from16 v3, p13

    move-wide/from16 v5, p15

    invoke-direct/range {v1 .. v6}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IJJ)V

    .line 1163
    .local v1, charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Lcom/broadcom/bt/le/api/GattClientContext;->getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    move-result-object v10

    .line 1164
    .local v10, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    if-eqz v10, :cond_0

    .line 1166
    :try_start_0
    iget-object v2, v10, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    move v3, p1

    move v4, p2

    move-object v5, v0

    move-object v6, v1

    move-object/from16 v7, p17

    invoke-interface/range {v2 .. v7}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;->onReadCharacteristicValue(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1176
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v10           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :goto_0
    return-void

    .line 1167
    .restart local v0       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v1       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v10       #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :catch_0
    move-exception v9

    .line 1168
    .local v9, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling onReadCharacteristicValue "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1171
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "BluetoothGattService"

    const-string v3, "No data context found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1174
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v10           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :cond_1
    const-string v2, "BluetoothGattService"

    const-string v3, "No context found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onRegForNotifications(IIIIIJJIIJJ)V
    .locals 11
    .parameter "connId"
    .parameter "status"
    .parameter "srvcInstId"
    .parameter "srvcServiceType"
    .parameter "srvcUuidType"
    .parameter "srvcUuidLsb"
    .parameter "srvcUuidMsb"
    .parameter "charInstId"
    .parameter "charUuidType"
    .parameter "charUuidLsb"
    .parameter "charUuidMsb"

    .prologue
    .line 1612
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRegForNotifications: connId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v8

    .line 1617
    .local v8, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v8, :cond_1

    .line 1618
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move v1, p3

    move/from16 v2, p5

    move-wide/from16 v3, p6

    move-wide/from16 v5, p8

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1620
    .local v0, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v2, p10

    move/from16 v3, p11

    move-wide/from16 v4, p12

    move-wide/from16 v6, p14

    invoke-direct/range {v1 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJ)V

    .line 1625
    .local v1, charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Lcom/broadcom/bt/le/api/GattClientContext;->getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    move-result-object v10

    .line 1627
    .local v10, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    if-eqz v10, :cond_0

    .line 1629
    :try_start_0
    iget-object v2, v10, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    invoke-interface {v2, p1, p2, v0, v1}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;->onRegForNotifications(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1639
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v10           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :goto_0
    return-void

    .line 1630
    .restart local v0       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v1       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v10       #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :catch_0
    move-exception v9

    .line 1631
    .local v9, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGattService"

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1634
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "BluetoothGattService"

    const-string v3, "data context not found!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1637
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v10           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :cond_1
    const-string v2, "BluetoothGattService"

    const-string v3, "context not found!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResponseSendCompleted(BI)V
    .locals 5
    .parameter "status"
    .parameter "attrHandle"

    .prologue
    .line 2158
    const-string v2, "BluetoothGattService"

    const-string v3, "onResponseSendCompleted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mAttrConvMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/GattServerContext;

    .line 2163
    .local v0, ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    if-nez v0, :cond_0

    .line 2164
    :try_start_0
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GattServerContext not found for attrHandle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    :goto_0
    return-void

    .line 2167
    :cond_0
    iget-object v2, v0, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/le/api/IBleServiceCallback;->onResponseSendCompleted(BI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2169
    :catch_0
    move-exception v1

    .line 2170
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothGattService"

    const-string v3, "onHandleValueNotificationCompleted"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method onSearchCompleted(II)V
    .locals 5
    .parameter "connId"
    .parameter "status"

    .prologue
    .line 1243
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSearchCompleted: connId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v0

    .line 1247
    .local v0, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v0, :cond_1

    .line 1249
    :try_start_0
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSearchCompleted: connId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " client callback = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1254
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/le/api/IBleClientCallback;->onSearchCompleted(II)V

    .line 1264
    :goto_0
    return-void

    .line 1256
    :cond_0
    const-string v2, "BluetoothGattService"

    const-string v3, "No client callback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1258
    :catch_0
    move-exception v1

    .line 1259
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling onSearchCompleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1262
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v2, "BluetoothGattService"

    const-string v3, "No context found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onSearchResult(IIIIJJ)V
    .locals 12
    .parameter "connId"
    .parameter "srvcInstId"
    .parameter "srvcServiceType"
    .parameter "srvcUuidType"
    .parameter "srvcUuidLsb"
    .parameter "srvcUuidMsb"

    .prologue
    .line 1270
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSearchResult: connId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uuidlsb = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uuidmsb = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p7

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v10

    .line 1274
    .local v10, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v10, :cond_1

    .line 1275
    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move v3, p2

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1279
    .local v2, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :try_start_0
    invoke-virtual {v10}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1280
    invoke-virtual {v10}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Lcom/broadcom/bt/le/api/IBleClientCallback;->onSearchResult(ILcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 1290
    .end local v2           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_0
    return-void

    .line 1282
    .restart local v2       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_0
    const-string v3, "BluetoothGattService"

    const-string v4, "No client callback"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1284
    :catch_0
    move-exception v11

    .line 1285
    .local v11, e:Landroid/os/RemoteException;
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error calling onSearchResult "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1288
    .end local v2           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v11           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v3, "BluetoothGattService"

    const-string v4, "No context found"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceCreated(BBIIIJJI)V
    .locals 16
    .parameter "status"
    .parameter "serIf"
    .parameter "svcInstance"
    .parameter "svcType"
    .parameter "uuidType"
    .parameter "svcUuidlsb"
    .parameter "svcUuidmsb"
    .parameter "svcHandle"

    .prologue
    .line 1934
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceCreated(): status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", serIf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uuidType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", svcInstance="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", svcUuidlsb=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", svcUuidmsb=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", svcHandle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerInitialCallbackList:Ljava/util/ArrayList;

    monitor-enter v14

    .line 1941
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerInitialCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_0

    .line 1942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerInitialCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/broadcom/bt/le/api/GattServerContext;

    .line 1943
    .local v11, ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mserIftoUuidMap:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1944
    .local v10, appUuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    if-eqz v10, :cond_2

    iget-object v2, v11, Lcom/broadcom/bt/le/api/GattServerContext;->mAppUuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    if-eqz v2, :cond_2

    iget-object v2, v11, Lcom/broadcom/bt/le/api/GattServerContext;->mAppUuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v2, v10}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1948
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceCreated(): Checking if svc created matches ctxt: ctxt.mSvcInstance="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/broadcom/bt/le/api/GattServerContext;->getServiceInstId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ctxt.svcUuid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Lcom/broadcom/bt/le/api/GattServerContext;->mSvcUuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    iget-object v15, v11, Lcom/broadcom/bt/le/api/GattServerContext;->mSvcUuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v3, p3

    move/from16 v4, p5

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    move/from16 v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    invoke-virtual {v15, v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1953
    const-string v2, "BluetoothGattService"

    const-string v3, "ctx matches!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1956
    :try_start_1
    iget-object v2, v11, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    move/from16 v0, p1

    move/from16 v1, p10

    invoke-interface {v2, v0, v1}, Lcom/broadcom/bt/le/api/IBleServiceCallback;->onServiceCreated(BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1960
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerInitialCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1967
    .end local v10           #appUuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v11           #ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    :cond_0
    monitor-exit v14

    .line 1968
    return-void

    .line 1957
    .restart local v10       #appUuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v11       #ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    :catch_0
    move-exception v13

    .line 1958
    .local v13, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothGattService"

    const-string v3, "onServiceCreated()"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1967
    .end local v10           #appUuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v11           #ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    .end local v13           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1963
    .restart local v10       #appUuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v11       #ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    :cond_1
    :try_start_3
    const-string v2, "BluetoothGattService"

    const-string v3, "ctx doesn\'t match"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1941
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0
.end method

.method public onServiceDeleted(BBI)V
    .locals 5
    .parameter "status"
    .parameter "serIf"
    .parameter "svcHandle"

    .prologue
    .line 2081
    const-string v2, "BluetoothGattService"

    const-string v3, "onServiceDeleted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/GattServerContext;

    .line 2084
    .local v0, ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    if-nez v0, :cond_0

    .line 2085
    :try_start_0
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GattServerContext not found for svcHandle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2093
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2094
    return-void

    .line 2088
    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/le/api/IBleServiceCallback;->onServiceDeleted(B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2090
    :catch_0
    move-exception v1

    .line 2091
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothGattService"

    const-string v3, "onServiceDeleted"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceStarted(BBI)V
    .locals 5
    .parameter "status"
    .parameter "serIf"
    .parameter "svcHandle"

    .prologue
    .line 2097
    const-string v2, "BluetoothGattService"

    const-string v3, "onServiceStarted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/GattServerContext;

    .line 2101
    .local v0, ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    if-nez v0, :cond_0

    .line 2102
    :try_start_0
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GattServerContext not found for svcHandle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    :goto_0
    return-void

    .line 2105
    :cond_0
    iget-object v2, v0, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/le/api/IBleServiceCallback;->onServiceStarted(B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2107
    :catch_0
    move-exception v1

    .line 2108
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothGattService"

    const-string v3, "onServiceStarted"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceStopped(BBI)V
    .locals 5
    .parameter "status"
    .parameter "serIf"
    .parameter "svcHandle"

    .prologue
    .line 2113
    const-string v2, "BluetoothGattService"

    const-string v3, "onServiceStopped"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/GattServerContext;

    .line 2117
    .local v0, ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    if-nez v0, :cond_0

    .line 2118
    :try_start_0
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GattServerContext not found for svcHandle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    :goto_0
    return-void

    .line 2121
    :cond_0
    iget-object v2, v0, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/le/api/IBleServiceCallback;->onServiceStopped(B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2123
    :catch_0
    move-exception v1

    .line 2124
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothGattService"

    const-string v3, "onServiceStopped"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method onWriteChar(IIIIIJJIIJJ)V
    .locals 11
    .parameter "connId"
    .parameter "status"
    .parameter "srvcInstId"
    .parameter "srvcServiceType"
    .parameter "srvcUuidType"
    .parameter "srvcUuidLsb"
    .parameter "srvcUuidMsb"
    .parameter "charInstId"
    .parameter "charUuidType"
    .parameter "charUuidLsb"
    .parameter "charUuidMsb"

    .prologue
    .line 1216
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWriteChar: connId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v8

    .line 1219
    .local v8, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v8, :cond_1

    .line 1221
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move v1, p3

    move/from16 v2, p5

    move-wide/from16 v3, p6

    move-wide/from16 v5, p8

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1223
    .local v0, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v2, p10

    move/from16 v3, p11

    move-wide/from16 v4, p12

    move-wide/from16 v6, p14

    invoke-direct/range {v1 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJ)V

    .line 1226
    .local v1, charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Lcom/broadcom/bt/le/api/GattClientContext;->getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    move-result-object v10

    .line 1227
    .local v10, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    if-eqz v10, :cond_0

    .line 1229
    :try_start_0
    iget-object v2, v10, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    invoke-interface {v2, p1, p2, v0, v1}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;->onWriteCharValue(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1239
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v10           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :goto_0
    return-void

    .line 1230
    .restart local v0       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v1       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v10       #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :catch_0
    move-exception v9

    .line 1231
    .local v9, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling onWriteChar "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1234
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "BluetoothGattService"

    const-string v3, "No data context found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1237
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v10           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :cond_1
    const-string v2, "BluetoothGattService"

    const-string v3, "No context found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onWriteDescr(IIIIIJJIIJJIJJ)V
    .locals 12
    .parameter "connId"
    .parameter "status"
    .parameter "srvcInstId"
    .parameter "srvcServiceType"
    .parameter "srvcUuidType"
    .parameter "srvcUuidLsb"
    .parameter "srvcUuidMsb"
    .parameter "charInstId"
    .parameter "charUuidType"
    .parameter "charUuidLsb"
    .parameter "charUuidMsb"
    .parameter "descrUuidType"
    .parameter "descrUuidLsb"
    .parameter "descrUuidMsb"

    .prologue
    .line 1301
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onWriteDescr: connId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v9

    .line 1304
    .local v9, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v9, :cond_1

    .line 1306
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move v1, p3

    move/from16 v2, p5

    move-wide/from16 v3, p6

    move-wide/from16 v5, p8

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1308
    .local v0, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v2, p10

    move/from16 v3, p11

    move-wide/from16 v4, p12

    move-wide/from16 v6, p14

    invoke-direct/range {v1 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJ)V

    .line 1310
    .local v1, charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-wide/from16 v3, p17

    move-wide/from16 v5, p19

    move/from16 v7, p16

    invoke-direct/range {v2 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(JJI)V

    .line 1312
    .local v2, descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const/4 v3, 0x0

    invoke-virtual {v9, v0, v3}, Lcom/broadcom/bt/le/api/GattClientContext;->getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    move-result-object v11

    .line 1313
    .local v11, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    if-eqz v11, :cond_0

    .line 1315
    :try_start_0
    iget-object v3, v11, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    move v4, p1

    move v5, p2

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-interface/range {v3 .. v8}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;->onWriteCharDescrValue(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1325
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v11           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :goto_0
    return-void

    .line 1316
    .restart local v0       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v1       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v2       #descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v11       #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :catch_0
    move-exception v10

    .line 1317
    .local v10, e:Landroid/os/RemoteException;
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error calling onWriteCharDescrValue "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1320
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v3, "BluetoothGattService"

    const-string v4, "no data context found"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1323
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v11           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :cond_1
    const-string v3, "BluetoothGattService"

    const-string v4, "no context found"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public open(BLjava/lang/String;Z)V
    .locals 4
    .parameter "clientif"
    .parameter "address"
    .parameter "isDirect"

    .prologue
    .line 220
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open clientif = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isDirect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByClientIf(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v0

    .line 224
    .local v0, clientContext:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0, p2}, Lcom/broadcom/bt/le/api/GattClientContext;->setPeerAddress(Ljava/lang/String;)V

    .line 226
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->openNative(BLjava/lang/String;Z)V

    .line 232
    :goto_0
    return-void

    .line 229
    :cond_0
    const-string v1, "BluetoothGattService"

    const-string v2, "Context not found for the client - is the app registered?"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public prepareWrite(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;II[B)V
    .locals 18
    .parameter "connId"
    .parameter "charId"
    .parameter "offset"
    .parameter "len"
    .parameter "value"

    .prologue
    .line 829
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v13

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v15, p3

    move/from16 v16, p4

    move-object/from16 v17, p5

    invoke-direct/range {v0 .. v17}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->prepareWriteNative(IIIIJJIIJJII[B)V

    .line 839
    return-void
.end method

.method public readChar(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;B)V
    .locals 16
    .parameter "connId"
    .parameter "charId"
    .parameter "authReq"

    .prologue
    .line 712
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v13

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v15, p3

    invoke-direct/range {v0 .. v15}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->readCharNative(IIIIJJIIJJB)V

    .line 720
    return-void
.end method

.method public readCharDescr(ILcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;B)V
    .locals 21
    .parameter "connId"
    .parameter "charDescr"
    .parameter "authReq"

    .prologue
    .line 734
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getDescrId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getDescrId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getDescrId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v20, p3

    invoke-direct/range {v0 .. v20}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->readCharDescrNative(IIIIJJIIJJIJJB)V

    .line 746
    return-void
.end method

.method public registerApp(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleClientCallback;)V
    .locals 7
    .parameter "appID"
    .parameter "callback"

    .prologue
    .line 171
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerApp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByAppId(Lcom/broadcom/bt/service/gatt/BluetoothGattID;)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v6

    .line 175
    .local v6, clientContext:Lcom/broadcom/bt/le/api/GattClientContext;
    if-nez v6, :cond_0

    .line 176
    new-instance v6, Lcom/broadcom/bt/le/api/GattClientContext;

    .end local v6           #clientContext:Lcom/broadcom/bt/le/api/GattClientContext;
    invoke-direct {v6, p2}, Lcom/broadcom/bt/le/api/GattClientContext;-><init>(Lcom/broadcom/bt/le/api/IBleClientCallback;)V

    .line 177
    .restart local v6       #clientContext:Lcom/broadcom/bt/le/api/GattClientContext;
    iput-object p1, v6, Lcom/broadcom/bt/le/api/GattClientContext;->mClientAppId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 179
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :goto_0
    invoke-virtual {p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v1

    invoke-virtual {p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->registerAppNative(IJJ)V

    .line 187
    return-void

    .line 181
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 183
    :cond_0
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application already registered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerForNotifications(BLjava/lang/String;Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V
    .locals 16
    .parameter "clientIf"
    .parameter "address"
    .parameter "charId"

    .prologue
    .line 856
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v8

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v11

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v12

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v15}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->registerForNotificationsNative(BLjava/lang/String;IIIJJIIJJ)V

    .line 866
    return-void
.end method

.method public registerServerProfileCallback(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleProfileEventCallback;)V
    .locals 6
    .parameter "appUuid"
    .parameter "callback"

    .prologue
    .line 368
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerProfileCallbackMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerProfileCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerServerProfileCallback lsb is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msb is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v1

    invoke-virtual {p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AppRegister(IJJ)V

    .line 378
    return-void

    .line 370
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public registerServerServiceCallback(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleServiceCallback;)V
    .locals 5
    .parameter "serviceUuid"
    .parameter "appUuid"
    .parameter "callback"

    .prologue
    .line 352
    const-string v2, "BluetoothGattService"

    const-string v3, "registerServerServiceCallback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerInitialCallbackList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 354
    if-eqz p3, :cond_0

    .line 355
    :try_start_0
    new-instance v0, Lcom/broadcom/bt/le/api/GattServerContext;

    invoke-direct {v0, p1, p2, p3}, Lcom/broadcom/bt/le/api/GattServerContext;-><init>(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleServiceCallback;)V

    .line 356
    .local v0, context:Lcom/broadcom/bt/le/api/GattServerContext;
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerInitialCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p3, v2, p1}, Lcom/broadcom/bt/le/api/IBleServiceCallback;->onServiceRegistered(BLcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 363
    .end local v0           #context:Lcom/broadcom/bt/le/api/GattServerContext;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 364
    return-void

    .line 359
    .restart local v0       #context:Lcom/broadcom/bt/le/api/GattServerContext;
    :catch_0
    move-exception v1

    .line 360
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothGattService"

    const-string v4, "onHandleValueIndicationCompleted"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 363
    .end local v0           #context:Lcom/broadcom/bt/le/api/GattServerContext;
    .end local v1           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public registerServiceDataCallback(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Ljava/lang/String;Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;)V
    .locals 4
    .parameter "connId"
    .parameter "svcUuid"
    .parameter "bdaddr"
    .parameter "callback"

    .prologue
    .line 340
    const-string v2, "BluetoothGattService"

    const-string v3, "registerServiceDataCallback"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 344
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v0

    .line 345
    .local v0, c:Lcom/broadcom/bt/le/api/GattClientContext;
    const/4 v2, 0x1

    invoke-virtual {v0, p2, v2}, Lcom/broadcom/bt/le/api/GattClientContext;->getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    move-result-object v1

    .line 346
    .local v1, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    iput-object p4, v1, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    .line 347
    monitor-exit v3

    .line 348
    return-void

    .line 347
    .end local v0           #c:Lcom/broadcom/bt/le/api/GattClientContext;
    .end local v1           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public searchService(ILcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 9
    .parameter "connId"
    .parameter "serviceUuid"

    .prologue
    .line 400
    if-nez p2, :cond_0

    const/4 v8, 0x1

    .line 403
    .local v8, searchAll:Z
    :goto_0
    if-eqz v8, :cond_1

    .line 404
    const/4 v2, 0x1

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->searchServiceNative(IZIJJ)V

    .line 415
    :goto_1
    return-void

    .line 400
    .end local v8           #searchAll:Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 406
    .restart local v8       #searchAll:Z
    :cond_1
    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 407
    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->searchServiceNative(IZIJJ)V

    goto :goto_1

    .line 411
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid16()I

    move-result v0

    int-to-long v4, v0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->searchServiceNative(IZIJJ)V

    goto :goto_1
.end method

.method public sendIndConfirm(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V
    .locals 15
    .parameter "connId"
    .parameter "charId"

    .prologue
    .line 807
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v13

    move-object v0, p0

    move/from16 v1, p1

    invoke-direct/range {v0 .. v14}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->sendIndConfirmNative(IIIIJJIIJJ)V

    .line 817
    return-void
.end method

.method public setEncryption(Ljava/lang/String;B)V
    .locals 3
    .parameter "address"
    .parameter "action"

    .prologue
    .line 205
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEncryption address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->setEncryptionNative(Ljava/lang/String;B)V

    .line 207
    return-void
.end method

.method public setScanParameters(II)V
    .locals 3
    .parameter "scanInterval"
    .parameter "scanWindow"

    .prologue
    .line 212
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScanParameters interval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " window = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->setScanParametersNative(II)V

    .line 214
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 117
    const-string v0, "BluetoothGattService"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->enable()V

    .line 119
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 122
    const-string v0, "BluetoothGattService"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->disable()V

    .line 124
    return-void
.end method

.method public unregisterApp(B)V
    .locals 3
    .parameter "clientIf"

    .prologue
    .line 193
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterApp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByClientIf(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->unregisterAppNative(B)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No context found for clientif "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterServerProfileCallback(I)V
    .locals 3
    .parameter "serIf"

    .prologue
    .line 381
    const-string v0, "BluetoothGattService"

    const-string v1, "unregisterServerProfileCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AppDeregister(I)V

    .line 384
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerProfileCallbackMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerProfileCallbackMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    monitor-exit v1

    .line 387
    return-void

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterServerServiceCallback(I)V
    .locals 3
    .parameter "svcHandle"

    .prologue
    .line 390
    const-string v0, "BluetoothGattService"

    const-string v1, "unregisterServerServiceCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    monitor-exit v1

    .line 394
    return-void

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeCharDescrValue(ILcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;IB[B)V
    .locals 23
    .parameter "connId"
    .parameter "charDescr"
    .parameter "writeType"
    .parameter "authReq"
    .parameter "charDescrVal"

    .prologue
    .line 785
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getDescrId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getDescrId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getDescrId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v20, p3

    move/from16 v21, p4

    move-object/from16 v22, p5

    invoke-direct/range {v0 .. v22}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->writeCharDescrValueNative(IIIIJJIIJJIJJIB[B)V

    .line 798
    return-void
.end method

.method public writeCharValue(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;IB[B)V
    .locals 18
    .parameter "connId"
    .parameter "charId"
    .parameter "writeType"
    .parameter "authReq"
    .parameter "value"

    .prologue
    .line 759
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v13

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v15, p3

    move/from16 v16, p4

    move-object/from16 v17, p5

    invoke-direct/range {v0 .. v17}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->writeCharValueNative(IIIIJJIIJJIB[B)V

    .line 769
    return-void
.end method
