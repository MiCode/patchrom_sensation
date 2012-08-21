.class public final Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;
.super Ljava/lang/Object;
.source "BluetoothGattCharDescrID.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCharId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

.field private final mDescrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

.field private final mSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 0
    .parameter "srvcId"
    .parameter "charId"
    .parameter "descrId"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->mSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 40
    iput-object p2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->mCharId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 41
    iput-object p3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->mDescrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 42
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->mCharId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    return-object v0
.end method

.method public getDescrId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->mDescrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    return-object v0
.end method

.method public getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->mSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/16 v4, 0x10

    .line 74
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->mSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v2

    .line 75
    .local v2, serviceUuidType:I
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->mCharId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v0

    .line 76
    .local v0, charUuidType:I
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->mDescrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v1

    .line 78
    .local v1, descrUuidType:I
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->mSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->mSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->mSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    if-ne v2, v4, :cond_0

    .line 82
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->mSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    :goto_0
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->mCharId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->mCharId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    if-ne v0, v4, :cond_1

    .line 89
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->mCharId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    :goto_1
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->mDescrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    if-ne v0, v4, :cond_2

    .line 95
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->mCharId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    :goto_2
    return-void

    .line 84
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->mSrvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid16()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->mCharId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid16()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 97
    :cond_2
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->mCharId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid16()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method
