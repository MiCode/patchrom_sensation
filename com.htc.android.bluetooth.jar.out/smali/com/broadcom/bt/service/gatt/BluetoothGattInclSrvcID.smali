.class public final Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;
.super Ljava/lang/Object;
.source "BluetoothGattInclSrvcID.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mInclSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

.field private final mSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 0
    .parameter "srvcId"
    .parameter "inclSrvcId"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->mSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 38
    iput-object p2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->mInclSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public getInclSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->mInclSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    return-object v0
.end method

.method public getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->mSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/16 v3, 0x10

    .line 64
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->mSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v1

    .line 65
    .local v1, serviceUuidType:I
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->mInclSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v0

    .line 67
    .local v0, inclServiceUuidType:I
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->mSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->mSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->mSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    if-ne v1, v3, :cond_0

    .line 71
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->mSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->mInclSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->mInclSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->mInclSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    if-ne v0, v3, :cond_1

    .line 79
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->mInclSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    :goto_1
    return-void

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->mSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid16()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->mInclSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid16()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
