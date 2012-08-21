.class public final Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;
.super Ljava/lang/Object;
.source "BluetoothGattCharPres.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;",
            ">;"
        }
    .end annotation
.end field

.field public static final GATT_FORMAT_2BITS:I = 0x2

.field public static final GATT_FORMAT_BOOL:I = 0x1

.field public static final GATT_FORMAT_DUINT16:I = 0x18

.field public static final GATT_FORMAT_FLOAT:I = 0x17

.field public static final GATT_FORMAT_FLOAT32:I = 0x14

.field public static final GATT_FORMAT_FLOAT64:I = 0x15

.field public static final GATT_FORMAT_MAX:I = 0x1c

.field public static final GATT_FORMAT_NIBBLE:I = 0x3

.field public static final GATT_FORMAT_RES:I = 0x0

.field public static final GATT_FORMAT_SFLOAT:I = 0x16

.field public static final GATT_FORMAT_SINT12:I = 0xd

.field public static final GATT_FORMAT_SINT128:I = 0x13

.field public static final GATT_FORMAT_SINT16:I = 0xe

.field public static final GATT_FORMAT_SINT24:I = 0xf

.field public static final GATT_FORMAT_SINT32:I = 0x10

.field public static final GATT_FORMAT_SINT48:I = 0x11

.field public static final GATT_FORMAT_SINT64:I = 0x12

.field public static final GATT_FORMAT_SINT8:I = 0xc

.field public static final GATT_FORMAT_STRUCT:I = 0x1b

.field public static final GATT_FORMAT_UINT12:I = 0x5

.field public static final GATT_FORMAT_UINT128:I = 0xb

.field public static final GATT_FORMAT_UINT16:I = 0x6

.field public static final GATT_FORMAT_UINT24:I = 0x7

.field public static final GATT_FORMAT_UINT32:I = 0x8

.field public static final GATT_FORMAT_UINT48:I = 0x9

.field public static final GATT_FORMAT_UINT64:I = 0xa

.field public static final GATT_FORMAT_UINT8:I = 0x4

.field public static final GATT_FORMAT_UTF16S:I = 0x1a

.field public static final GATT_FORMAT_UTF8S:I = 0x19


# instance fields
.field public descr:I

.field public exp:I

.field public format:I

.field public nameSpc:I

.field public unit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->unit:I

    .line 72
    iput v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->descr:I

    .line 73
    iput v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->format:I

    .line 74
    iput v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->exp:I

    .line 75
    iput v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->nameSpc:I

    .line 76
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1
    .parameter "unit"
    .parameter "dscp"
    .parameter "format"
    .parameter "exp"
    .parameter "nameSpc"

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->unit:I

    .line 83
    iget v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->descr:I

    iput v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->descr:I

    .line 84
    iput p3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->format:I

    .line 85
    iput p4, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->exp:I

    .line 86
    iput p5, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->nameSpc:I

    .line 87
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 94
    iget v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->unit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->descr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->exp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->nameSpc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    return-void
.end method
