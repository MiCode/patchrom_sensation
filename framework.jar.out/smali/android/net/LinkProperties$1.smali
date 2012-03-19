.class final Landroid/net/LinkProperties$1;
.super Ljava/lang/Object;
.source "LinkProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkProperties;
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
        "Landroid/net/LinkProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 718
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkProperties;
    .locals 9
    .parameter "in"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 720
    new-instance v5, Landroid/net/LinkProperties;

    invoke-direct {v5}, Landroid/net/LinkProperties;-><init>()V

    .line 721
    .local v5, netProp:Landroid/net/LinkProperties;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 722
    .local v3, iface:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 724
    :try_start_0
    invoke-virtual {v5, v3}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 730
    .local v0, addressCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 731
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/LinkAddress;

    invoke-virtual {v5, v6}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    .line 730
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 725
    .end local v0           #addressCount:I
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    move-object v5, v7

    .line 760
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #netProp:Landroid/net/LinkProperties;
    :cond_1
    :goto_1
    return-object v5

    .line 733
    .restart local v0       #addressCount:I
    .restart local v2       #i:I
    .restart local v5       #netProp:Landroid/net/LinkProperties;
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 734
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    .line 736
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-static {v6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2

    .line 734
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 739
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 740
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_4

    .line 741
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    invoke-virtual {v5, v6}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    .line 740
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 743
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-ne v6, v8, :cond_5

    .line 744
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/ProxyProperties;

    invoke-virtual {v5, v6}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 748
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 749
    .local v4, ifaceV6:Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 751
    :try_start_2
    invoke-virtual {v5, v4}, Landroid/net/LinkProperties;->setInterfaceNameV6(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 756
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-ne v6, v8, :cond_1

    .line 757
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/ProxyProperties;

    invoke-virtual {v5, v6}, Landroid/net/LinkProperties;->setHttpProxyV6(Landroid/net/ProxyProperties;)V

    goto :goto_1

    .line 752
    :catch_1
    move-exception v1

    .restart local v1       #e:Ljava/lang/Exception;
    move-object v5, v7

    .line 753
    goto :goto_1

    .line 737
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #ifaceV6:Ljava/lang/String;
    :catch_2
    move-exception v6

    goto :goto_3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 718
    invoke-virtual {p0, p1}, Landroid/net/LinkProperties$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/LinkProperties;
    .locals 1
    .parameter "size"

    .prologue
    .line 764
    new-array v0, p1, [Landroid/net/LinkProperties;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 718
    invoke-virtual {p0, p1}, Landroid/net/LinkProperties$1;->newArray(I)[Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method
