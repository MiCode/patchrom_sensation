.class final Landroid/net/wifi/WifiConfiguration$1;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
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
        "Landroid/net/wifi/WifiConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 869
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiConfiguration;
    .locals 10
    .parameter "in"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 871
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 872
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 873
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 874
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 875
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 876
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 877
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 878
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_0

    .line 879
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v3

    .line 878
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 880
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 881
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 882
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    :goto_1
    iput-boolean v6, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 883
    #calls: Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->access$100(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 884
    #calls: Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->access$100(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 885
    #calls: Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->access$100(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 886
    #calls: Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->access$100(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 887
    #calls: Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->access$100(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 889
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .local v0, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 890
    .local v2, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 889
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0           #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v2           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    move v6, v8

    .line 882
    goto :goto_1

    .line 893
    .restart local v0       #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    .line 894
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wapi_psk:Ljava/lang/String;

    .line 895
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wapi_psk_hex:Ljava/lang/String;

    .line 896
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wapi_cert:Ljava/lang/String;

    .line 897
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wapi_user_cert:Ljava/lang/String;

    .line 898
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wapi_user_key:Ljava/lang/String;

    .line 899
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wapi_as_cert:Ljava/lang/String;

    .line 900
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->eapol_flags:I

    .line 902
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 903
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 904
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/LinkProperties;

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 907
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .line 908
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3

    :goto_3
    iput-boolean v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    .line 909
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->BSSID:Ljava/lang/String;

    .line 910
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    .line 911
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    .line 912
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    .line 913
    const/4 v3, 0x0

    :goto_4
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_4

    .line 914
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 913
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    move v7, v8

    .line 908
    goto :goto_3

    .line 915
    :cond_4
    const/4 v3, 0x0

    :goto_5
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_5

    .line 916
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 915
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 917
    :cond_5
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    .line 918
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    .line 919
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    .line 920
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    .line 921
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    .line 922
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    .line 923
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    .line 924
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    .line 926
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    .line 927
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    .line 928
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    .line 930
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 869
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "size"

    .prologue
    .line 934
    new-array v0, p1, [Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 869
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfiguration$1;->newArray(I)[Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method
