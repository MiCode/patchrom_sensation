.class Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
.super Ljava/lang/Object;
.source "BluetoothGattService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/gatt/BluetoothGattService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BLEConnectedDevice"
.end annotation


# instance fields
.field public mconnId:I

.field public mremoteAddress:Ljava/lang/String;

.field final synthetic this$0:Lcom/broadcom/bt/service/gatt/BluetoothGattService;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/gatt/BluetoothGattService;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "connId"
    .parameter "remoteAddress"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;->mconnId:I

    .line 77
    iput-object p3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;->mremoteAddress:Ljava/lang/String;

    .line 78
    return-void
.end method
