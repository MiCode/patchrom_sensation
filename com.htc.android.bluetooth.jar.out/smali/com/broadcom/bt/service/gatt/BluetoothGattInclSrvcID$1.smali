.class final Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID$1;
.super Ljava/lang/Object;
.source "BluetoothGattInclSrvcID.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;
    .locals 10
    .parameter "source"

    .prologue
    const/16 v9, 0x10

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 88
    .local v2, instId:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 89
    .local v8, uuidtype:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 93
    .local v6, serviceType:I
    if-ne v8, v9, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, sServiceUuid:Ljava/lang/String;
    new-instance v5, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-direct {v5, v2, v4, v6}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(ILjava/lang/String;I)V

    .line 101
    .end local v4           #sServiceUuid:Ljava/lang/String;
    .local v5, serviceId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 105
    if-ne v8, v9, :cond_1

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, sInclServiceUuid:Ljava/lang/String;
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-direct {v0, v2, v3, v6}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(ILjava/lang/String;I)V

    .line 113
    .end local v3           #sInclServiceUuid:Ljava/lang/String;
    .local v0, inclServiceId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_1
    new-instance v9, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;

    invoke-direct {v9, v5, v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;-><init>(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    return-object v9

    .line 97
    .end local v0           #inclServiceId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #serviceId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 98
    .local v7, serviceUuid:I
    new-instance v5, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-direct {v5, v2, v7, v6}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(III)V

    .restart local v5       #serviceId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_0

    .line 109
    .end local v7           #serviceUuid:I
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 110
    .local v1, inclServiceUuid:I
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-direct {v0, v2, v1, v6}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(III)V

    .restart local v0       #inclServiceId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID$1;->createFromParcel(Landroid/os/Parcel;)Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;
    .locals 1
    .parameter "size"

    .prologue
    .line 117
    new-array v0, p1, [Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID$1;->newArray(I)[Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;

    move-result-object v0

    return-object v0
.end method
