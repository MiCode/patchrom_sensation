.class public Lcom/htc/net/wimax/Wimax4GBaseStationInfo;
.super Lcom/htc/net/FourG/FourGBaseStationInfo;
.source "Wimax4GBaseStationInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/net/wimax/Wimax4GBaseStationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private asnGatewayId:Ljava/lang/String;

.field protected dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

.field protected napId:J

.field protected preamble:J

.field protected realm:Ljava/lang/String;

.field protected ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

.field private vendorId:I

.field private vendorInfo:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 331
    new-instance v0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo$1;

    invoke-direct {v0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo$1;-><init>()V

    sput-object v0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/high16 v1, -0x8000

    .line 48
    invoke-direct {p0}, Lcom/htc/net/FourG/FourGBaseStationInfo;-><init>()V

    .line 49
    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_NONE_LINK_DOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 50
    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_NONE_LINK_DOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    .line 52
    iput-wide v1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    .line 53
    iput-wide v1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    .line 54
    const-string v0, "-1"

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    .line 55
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    .line 56
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    .line 57
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/htc/net/FourG/FourGBaseStationInfo;-><init>(Landroid/os/Parcel;)V

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    .line 356
    return-void
.end method

.method public constructor <init>(Lcom/htc/net/wimax/Wimax4GBaseStationInfo;)V
    .locals 2
    .parameter "bsInfo"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/net/FourG/FourGBaseStationInfo;-><init>(Lcom/htc/net/FourG/FourGBaseStationInfo;)V

    .line 63
    iget-object v0, p1, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 64
    iget-object v0, p1, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 65
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    .line 66
    iget-wide v0, p1, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    iput-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    .line 67
    iget-wide v0, p1, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    iput-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    .line 68
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    .line 69
    iget v0, p1, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    iput v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    .line 70
    iget-object v0, p1, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    .line 71
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const-wide/high16 v1, -0x8000

    .line 264
    invoke-super {p0}, Lcom/htc/net/FourG/FourGBaseStationInfo;->clear()V

    .line 265
    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_NONE_LINK_DOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 266
    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_NONE_LINK_DOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 267
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    .line 268
    iput-wide v1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    .line 269
    iput-wide v1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    .line 270
    const-string v0, "-1"

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    .line 271
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    .line 272
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    .line 273
    return-void
.end method

.method public getASNGatewayId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const-string v0, ""

    .line 84
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDownlinkModulation()Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_NONE_LINK_DOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 192
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    goto :goto_0
.end method

.method public getNapId()J
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    const-wide/16 v0, -0x1

    .line 130
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    goto :goto_0
.end method

.method public getPreamble()J
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const-wide/16 v0, -0x1

    .line 108
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    goto :goto_0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const-string v0, ""

    .line 146
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUplinkModulation()Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_NONE_LINK_DOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 215
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    goto :goto_0
.end method

.method public getVendorID()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    return v0
.end method

.method public getVendorSpecificInformation()[B
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 360
    invoke-super {p0, p1}, Lcom/htc/net/FourG/FourGBaseStationInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    .line 369
    return-void
.end method

.method public setASNGatewayId(Ljava/lang/String;)V
    .locals 0
    .parameter "asnGatewayId"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setDownlinkModulation(Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;)V
    .locals 0
    .parameter "dlModulation"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 207
    return-void
.end method

.method public setNapId(J)V
    .locals 0
    .parameter "napId"

    .prologue
    .line 133
    iput-wide p1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    .line 134
    return-void
.end method

.method public setPreamble(J)V
    .locals 0
    .parameter "preamble"

    .prologue
    .line 112
    iput-wide p1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    .line 113
    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0
    .parameter "realm"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setUplinkModulation(Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;)V
    .locals 0
    .parameter "ulModulation"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    .line 233
    return-void
.end method

.method public setVendorID(I)V
    .locals 0
    .parameter "vendorId"

    .prologue
    .line 171
    iput p1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    .line 172
    return-void
.end method

.method public setVendorSpecificInformation([B)V
    .locals 0
    .parameter "vendorInfo"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    .line 184
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .local v0, ret:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-super {p0}, Lcom/htc/net/FourG/FourGBaseStationInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", DownlinkModulation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", UplinkModulation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", ASNGetewayId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Preamble: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", NapId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Realm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", VendorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", VendorSpecificInformation {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 319
    invoke-super {p0, p1, p2}, Lcom/htc/net/FourG/FourGBaseStationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 320
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    invoke-virtual {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    invoke-virtual {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 323
    iget-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 324
    iget-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 325
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    iget v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 328
    return-void
.end method
