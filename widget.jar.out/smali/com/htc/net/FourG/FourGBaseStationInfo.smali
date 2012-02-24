.class public abstract Lcom/htc/net/FourG/FourGBaseStationInfo;
.super Ljava/lang/Object;
.source "FourGBaseStationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;,
        Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;
    }
.end annotation


# instance fields
.field protected altitude:F

.field protected bsid:Ljava/lang/String;

.field protected cinr:I

.field protected connected:Z

.field protected dlFrequency:J

.field protected latitude:F

.field protected longitude:F

.field protected nspId:J

.field protected nspName:Ljava/lang/String;

.field protected nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

.field protected rssi:I

.field protected rtd:I

.field protected rtdMeasurementAge:I

.field protected rtdMeasurementError:I

.field protected ulFrequency:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/high16 v2, -0x8000

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, "000000000000"

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    .line 75
    iput-wide v4, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    .line 76
    iput-wide v4, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    .line 77
    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    .line 78
    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    .line 79
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    .line 81
    iput v3, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    .line 82
    iput v3, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    .line 83
    iput v3, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    .line 84
    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;->NSP_NETWORK_TYPE_UNKNOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    .line 85
    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    .line 86
    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    .line 87
    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    .line 88
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;->valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    .line 425
    return-void

    .line 411
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/htc/net/FourG/FourGBaseStationInfo;)V
    .locals 2
    .parameter "bsInfo"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    if-nez p1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    .line 96
    iget-boolean v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    iput-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    .line 97
    iget-wide v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    .line 98
    iget-wide v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    .line 99
    iget v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    .line 100
    iget v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    .line 101
    iget-wide v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    .line 102
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    .line 103
    iget v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    .line 104
    iget v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    .line 105
    iget v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    .line 106
    iget-object v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    .line 107
    iget v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    .line 108
    iget v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    .line 109
    iget v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/high16 v2, -0x8000

    .line 352
    const-string v0, "000000000000"

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    .line 354
    iput-wide v4, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    .line 355
    iput-wide v4, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    .line 356
    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    .line 357
    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    .line 358
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    .line 359
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    .line 360
    iput v3, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    .line 361
    iput v3, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    .line 362
    iput v3, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    .line 363
    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;->NSP_NETWORK_TYPE_UNKNOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    .line 364
    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    .line 365
    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    .line 366
    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    .line 367
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public getAltitude()F
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    return v0
.end method

.method public getBSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    return-object v0
.end method

.method public getCINR()I
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    if-nez v0, :cond_0

    .line 183
    const/high16 v0, -0x8000

    .line 185
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    goto :goto_0
.end method

.method public abstract getDownlinkModulation()Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;
.end method

.method public getFrequencyDownlink()J
    .locals 2

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    if-nez v0, :cond_0

    .line 153
    const-wide/16 v0, 0x0

    .line 155
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    goto :goto_0
.end method

.method public getFrequencyUplink()J
    .locals 2

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    if-nez v0, :cond_0

    .line 139
    const-wide/16 v0, 0x0

    .line 141
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    goto :goto_0
.end method

.method public getLatitude()F
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    return v0
.end method

.method public getLongitude()F
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    return v0
.end method

.method public getNetworkType()Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    if-nez v0, :cond_0

    .line 284
    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;->NSP_NETWORK_TYPE_UNKNOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    .line 286
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    goto :goto_0
.end method

.method public getNspId()J
    .locals 2

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    if-nez v0, :cond_0

    .line 216
    const-wide/16 v0, -0x1

    .line 218
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    goto :goto_0
.end method

.method public getNspName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    if-nez v0, :cond_0

    .line 233
    const-string v0, ""

    .line 235
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRSSI()I
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    if-nez v0, :cond_0

    .line 168
    const/high16 v0, -0x8000

    .line 170
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    goto :goto_0
.end method

.method public getRTD()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    return v0
.end method

.method public getRTDMeasurementAge()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    return v0
.end method

.method public getRTDMeasurementError()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    return v0
.end method

.method public abstract getUplinkModulation()Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    .line 437
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    .line 438
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    .line 439
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;->valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    .line 442
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    .line 443
    return-void

    .line 429
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAltitude(F)V
    .locals 0
    .parameter "altitude"

    .prologue
    .line 273
    iput p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    .line 274
    return-void
.end method

.method public setBSID(Ljava/lang/String;)V
    .locals 0
    .parameter "bsid"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setCINR(I)V
    .locals 0
    .parameter "cinr"

    .prologue
    .line 188
    iput p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    .line 189
    return-void
.end method

.method public setConnected(Z)V
    .locals 0
    .parameter "connected"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    .line 131
    return-void
.end method

.method public setFrequencyDownlink(J)V
    .locals 0
    .parameter "dlFrequency"

    .prologue
    .line 158
    iput-wide p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    .line 159
    return-void
.end method

.method public setFrequencyUplink(J)V
    .locals 0
    .parameter "ulFrequency"

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    .line 145
    return-void
.end method

.method public setLatitude(F)V
    .locals 0
    .parameter "latitude"

    .prologue
    .line 260
    iput p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    .line 261
    return-void
.end method

.method public setLongitude(F)V
    .locals 1
    .parameter "longtitude"

    .prologue
    .line 249
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    .line 250
    return-void
.end method

.method public setNetworkType(Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;)V
    .locals 0
    .parameter "nspNetworkType"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    .line 290
    return-void
.end method

.method public setNspId(J)V
    .locals 0
    .parameter "nspId"

    .prologue
    .line 221
    iput-wide p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    .line 222
    return-void
.end method

.method public setNspName(Ljava/lang/String;)V
    .locals 0
    .parameter "nspName"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setRSSI(I)V
    .locals 0
    .parameter "rssi"

    .prologue
    .line 173
    iput p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    .line 174
    return-void
.end method

.method public setRTD(I)V
    .locals 0
    .parameter "rtd"

    .prologue
    .line 300
    iput p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    .line 301
    return-void
.end method

.method public setRTDMeasurementAge(I)V
    .locals 0
    .parameter "rtdMeasurementAge"

    .prologue
    .line 311
    iput p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    .line 312
    return-void
.end method

.method public setRTDMeasurementError(I)V
    .locals 0
    .parameter "rtdMeasurementError"

    .prologue
    .line 322
    iput p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    .line 323
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .local v0, ret:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/htc/net/FourG/FourGBaseStationInfo;

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

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", UplinkFrequency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", DownlinkFrequency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", RSSI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", CINR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", NspId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", NspName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Longitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Latitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Altitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", NspNetworkType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", RTD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", RTDMeasurementAge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", RTDMEasurementError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 377
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    iget-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 379
    iget-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 380
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    iget-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 383
    iget-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 384
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 385
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 386
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 387
    iget-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    invoke-virtual {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    return-void

    .line 377
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
