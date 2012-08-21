.class public Lcom/broadcom/bt/le/api/GattServerContext;
.super Ljava/lang/Object;
.source "GattServerContext.java"


# instance fields
.field public mAppUuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

.field public mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

.field private mSvcHandle:I

.field public mSvcUuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleServiceCallback;)V
    .locals 0
    .parameter "serviceUuid"
    .parameter "appUuid"
    .parameter "callback"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/broadcom/bt/le/api/GattServerContext;->mSvcUuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 35
    iput-object p2, p0, Lcom/broadcom/bt/le/api/GattServerContext;->mAppUuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 36
    iput-object p3, p0, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    .line 37
    return-void
.end method


# virtual methods
.method public getServiceHandle()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/broadcom/bt/le/api/GattServerContext;->mSvcHandle:I

    return v0
.end method

.method public getServiceInstId()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/broadcom/bt/le/api/GattServerContext;->mSvcUuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v0

    return v0
.end method

.method public setServiceHandle(I)V
    .locals 0
    .parameter "svcHandle"

    .prologue
    .line 40
    iput p1, p0, Lcom/broadcom/bt/le/api/GattServerContext;->mSvcHandle:I

    .line 41
    return-void
.end method

.method public setServiceInstid(I)V
    .locals 1
    .parameter "instId"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/broadcom/bt/le/api/GattServerContext;->mSvcUuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->setInstId(I)V

    .line 49
    return-void
.end method
