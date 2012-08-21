.class final Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres$1;
.super Ljava/lang/Object;
.source "BluetoothGattCharPres.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;
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
        "Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;
    .locals 6
    .parameter "source"

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 105
    .local v1, unit:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 106
    .local v2, descr:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 107
    .local v3, format:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 108
    .local v4, exp:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 110
    .local v5, nameSpc:I
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;-><init>(IIIII)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres$1;->createFromParcel(Landroid/os/Parcel;)Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;
    .locals 1
    .parameter "size"

    .prologue
    .line 114
    new-array v0, p1, [Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres$1;->newArray(I)[Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;

    move-result-object v0

    return-object v0
.end method
