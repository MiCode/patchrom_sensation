.class public Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;
.super Lcom/htc/net/wimax/Wimax4GBaseStationInfo;
.source "HTCWimax4GBaseStationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bandId:I

.field private cinr1:I

.field private cinr3:I

.field private cinrCh0:F

.field private cinrCh0Dev:F

.field private cinrCh1:F

.field private cinrCh1Dev:F

.field private diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

.field private dlPermBase:I

.field private fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

.field private fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

.field private freqId:I

.field private rssiCh0:F

.field private rssiCh0Dev:F

.field private rssiCh1:F

.field private rssiCh1Dev:F

.field private uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

.field private ulPermBase:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 463
    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$1;

    invoke-direct {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$1;-><init>()V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x8000

    const/4 v0, 0x1

    .line 125
    invoke-direct {p0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;-><init>()V

    .line 128
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    .line 129
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->freqId:I

    .line 130
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr1:I

    .line 131
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr3:I

    .line 134
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0:F

    .line 135
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1:F

    .line 136
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0:F

    .line 137
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1:F

    .line 138
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0Dev:F

    .line 139
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1Dev:F

    .line 140
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0Dev:F

    .line 141
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1Dev:F

    .line 142
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->ulPermBase:I

    .line 143
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->dlPermBase:I

    .line 144
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_UNKNOW:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 145
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_UNKNOW:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 146
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_UNKNOW:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 147
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_UNKNOW:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 150
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 479
    invoke-direct {p0, p1}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;-><init>(Landroid/os/Parcel;)V

    .line 482
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->freqId:I

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr1:I

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr3:I

    .line 488
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0:F

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1:F

    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0:F

    .line 491
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1:F

    .line 492
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0Dev:F

    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1Dev:F

    .line 494
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0Dev:F

    .line 495
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1Dev:F

    .line 496
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->ulPermBase:I

    .line 497
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->dlPermBase:I

    .line 498
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 499
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 501
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 503
    return-void
.end method

.method public constructor <init>(Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;)V
    .locals 1
    .parameter "bsInfo"

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;-><init>(Lcom/htc/net/wimax/Wimax4GBaseStationInfo;)V

    .line 156
    if-nez p1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 161
    :cond_0
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    .line 162
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->freqId:I

    .line 163
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr1:I

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr1:I

    .line 164
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr3:I

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr3:I

    .line 167
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0:F

    .line 168
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1:F

    .line 169
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0:F

    .line 170
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1:F

    .line 171
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0Dev:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0Dev:F

    .line 172
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1Dev:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1Dev:F

    .line 173
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0Dev:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0Dev:F

    .line 175
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1Dev:F

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1Dev:F

    .line 176
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->ulPermBase:I

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->ulPermBase:I

    .line 177
    iget v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->dlPermBase:I

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->dlPermBase:I

    .line 178
    iget-object v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 179
    iget-object v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 180
    iget-object v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 181
    iget-object v0, p1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/high16 v1, -0x8000

    const/4 v0, 0x1

    .line 408
    invoke-super {p0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->clear()V

    .line 409
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    .line 410
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->freqId:I

    .line 411
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr1:I

    .line 412
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr3:I

    .line 415
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0:F

    .line 416
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1:F

    .line 417
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0:F

    .line 418
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1:F

    .line 419
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0Dev:F

    .line 420
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1Dev:F

    .line 421
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0Dev:F

    .line 422
    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1Dev:F

    .line 423
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->ulPermBase:I

    .line 424
    iput v1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->dlPermBase:I

    .line 425
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_UNKNOW:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 426
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_UNKNOW:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 427
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_UNKNOW:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 428
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_UNKNOW:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 430
    return-void
.end method

.method public getBandId()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    return v0
.end method

.method public getCINR1()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr1:I

    return v0
.end method

.method public getCINR3()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr3:I

    return v0
.end method

.method public getCinrCh0()F
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0:F

    return v0
.end method

.method public getCinrCh0Dev()F
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0Dev:F

    return v0
.end method

.method public getCinrCh1()F
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1:F

    return v0
.end method

.method public getCinrCh1Dev()F
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1Dev:F

    return v0
.end method

.method public getDiuc()Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    return-object v0
.end method

.method public getDlPermBase()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->dlPermBase:I

    return v0
.end method

.method public getFecDlModulation()Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    return-object v0
.end method

.method public getFecUlModulation()Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    return-object v0
.end method

.method public getFreqId()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->freqId:I

    return v0
.end method

.method public getMeanCINR()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    return v0
.end method

.method public getMeanRSSI()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    return v0
.end method

.method public getRssiCh0()F
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0:F

    return v0
.end method

.method public getRssiCh0Dev()F
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0Dev:F

    return v0
.end method

.method public getRssiCh1()F
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1:F

    return v0
.end method

.method public getRssiCh1Dev()F
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1Dev:F

    return v0
.end method

.method public getUiuc()Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    return-object v0
.end method

.method public getUlPermBase()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->ulPermBase:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 507
    invoke-super {p0, p1}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    .line 511
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->freqId:I

    .line 512
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr1:I

    .line 513
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr3:I

    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0:F

    .line 517
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1:F

    .line 518
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0:F

    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1:F

    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0Dev:F

    .line 521
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1Dev:F

    .line 522
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0Dev:F

    .line 523
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1Dev:F

    .line 524
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->ulPermBase:I

    .line 525
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->dlPermBase:I

    .line 526
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 527
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 528
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 529
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 532
    return-void
.end method

.method public setBandId(I)V
    .locals 0
    .parameter "bandId"

    .prologue
    .line 373
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    .line 374
    return-void
.end method

.method public setCINR1(I)V
    .locals 0
    .parameter "cinr1"

    .prologue
    .line 230
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr1:I

    .line 231
    return-void
.end method

.method public setCINR3(I)V
    .locals 0
    .parameter "cinr3"

    .prologue
    .line 363
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr3:I

    .line 364
    return-void
.end method

.method public setCinrCh0(F)V
    .locals 0
    .parameter "cinrCh0"

    .prologue
    .line 298
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0:F

    .line 299
    return-void
.end method

.method public setCinrCh0Dev(F)V
    .locals 0
    .parameter "cinrCh0Dev"

    .prologue
    .line 314
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0Dev:F

    .line 315
    return-void
.end method

.method public setCinrCh1(F)V
    .locals 0
    .parameter "cinrCh1"

    .prologue
    .line 302
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1:F

    .line 303
    return-void
.end method

.method public setCinrCh1Dev(F)V
    .locals 0
    .parameter "cinrCh1Dev"

    .prologue
    .line 318
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1Dev:F

    .line 319
    return-void
.end method

.method public setDiuc(Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;)V
    .locals 0
    .parameter "diuc"

    .prologue
    .line 350
    iput-object p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 351
    return-void
.end method

.method public setDlPermBase(I)V
    .locals 0
    .parameter "dlPermBase"

    .prologue
    .line 334
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->dlPermBase:I

    .line 335
    return-void
.end method

.method public setFecDlModulation(Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;)V
    .locals 0
    .parameter "fecDlModulation"

    .prologue
    .line 342
    iput-object p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 343
    return-void
.end method

.method public setFecUlModulation(Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;)V
    .locals 0
    .parameter "fecUlModulation"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 339
    return-void
.end method

.method public setFreqId(I)V
    .locals 0
    .parameter "freqId"

    .prologue
    .line 383
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->freqId:I

    .line 384
    return-void
.end method

.method public setRssiCh0(F)V
    .locals 0
    .parameter "rssiCh0"

    .prologue
    .line 306
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0:F

    .line 307
    return-void
.end method

.method public setRssiCh0Dev(F)V
    .locals 0
    .parameter "rssiCh0Dev"

    .prologue
    .line 322
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0Dev:F

    .line 323
    return-void
.end method

.method public setRssiCh1(F)V
    .locals 0
    .parameter "rssiCh1"

    .prologue
    .line 310
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1:F

    .line 311
    return-void
.end method

.method public setRssiCh1Dev(F)V
    .locals 0
    .parameter "rssiCh1Dev"

    .prologue
    .line 326
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1Dev:F

    .line 327
    return-void
.end method

.method public setUiuc(Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;)V
    .locals 0
    .parameter "uiuc"

    .prologue
    .line 346
    iput-object p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    .line 347
    return-void
.end method

.method public setUlPermBase(I)V
    .locals 0
    .parameter "ulPermBase"

    .prologue
    .line 330
    iput p1, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->ulPermBase:I

    .line 331
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 435
    invoke-super {p0, p1, p2}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 438
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->bandId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->freqId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinr3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 445
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 446
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 447
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 448
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh0Dev:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 449
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->cinrCh1Dev:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 450
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh0Dev:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 451
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->rssiCh1Dev:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 452
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->ulPermBase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    iget v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->dlPermBase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecUlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->fecDlModulation:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->uiuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->diuc:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 460
    return-void
.end method
