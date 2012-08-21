.class public Lcom/broadcom/bt/le/api/BleHelper;
.super Ljava/lang/Object;
.source "BleHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateDirtyMask(Lcom/broadcom/bt/service/gatt/BluetoothGattID;I)I
    .locals 2
    .parameter "uuid"
    .parameter "dirtyMask"

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid16()I

    move-result v0

    const/16 v1, 0x2905

    if-ne v0, v1, :cond_0

    .line 31
    and-int/lit8 p1, p1, -0x41

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid16()I

    move-result v0

    const/16 v1, 0x2900

    if-ne v0, v1, :cond_1

    .line 33
    and-int/lit8 p1, p1, -0x5

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid16()I

    move-result v0

    const/16 v1, 0x2904

    if-ne v0, v1, :cond_2

    .line 35
    and-int/lit8 p1, p1, -0x9

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid16()I

    move-result v0

    const/16 v1, 0x2902

    if-ne v0, v1, :cond_3

    .line 37
    and-int/lit8 p1, p1, -0x11

    .line 38
    :cond_3
    invoke-virtual {p0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid16()I

    move-result v0

    const/16 v1, 0x2903

    if-ne v0, v1, :cond_4

    .line 39
    and-int/lit8 p1, p1, -0x21

    .line 40
    :cond_4
    invoke-virtual {p0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid16()I

    move-result v0

    const/16 v1, 0x2901

    if-ne v0, v1, :cond_5

    .line 41
    and-int/lit8 p1, p1, -0x3

    .line 42
    :cond_5
    return p1
.end method
