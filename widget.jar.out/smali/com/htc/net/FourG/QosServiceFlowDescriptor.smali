.class public abstract Lcom/htc/net/FourG/QosServiceFlowDescriptor;
.super Ljava/lang/Object;
.source "QosServiceFlowDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;,
        Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;,
        Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;,
        Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;,
        Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;
    }
.end annotation


# instance fields
.field protected description:Ljava/lang/String;

.field private destIp:Ljava/net/InetAddress;

.field private destIpMask:Ljava/net/InetAddress;

.field private direction:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

.field private ipPortHigh:I

.field private ipPortLow:I

.field private localId:I

.field private modified:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

.field private origin:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

.field private sfid:I

.field private state:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

.field private trafficType:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->description:Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->SF_STATE_LOCAL_NEW_DESC:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    iput-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->state:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    .line 90
    sget-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;->SF_ORIGIN_MS_INITIATED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    iput-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->origin:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    .line 91
    sget-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;->SF_DIRECTION_UPLINK:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    iput-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->direction:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    .line 92
    sget-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;->SF_MODIFIED_NO_AS_INITIATED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    iput-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->modified:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    .line 93
    sget-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;->SF_TRAFFIC_TYPE_UDP:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    iput-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->trafficType:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    .line 94
    iput-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIp:Ljava/net/InetAddress;

    .line 95
    iput-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIpMask:Ljava/net/InetAddress;

    .line 96
    iput v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortHigh:I

    .line 97
    iput v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortLow:I

    .line 98
    iput v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->localId:I

    .line 99
    iput v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->sfid:I

    .line 100
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->description:Ljava/lang/String;

    .line 338
    const-class v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    iput-object v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->state:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    .line 339
    const-class v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    iput-object v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->origin:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    .line 340
    const-class v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    iput-object v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->direction:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    .line 341
    const-class v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    iput-object v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->modified:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    .line 342
    const-class v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    iput-object v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->trafficType:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    .line 345
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIp:Ljava/net/InetAddress;

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIpMask:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortHigh:I

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortLow:I

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->localId:I

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->sfid:I

    .line 355
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;)V
    .locals 4
    .parameter "description"
    .parameter "direction"

    .prologue
    const/4 v3, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->description:Ljava/lang/String;

    .line 105
    sget-object v2, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->SF_STATE_LOCAL_NEW_DESC:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    iput-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->state:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    .line 106
    iput-object p2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->direction:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    .line 109
    :try_start_0
    sget-object v2, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;->SF_DIRECTION_DOWNLINK:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    if-ne p2, v2, :cond_0

    .line 110
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIp:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    sget-object v2, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;->SF_ORIGIN_MS_INITIATED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    iput-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->origin:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    .line 120
    sget-object v2, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;->SF_MODIFIED_NO_AS_INITIATED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    iput-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->modified:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    .line 121
    sget-object v2, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;->SF_TRAFFIC_TYPE_UDP:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    iput-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->trafficType:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    .line 122
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIpMask:Ljava/net/InetAddress;

    .line 123
    iput v3, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortHigh:I

    .line 124
    iput v3, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortLow:I

    .line 125
    iput v3, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->localId:I

    .line 126
    iput v3, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->sfid:I

    .line 127
    return-void

    .line 112
    :cond_0
    const/4 v2, 0x4

    :try_start_1
    new-array v1, v2, [B

    fill-array-data v1, :array_0

    .line 113
    .local v1, ip:[B
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIp:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 115
    .end local v1           #ip:[B
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 112
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public getDestinationIpAddr()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIp:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getDestinationIpAddrMask()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIpMask:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getDestinationIpPortHigh()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortHigh:I

    return v0
.end method

.method public getDestinationIpPortLow()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortLow:I

    return v0
.end method

.method public getDirection()Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->direction:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    return-object v0
.end method

.method public getLocalID()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->localId:I

    return v0
.end method

.method public getModificationState()Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->modified:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    return-object v0
.end method

.method public getOrigin()Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->origin:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    return-object v0
.end method

.method public getSFID()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->sfid:I

    return v0
.end method

.method public getState()Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->state:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    return-object v0
.end method

.method public getTrafficType()Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->trafficType:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    return-object v0
.end method

.method setDestination(Ljava/net/InetAddress;Ljava/net/InetAddress;IILcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;)V
    .locals 0
    .parameter "ipAddr"
    .parameter "ipAddrMask"
    .parameter "ipPortHigh"
    .parameter "ipPortLow"
    .parameter "trafficType"

    .prologue
    .line 286
    iput-object p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIp:Ljava/net/InetAddress;

    .line 287
    iput-object p2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIpMask:Ljava/net/InetAddress;

    .line 288
    iput p3, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortHigh:I

    .line 289
    iput p4, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortLow:I

    .line 290
    iput-object p5, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->trafficType:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    .line 291
    return-void
.end method

.method public setDestinationIpAddr(Ljava/net/InetAddress;)V
    .locals 0
    .parameter "destIp"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIp:Ljava/net/InetAddress;

    .line 162
    return-void
.end method

.method public setDestinationIpAddrMask(Ljava/net/InetAddress;)V
    .locals 0
    .parameter "destIpMask"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIpMask:Ljava/net/InetAddress;

    .line 174
    return-void
.end method

.method public setDestinationIpPortHigh(I)V
    .locals 0
    .parameter "ipPortHigh"

    .prologue
    .line 187
    iput p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortHigh:I

    .line 188
    return-void
.end method

.method public setDestinationIpPortLow(I)V
    .locals 0
    .parameter "ipPortLow"

    .prologue
    .line 201
    iput p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortLow:I

    .line 202
    return-void
.end method

.method public setDirection(Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->direction:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    .line 238
    return-void
.end method

.method public setLocalID(I)V
    .locals 0
    .parameter "localId"

    .prologue
    .line 141
    iput p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->localId:I

    .line 142
    return-void
.end method

.method public setModificationState(Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;)V
    .locals 0
    .parameter "modified"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->modified:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    .line 264
    return-void
.end method

.method public setOrigin(Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;)V
    .locals 0
    .parameter "origin"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->origin:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    .line 226
    return-void
.end method

.method public setSFID(I)V
    .locals 0
    .parameter "sfid"

    .prologue
    .line 251
    iput p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->sfid:I

    .line 252
    return-void
.end method

.method public setState(Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->state:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    .line 276
    return-void
.end method

.method public setTrafficType(Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;)V
    .locals 0
    .parameter "trafficType"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->trafficType:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    .line 214
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .local v0, ret:Ljava/lang/StringBuilder;
    const-class v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->state:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    invoke-virtual {v2}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", LocalID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->localId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", SFID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->sfid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Origin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->origin:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    invoke-virtual {v2}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->direction:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    invoke-virtual {v2}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Modified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->modified:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    invoke-virtual {v2}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", TrafficType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->trafficType:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", DestIP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIp:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", DestIPMask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIpMask:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", IpPortHigh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortHigh:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", IpPortLow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortLow:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->state:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    invoke-virtual {v0}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->origin:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    invoke-virtual {v0}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->direction:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    invoke-virtual {v0}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->modified:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    invoke-virtual {v0}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->trafficType:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    invoke-virtual {v0}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIp:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 328
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIpMask:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 329
    iget v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortHigh:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortLow:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    iget v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->localId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->sfid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    return-void
.end method
