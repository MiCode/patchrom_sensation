.class final Lcom/broadcom/bt/service/gatt/BluetoothGattID$1;
.super Ljava/lang/Object;
.source "BluetoothGattID.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/gatt/BluetoothGattID;
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
        "Lcom/broadcom/bt/service/gatt/BluetoothGattID;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 273
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .locals 6
    .parameter "source"

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 276
    .local v0, instId:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 277
    .local v3, type:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 279
    .local v2, serviceType:I
    const/16 v5, 0x10

    if-ne v3, v5, :cond_0

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, sUuid:Ljava/lang/String;
    new-instance v5, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-direct {v5, v0, v1, v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(ILjava/lang/String;I)V

    .line 284
    .end local v1           #sUuid:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 283
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 284
    .local v4, uuid:I
    new-instance v5, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-direct {v5, v0, v4, v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(III)V

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID$1;->createFromParcel(Landroid/os/Parcel;)Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .locals 1
    .parameter "size"

    .prologue
    .line 289
    new-array v0, p1, [Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID$1;->newArray(I)[Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    return-object v0
.end method
