.class final Lcom/htc/net/usbnet/UsbnetInfo$1;
.super Ljava/lang/Object;
.source "UsbnetInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/usbnet/UsbnetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/net/usbnet/UsbnetInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/net/usbnet/UsbnetInfo;
    .locals 3
    .parameter "in"

    .prologue
    .line 92
    new-instance v0, Lcom/htc/net/usbnet/UsbnetInfo;

    invoke-direct {v0}, Lcom/htc/net/usbnet/UsbnetInfo;-><init>()V

    .line 93
    .local v0, info:Lcom/htc/net/usbnet/UsbnetInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    #setter for: Lcom/htc/net/usbnet/UsbnetInfo;->mLinkSpeed:D
    invoke-static {v0, v1, v2}, Lcom/htc/net/usbnet/UsbnetInfo;->access$002(Lcom/htc/net/usbnet/UsbnetInfo;D)D

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/htc/net/usbnet/UsbnetInfo;->mIpAddress:I
    invoke-static {v0, v1}, Lcom/htc/net/usbnet/UsbnetInfo;->access$102(Lcom/htc/net/usbnet/UsbnetInfo;I)I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    #setter for: Lcom/htc/net/usbnet/UsbnetInfo;->mBsMacAddress:J
    invoke-static {v0, v1, v2}, Lcom/htc/net/usbnet/UsbnetInfo;->access$202(Lcom/htc/net/usbnet/UsbnetInfo;J)J

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/htc/net/usbnet/UsbnetInfo;->mNetworkId:I
    invoke-static {v0, v1}, Lcom/htc/net/usbnet/UsbnetInfo;->access$302(Lcom/htc/net/usbnet/UsbnetInfo;I)I

    .line 97
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/htc/net/usbnet/UsbnetInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/net/usbnet/UsbnetInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/net/usbnet/UsbnetInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 101
    new-array v0, p1, [Lcom/htc/net/usbnet/UsbnetInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/htc/net/usbnet/UsbnetInfo$1;->newArray(I)[Lcom/htc/net/usbnet/UsbnetInfo;

    move-result-object v0

    return-object v0
.end method
