.class public Lcom/htc/net/FourG/QosStatistics;
.super Ljava/lang/Object;
.source "QosStatistics.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/net/FourG/QosStatistics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private localId:I

.field private sfid:I

.field private totalPduBytes:J

.field private totalPduPackets:J

.field private totalPduPacketsDropped:J

.field private totalRetransmissionPackets:J

.field private totalRxBytes:J

.field private totalSduBytes:J

.field private totalSduPackets:J

.field private totalSduPacketsDropped:J

.field private uptime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 249
    new-instance v0, Lcom/htc/net/FourG/QosStatistics$1;

    invoke-direct {v0}, Lcom/htc/net/FourG/QosStatistics$1;-><init>()V

    sput-object v0, Lcom/htc/net/FourG/QosStatistics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/high16 v0, -0x8000

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v2, p0, Lcom/htc/net/FourG/QosStatistics;->localId:I

    .line 49
    iput v2, p0, Lcom/htc/net/FourG/QosStatistics;->sfid:I

    .line 50
    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalRxBytes:J

    .line 51
    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduBytes:J

    .line 52
    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduPackets:J

    .line 53
    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduPacketsDropped:J

    .line 54
    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduBytes:J

    .line 55
    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduPackets:J

    .line 56
    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduPacketsDropped:J

    .line 57
    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalRetransmissionPackets:J

    .line 58
    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->uptime:J

    .line 59
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 261
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/QosStatistics;->localId:I

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/QosStatistics;->sfid:I

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalRxBytes:J

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduBytes:J

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduPackets:J

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduPacketsDropped:J

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduBytes:J

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduPackets:J

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduPacketsDropped:J

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalRetransmissionPackets:J

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->uptime:J

    .line 273
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public getLocalID()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/htc/net/FourG/QosStatistics;->localId:I

    return v0
.end method

.method public getSFID()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/htc/net/FourG/QosStatistics;->sfid:I

    return v0
.end method

.method public getTotalPduBytes()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduBytes:J

    return-wide v0
.end method

.method public getTotalPduPackets()J
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduPackets:J

    return-wide v0
.end method

.method public getTotalPduPacketsDropped()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduPacketsDropped:J

    return-wide v0
.end method

.method public getTotalRetransmissionPacketsSent()J
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalRetransmissionPackets:J

    return-wide v0
.end method

.method public getTotalRxBytes()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalRxBytes:J

    return-wide v0
.end method

.method public getTotalSduBytes()J
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduBytes:J

    return-wide v0
.end method

.method public getTotalSduPackets()J
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduPackets:J

    return-wide v0
.end method

.method public getTotalSduPacketsDropped()J
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduPacketsDropped:J

    return-wide v0
.end method

.method public getUptime()J
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->uptime:J

    return-wide v0
.end method

.method public setLocalID(I)V
    .locals 0
    .parameter "localId"

    .prologue
    .line 71
    iput p1, p0, Lcom/htc/net/FourG/QosStatistics;->localId:I

    .line 72
    return-void
.end method

.method public setSFID(I)V
    .locals 0
    .parameter "sfid"

    .prologue
    .line 83
    iput p1, p0, Lcom/htc/net/FourG/QosStatistics;->sfid:I

    .line 84
    return-void
.end method

.method public setTotalPduBytes(J)V
    .locals 0
    .parameter "totalPduBytes"

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduBytes:J

    .line 111
    return-void
.end method

.method public setTotalPduPackets(J)V
    .locals 0
    .parameter "totalPduPackets"

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduPackets:J

    .line 124
    return-void
.end method

.method public setTotalPduPacketsDropped(J)V
    .locals 0
    .parameter "totalPduPacketsDropped"

    .prologue
    .line 136
    iput-wide p1, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduPacketsDropped:J

    .line 137
    return-void
.end method

.method public setTotalRetransmissionPacketsSent(J)V
    .locals 0
    .parameter "totalRetransmissionPackets"

    .prologue
    .line 201
    iput-wide p1, p0, Lcom/htc/net/FourG/QosStatistics;->totalRetransmissionPackets:J

    .line 202
    return-void
.end method

.method public setTotalRxBytes(J)V
    .locals 0
    .parameter "totalRxBytes"

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/htc/net/FourG/QosStatistics;->totalRxBytes:J

    .line 97
    return-void
.end method

.method public setTotalSduBytes(J)V
    .locals 0
    .parameter "totalSduBytes"

    .prologue
    .line 149
    iput-wide p1, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduBytes:J

    .line 150
    return-void
.end method

.method public setTotalSduPackets(J)V
    .locals 0
    .parameter "totalSduPackets"

    .prologue
    .line 162
    iput-wide p1, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduPackets:J

    .line 163
    return-void
.end method

.method public setTotalSduPacketsDropped(J)V
    .locals 0
    .parameter "totalSduPacketsDropped"

    .prologue
    .line 175
    iput-wide p1, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduPacketsDropped:J

    .line 176
    return-void
.end method

.method public setUptime(J)V
    .locals 0
    .parameter "uptime"

    .prologue
    .line 188
    iput-wide p1, p0, Lcom/htc/net/FourG/QosStatistics;->uptime:J

    .line 189
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .local v0, ret:Ljava/lang/StringBuilder;
    const-class v1, Lcom/htc/net/FourG/QosStatistics;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/QosStatistics;->localId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", SFID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/QosStatistics;->sfid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", totalRxBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/QosStatistics;->totalRxBytes:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", totalPduBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduBytes:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", totalPduPackets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduPackets:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", totalPduPacketsDropped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduPacketsDropped:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", totalSduBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduBytes:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", totalSduPackets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduPackets:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", totalSduPacketsDropped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduPacketsDropped:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", totalRetransmissionPackets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/QosStatistics;->totalRetransmissionPackets:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", uptime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/QosStatistics;->uptime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 235
    iget v0, p0, Lcom/htc/net/FourG/QosStatistics;->localId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget v0, p0, Lcom/htc/net/FourG/QosStatistics;->sfid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalRxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 238
    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 239
    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 240
    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduPacketsDropped:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 241
    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 242
    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 243
    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduPacketsDropped:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 244
    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalRetransmissionPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 245
    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->uptime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 246
    return-void
.end method
