.class final Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID$1;
.super Ljava/lang/Object;
.source "BluetoothGattCharDescrID.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;
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
        "Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;
    .locals 13
    .parameter "source"

    .prologue
    const/16 v12, 0x10

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 105
    .local v4, instId:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 106
    .local v11, uuidtype:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 112
    .local v9, serviceType:I
    if-ne v11, v12, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 114
    .local v7, sServiceUuid:Ljava/lang/String;
    new-instance v8, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-direct {v8, v4, v7, v9}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(ILjava/lang/String;I)V

    .line 120
    .end local v7           #sServiceUuid:Ljava/lang/String;
    .local v8, serviceId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 123
    if-ne v11, v12, :cond_1

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, sCharUuid:Ljava/lang/String;
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-direct {v0, v4, v5}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(ILjava/lang/String;)V

    .line 131
    .end local v5           #sCharUuid:Ljava/lang/String;
    .local v0, charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 133
    if-ne v11, v12, :cond_2

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, sDescrUuid:Ljava/lang/String;
    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-direct {v2, v6}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(Ljava/lang/String;)V

    .line 141
    .end local v6           #sDescrUuid:Ljava/lang/String;
    .local v2, descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_2
    new-instance v12, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;

    invoke-direct {v12, v8, v0, v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;-><init>(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    return-object v12

    .line 116
    .end local v0           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v8           #serviceId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 117
    .local v10, serviceUuid:I
    new-instance v8, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-direct {v8, v4, v10, v9}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(III)V

    .restart local v8       #serviceId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_0

    .line 127
    .end local v10           #serviceUuid:I
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 128
    .local v1, charUuid:I
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-direct {v0, v4, v1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(II)V

    .restart local v0       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_1

    .line 137
    .end local v1           #charUuid:I
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 138
    .local v3, descrUuid:I
    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-direct {v2, v3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(I)V

    .restart local v2       #descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID$1;->createFromParcel(Landroid/os/Parcel;)Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;
    .locals 1
    .parameter "size"

    .prologue
    .line 145
    new-array v0, p1, [Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID$1;->newArray(I)[Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;

    move-result-object v0

    return-object v0
.end method
