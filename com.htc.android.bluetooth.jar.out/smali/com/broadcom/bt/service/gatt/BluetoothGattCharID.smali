.class public final Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
.super Ljava/lang/Object;
.source "BluetoothGattCharID.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCharId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

.field private final mSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 0
    .parameter "srvcId"
    .parameter "charId"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->mSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 39
    iput-object p2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->mCharId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;)Z
    .locals 2
    .parameter "target"

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {p0}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {p0}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->mCharId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    return-object v0
.end method

.method public getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->mSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/16 v3, 0x10

    .line 74
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->mSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v1

    .line 75
    .local v1, serviceUuidType:I
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->mCharId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v0

    .line 77
    .local v0, charUuidType:I
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->mSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->mSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->mSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    if-ne v1, v3, :cond_0

    .line 81
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->mSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->mCharId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->mCharId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    if-ne v0, v3, :cond_1

    .line 88
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->mCharId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    :goto_1
    return-void

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->mSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid16()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->mCharId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid16()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
