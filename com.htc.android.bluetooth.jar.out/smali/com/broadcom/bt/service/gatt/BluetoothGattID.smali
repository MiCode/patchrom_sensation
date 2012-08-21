.class public Lcom/broadcom/bt/service/gatt/BluetoothGattID;
.super Ljava/lang/Object;
.source "BluetoothGattID.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/gatt/BluetoothGattID;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BluetoothGattID"


# instance fields
.field private mInstId:I

.field private mServiceType:I

.field private mType:I

.field private mUuid128:Ljava/util/UUID;

.field private mUuid16:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 272
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "uuid"

    .prologue
    const/4 v1, -0x1

    .line 143
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mInstId:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid128:Ljava/util/UUID;

    .line 34
    iput v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid16:I

    .line 35
    iput v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mType:I

    .line 36
    iput v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mServiceType:I

    .line 144
    iput p1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid16:I

    .line 145
    const/4 v0, 0x2

    iput v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mType:I

    .line 146
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter "instId"
    .parameter "uuid"

    .prologue
    const/4 v1, -0x1

    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mInstId:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid128:Ljava/util/UUID;

    .line 34
    iput v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid16:I

    .line 35
    iput v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mType:I

    .line 36
    iput v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mServiceType:I

    .line 109
    iput p1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mInstId:I

    .line 110
    iput p2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid16:I

    .line 111
    const/4 v0, 0x2

    iput v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mType:I

    .line 112
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .parameter "instId"
    .parameter "iUUID"
    .parameter "serviceType"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(II)V

    .line 116
    invoke-direct {p0, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->initServiceType(I)V

    .line 117
    return-void
.end method

.method public constructor <init>(IIJJ)V
    .locals 6
    .parameter "instId"
    .parameter "uuidType"
    .parameter "uuidLsb"
    .parameter "uuidMsb"

    .prologue
    .line 81
    move-object v0, p0

    move-wide v1, p3

    move-wide v3, p5

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(JJI)V

    .line 82
    iput p1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mInstId:I

    .line 83
    return-void
.end method

.method public constructor <init>(IIJJI)V
    .locals 6
    .parameter "instId"
    .parameter "uuidType"
    .parameter "uuidLsb"
    .parameter "uuidMsb"
    .parameter "serviceType"

    .prologue
    .line 91
    move-object v0, p0

    move-wide v1, p3

    move-wide v3, p5

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(JJI)V

    .line 92
    iput p1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mInstId:I

    .line 93
    invoke-direct {p0, p7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->initServiceType(I)V

    .line 94
    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 2
    .parameter "instId"
    .parameter "uuidLsb"
    .parameter "uuidMsb"

    .prologue
    const/4 v1, -0x1

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mInstId:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid128:Ljava/util/UUID;

    .line 34
    iput v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid16:I

    .line 35
    iput v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mType:I

    .line 36
    iput v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mServiceType:I

    .line 65
    iput p1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mInstId:I

    .line 66
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, p4, p5, p2, p3}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid128:Ljava/util/UUID;

    .line 67
    const/16 v0, 0x10

    iput v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mType:I

    .line 68
    return-void
.end method

.method public constructor <init>(IJJI)V
    .locals 0
    .parameter "instId"
    .parameter "uuidLsb"
    .parameter "uuidMsb"
    .parameter "serviceType"

    .prologue
    .line 86
    invoke-direct/range {p0 .. p5}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IJJ)V

    .line 87
    invoke-direct {p0, p6}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->initServiceType(I)V

    .line 88
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .parameter "instId"
    .parameter "sUUID"

    .prologue
    const/4 v1, -0x1

    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mInstId:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid128:Ljava/util/UUID;

    .line 34
    iput v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid16:I

    .line 35
    iput v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mType:I

    .line 36
    iput v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mServiceType:I

    .line 97
    iput p1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mInstId:I

    .line 98
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid128:Ljava/util/UUID;

    .line 99
    const/16 v0, 0x10

    iput v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mType:I

    .line 100
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .parameter "instId"
    .parameter "sUUID"
    .parameter "serviceType"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(ILjava/lang/String;)V

    .line 104
    invoke-direct {p0, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->initServiceType(I)V

    .line 105
    return-void
.end method

.method public constructor <init>(ILjava/util/UUID;)V
    .locals 2
    .parameter "instId"
    .parameter "uuid"

    .prologue
    const/4 v1, -0x1

    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mInstId:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid128:Ljava/util/UUID;

    .line 34
    iput v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid16:I

    .line 35
    iput v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mType:I

    .line 36
    iput v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mServiceType:I

    .line 51
    iput p1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mInstId:I

    .line 52
    iput-object p2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid128:Ljava/util/UUID;

    .line 53
    const/16 v0, 0x10

    iput v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mType:I

    .line 54
    return-void
.end method

.method public constructor <init>(ILjava/util/UUID;I)V
    .locals 0
    .parameter "instId"
    .parameter "uuid"
    .parameter "serviceType"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(ILjava/util/UUID;)V

    .line 58
    invoke-direct {p0, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->initServiceType(I)V

    .line 59
    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 3
    .parameter "uuidLsb"
    .parameter "uuidMsb"
    .parameter "uuidType"

    .prologue
    const/16 v2, 0x10

    const/4 v1, -0x1

    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mInstId:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid128:Ljava/util/UUID;

    .line 34
    iput v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid16:I

    .line 35
    iput v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mType:I

    .line 36
    iput v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mServiceType:I

    .line 71
    if-ne p5, v2, :cond_0

    .line 72
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, p3, p4, p1, p2}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid128:Ljava/util/UUID;

    .line 73
    iput v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mType:I

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    long-to-int v0, p1

    iput v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid16:I

    .line 76
    const/4 v0, 0x2

    iput v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mType:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "sUUID"

    .prologue
    const/4 v1, -0x1

    .line 132
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mInstId:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid128:Ljava/util/UUID;

    .line 34
    iput v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid16:I

    .line 35
    iput v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mType:I

    .line 36
    iput v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mServiceType:I

    .line 133
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid128:Ljava/util/UUID;

    .line 134
    const/16 v0, 0x10

    iput v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mType:I

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "sUUID"
    .parameter "serviceType"

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->initServiceType(I)V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 2
    .parameter "uuid"

    .prologue
    const/4 v1, -0x1

    .line 122
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mInstId:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid128:Ljava/util/UUID;

    .line 34
    iput v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid16:I

    .line 35
    iput v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mType:I

    .line 36
    iput v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mServiceType:I

    .line 123
    iput-object p1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid128:Ljava/util/UUID;

    .line 124
    const/16 v0, 0x10

    iput v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mType:I

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;I)V
    .locals 0
    .parameter "uuid"
    .parameter "serviceType"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(Ljava/util/UUID;)V

    .line 129
    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->initServiceType(I)V

    .line 130
    return-void
.end method

.method private initServiceType(I)V
    .locals 1
    .parameter "serviceType"

    .prologue
    .line 43
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 45
    :cond_0
    iput p1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mServiceType:I

    .line 46
    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "target"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 225
    if-nez p1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v1

    .line 229
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    .line 230
    goto :goto_0

    .line 232
    :cond_2
    instance-of v3, p1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 236
    check-cast v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 237
    .local v0, targetId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    iget v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mType:I

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 240
    iget v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mServiceType:I

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 243
    iget v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mType:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v3

    iget v4, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mInstId:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid128:Ljava/util/UUID;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 246
    goto :goto_0

    .line 248
    :cond_3
    iget v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v3

    iget v4, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mInstId:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid16:I

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid16()I

    move-result v4

    if-ne v3, v4, :cond_0

    move v1, v2

    .line 251
    goto :goto_0
.end method

.method public getInstanceID()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mInstId:I

    return v0
.end method

.method public getLeastSignificantBits()J
    .locals 2

    .prologue
    .line 204
    iget v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid128:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    .line 206
    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid16:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getMostSignificantBits()J
    .locals 2

    .prologue
    .line 210
    iget v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid128:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 212
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getServiceType()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mServiceType:I

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid128:Ljava/util/UUID;

    return-object v0
.end method

.method public getUuid16()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid16:I

    return v0
.end method

.method public getUuidType()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 217
    iget v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid128:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    .line 220
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid16:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setInstId(I)V
    .locals 0
    .parameter "instId"

    .prologue
    .line 169
    iput p1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mInstId:I

    .line 170
    return-void
.end method

.method public setServiceType(I)V
    .locals 0
    .parameter "serviceType"

    .prologue
    .line 200
    iput p1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mServiceType:I

    .line 201
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 294
    iget v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 295
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid128:Ljava/util/UUID;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 297
    :goto_0
    return-object v0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid128:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 297
    :cond_1
    const-string v0, "%08x-0000-1000-8000-00805f9b34fb"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid16:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 262
    iget v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mInstId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid128:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    :goto_0
    return-void

    .line 269
    :cond_0
    iget v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->mUuid16:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
