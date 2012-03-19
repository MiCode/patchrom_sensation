.class Landroid/net/wifi/WifiConfigStore;
.super Ljava/lang/Object;
.source "WifiConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfigStore$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DNS_KEY:Ljava/lang/String; = "dns"

.field private static final EOS:Ljava/lang/String; = "eos"

.field private static final EXCLUSION_LIST_KEY:Ljava/lang/String; = "exclusionList"

.field private static final GATEWAY_KEY:Ljava/lang/String; = "gateway"

.field private static final ID_KEY:Ljava/lang/String; = "id"

.field private static final IPCONFIG_FILE_VERSION:I = 0x2

.field private static final IP_ASSIGNMENT_KEY:Ljava/lang/String; = "ipAssignment"

.field private static final LINK_ADDRESS_KEY:Ljava/lang/String; = "linkAddress"

.field private static final PROXY_HOST_KEY:Ljava/lang/String; = "proxyHost"

.field private static final PROXY_PORT_KEY:Ljava/lang/String; = "proxyPort"

.field private static final PROXY_SETTINGS_KEY:Ljava/lang/String; = "proxySettings"

.field private static final TAG:Ljava/lang/String; = "WifiConfigStore"

.field private static final ipConfigFile:Ljava/lang/String;

.field private static sConfiguredNetworks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;

.field private static sLastPriority:I

.field private static sNetworkIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiConfigStore;->sNetworkIds:Ljava/util/HashMap;

    .line 123
    const/4 v0, -0x1

    sput v0, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/ipconfig.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 704
    return-void
.end method

.method private static addIpSettingsFromConfig(Landroid/net/LinkProperties;Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .parameter "linkProperties"
    .parameter "config"

    .prologue
    .line 1218
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 1219
    .local v2, linkAddr:Landroid/net/LinkAddress;
    invoke-virtual {p0, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    goto :goto_0

    .line 1221
    .end local v2           #linkAddr:Landroid/net/LinkAddress;
    :cond_0
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 1222
    .local v3, route:Landroid/net/RouteInfo;
    invoke-virtual {p0, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_1

    .line 1224
    .end local v3           #route:Landroid/net/RouteInfo;
    :cond_1
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1225
    .local v0, dns:Ljava/net/InetAddress;
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_2

    .line 1227
    .end local v0           #dns:Ljava/net/InetAddress;
    :cond_2
    return-void
.end method

.method static addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "config"

    .prologue
    .line 310
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v0

    .line 311
    .local v0, result:Landroid/net/wifi/NetworkUpdateResult;
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 312
    invoke-virtual {v0}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v1

    return v1
.end method

.method private static addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;
    .locals 26
    .parameter "config"

    .prologue
    .line 890
    move-object/from16 v0, p0

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 891
    .local v14, netId:I
    const/4 v15, 0x0

    .line 893
    .local v15, newNetwork:Z
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v14, v0, :cond_0

    .line 894
    sget-object v22, Landroid/net/wifi/WifiConfigStore;->sNetworkIds:Ljava/util/HashMap;

    invoke-static/range {p0 .. p0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 895
    .local v18, savedNetId:Ljava/lang/Integer;
    if-eqz v18, :cond_2

    .line 896
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 907
    .end local v18           #savedNetId:Ljava/lang/Integer;
    :cond_0
    const/16 v19, 0x1

    .line 911
    .local v19, updateFailed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    const-string/jumbo v22, "ssid"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 916
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set SSID: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1068
    :goto_0
    if-eqz v19, :cond_16

    .line 1069
    if-eqz v15, :cond_1

    .line 1070
    invoke-static {v14}, Landroid/net/wifi/WifiNative;->removeNetworkCommand(I)Z

    .line 1071
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Failed to set a network variable, removed network: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1073
    :cond_1
    new-instance v16, Landroid/net/wifi/NetworkUpdateResult;

    const/16 v22, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/net/wifi/NetworkUpdateResult;-><init>(I)V

    .line 1101
    .end local v19           #updateFailed:Z
    :goto_1
    return-object v16

    .line 898
    .restart local v18       #savedNetId:Ljava/lang/Integer;
    :cond_2
    const/4 v15, 0x1

    .line 899
    invoke-static {}, Landroid/net/wifi/WifiNative;->addNetworkCommand()I

    move-result v14

    .line 900
    if-gez v14, :cond_0

    .line 901
    const-string v22, "Failed to add a network!"

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 902
    new-instance v16, Landroid/net/wifi/NetworkUpdateResult;

    const/16 v22, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/net/wifi/NetworkUpdateResult;-><init>(I)V

    goto :goto_1

    .line 920
    .end local v18           #savedNetId:Ljava/lang/Integer;
    .restart local v19       #updateFailed:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    const-string v22, "bssid"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 925
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set BSSID: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 929
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v22, v0

    sget-object v23, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 931
    .local v5, allowedKeyManagementString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/BitSet;->cardinality()I

    move-result v22

    if-eqz v22, :cond_5

    const-string/jumbo v22, "key_mgmt"

    move-object/from16 v0, v22

    invoke-static {v14, v0, v5}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 936
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set key_mgmt: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 941
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v22, v0

    sget-object v23, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 943
    .local v7, allowedProtocolsString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/BitSet;->cardinality()I

    move-result v22

    if-eqz v22, :cond_6

    const-string/jumbo v22, "proto"

    move-object/from16 v0, v22

    invoke-static {v14, v0, v7}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_6

    .line 948
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set proto: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 953
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v22, v0

    sget-object v23, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 955
    .local v3, allowedAuthAlgorithmsString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/BitSet;->cardinality()I

    move-result v22

    if-eqz v22, :cond_7

    const-string v22, "auth_alg"

    move-object/from16 v0, v22

    invoke-static {v14, v0, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 960
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set auth_alg: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 965
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v22, v0

    sget-object v23, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 968
    .local v6, allowedPairwiseCiphersString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/BitSet;->cardinality()I

    move-result v22

    if-eqz v22, :cond_8

    const-string/jumbo v22, "pairwise"

    move-object/from16 v0, v22

    invoke-static {v14, v0, v6}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 973
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set pairwise: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 978
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v22, v0

    sget-object v23, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 980
    .local v4, allowedGroupCiphersString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/BitSet;->cardinality()I

    move-result v22

    if-eqz v22, :cond_9

    const-string v22, "group"

    move-object/from16 v0, v22

    invoke-static {v14, v0, v4}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_9

    .line 985
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set group: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 992
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "*"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_a

    const-string/jumbo v22, "psk"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_a

    .line 997
    const-string v22, "failed to set psk"

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1001
    :cond_a
    const/4 v10, 0x0

    .line 1002
    .local v10, hasSetKey:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    .line 1003
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_d

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v11

    if-eqz v22, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v11

    const-string v23, "*"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_c

    .line 1007
    sget-object v22, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v22, v22, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v11

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_b

    .line 1011
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set wep_key"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v11

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1014
    :cond_b
    const/4 v10, 0x1

    .line 1003
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1019
    .end local v11           #i:I
    :cond_d
    if-eqz v10, :cond_e

    .line 1020
    const-string/jumbo v22, "wep_tx_keyidx"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_e

    .line 1024
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set wep_tx_keyidx: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1029
    :cond_e
    const-string/jumbo v22, "priority"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_f

    .line 1033
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": failed to set priority: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1038
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v22, v0

    if-eqz v22, :cond_11

    const-string/jumbo v23, "scan_ssid"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v22, v0

    if-eqz v22, :cond_10

    const/16 v22, 0x1

    :goto_3
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_11

    .line 1042
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": failed to set hiddenSSID: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1038
    :cond_10
    const/16 v22, 0x0

    goto :goto_3

    .line 1048
    :cond_11
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .local v8, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v13, v8

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_4
    if-ge v12, v13, :cond_15

    aget-object v9, v8, v12

    .line 1049
    .local v9, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v21

    .line 1050
    .local v21, varName:Ljava/lang/String;
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v20

    .line 1051
    .local v20, value:Ljava/lang/String;
    if-eqz v20, :cond_14

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-eq v9, v0, :cond_12

    .line 1053
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v22

    if-nez v22, :cond_13

    const-string v20, "NULL"

    .line 1055
    :cond_12
    :goto_5
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_14

    .line 1059
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": failed to set "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1053
    :cond_13
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiConfigStore;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto :goto_5

    .line 1048
    :cond_14
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1065
    .end local v9           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v20           #value:Ljava/lang/String;
    .end local v21           #varName:Ljava/lang/String;
    :cond_15
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1084
    .end local v3           #allowedAuthAlgorithmsString:Ljava/lang/String;
    .end local v4           #allowedGroupCiphersString:Ljava/lang/String;
    .end local v5           #allowedKeyManagementString:Ljava/lang/String;
    .end local v6           #allowedPairwiseCiphersString:Ljava/lang/String;
    .end local v7           #allowedProtocolsString:Ljava/lang/String;
    .end local v8           #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v10           #hasSetKey:Z
    .end local v12           #i$:I
    .end local v13           #len$:I
    :cond_16
    sget-object v23, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v23

    .line 1085
    :try_start_0
    sget-object v22, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/WifiConfiguration;

    .line 1086
    .local v17, sConfig:Landroid/net/wifi/WifiConfiguration;
    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1087
    if-nez v17, :cond_17

    .line 1088
    new-instance v17, Landroid/net/wifi/WifiConfiguration;

    .end local v17           #sConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-direct/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1089
    .restart local v17       #sConfig:Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, v17

    iput v14, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1092
    :cond_17
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 1094
    sget-object v23, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v23

    .line 1095
    :try_start_1
    sget-object v22, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    sget-object v22, Landroid/net/wifi/WifiConfigStore;->sNetworkIds:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1099
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/net/wifi/WifiConfigStore;->writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v16

    .line 1100
    .local v16, result:Landroid/net/wifi/NetworkUpdateResult;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/net/wifi/NetworkUpdateResult;->setNetworkId(I)V

    goto/16 :goto_1

    .line 1086
    .end local v16           #result:Landroid/net/wifi/NetworkUpdateResult;
    .end local v17           #sConfig:Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v22

    :try_start_2
    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v22

    .line 1097
    .restart local v17       #sConfig:Landroid/net/wifi/WifiConfiguration;
    :catchall_1
    move-exception v22

    :try_start_3
    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v22
.end method

.method static clearIpConfiguration(I)V
    .locals 5
    .parameter "netId"

    .prologue
    .line 531
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v3

    .line 532
    :try_start_0
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 533
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v2, :cond_0

    .line 535
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    .line 536
    .local v1, proxy:Landroid/net/ProxyProperties;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->clear()V

    .line 537
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 539
    .end local v1           #proxy:Landroid/net/ProxyProperties;
    :cond_0
    monitor-exit v3

    .line 540
    return-void

    .line 539
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static configKey(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .parameter "config"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1432
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1443
    .local v0, key:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1

    .line 1434
    .end local v0           #key:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1436
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #key:Ljava/lang/String;
    goto :goto_0

    .line 1437
    .end local v0           #key:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v1, v3

    if-eqz v1, :cond_3

    .line 1438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #key:Ljava/lang/String;
    goto :goto_0

    .line 1440
    .end local v0           #key:Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #key:Ljava/lang/String;
    goto :goto_0
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 1388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static disableNetwork(IIZ)Z
    .locals 6
    .parameter "netId"
    .parameter "reason"
    .parameter "force"

    .prologue
    const/4 v5, 0x1

    .line 380
    invoke-static {p0, p2}, Landroid/net/wifi/WifiNative;->disableNetworkCommand(IZ)Z

    move-result v1

    .line 381
    .local v1, ret:Z
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v3

    .line 382
    :try_start_0
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 384
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v2, v5, :cond_0

    .line 385
    const/4 v2, 0x1

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 386
    iput p1, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 388
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 390
    return v1

    .line 388
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static disableNetwork(IZ)Z
    .locals 1
    .parameter "netId"
    .parameter "force"

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(IIZ)Z

    move-result v0

    return v0
.end method

.method static dump()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1447
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1448
    .local v3, sb:Ljava/lang/StringBuffer;
    const-string/jumbo v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1449
    .local v0, LS:Ljava/lang/String;
    const-string/jumbo v4, "sLastPriority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget v5, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1450
    const-string v4, "Configured networks "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1451
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1452
    .local v1, conf:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1454
    .end local v1           #conf:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static enableAllNetworks()V
    .locals 6

    .prologue
    .line 172
    const/4 v2, 0x0

    .line 173
    .local v2, networkEnabledStateChanged:Z
    sget-object v4, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v4

    .line 174
    :try_start_0
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 175
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 176
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/net/wifi/WifiNative;->enableNetworkCommand(IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    const/4 v2, 0x1

    .line 178
    const/4 v3, 0x2

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    .line 184
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 180
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enable network failed on "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    if-eqz v2, :cond_3

    .line 187
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z

    .line 188
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 190
    :cond_3
    return-void
.end method

.method static enableNetwork(IZ)Z
    .locals 1
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 347
    invoke-static {p0, p1}, Landroid/net/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    move-result v0

    .line 348
    .local v0, ret:Z
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 349
    return v0
.end method

.method static enableNetworkWithoutBroadcast(IZ)Z
    .locals 5
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 353
    invoke-static {p0, p1}, Landroid/net/wifi/WifiNative;->enableNetworkCommand(IZ)Z

    move-result v1

    .line 355
    .local v1, ret:Z
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v3

    .line 356
    :try_start_0
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 357
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    const/4 v2, 0x2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 358
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    if-eqz p1, :cond_1

    .line 361
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabledExcept(I)V

    .line 363
    :cond_1
    return v1

    .line 358
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static forgetNetwork(I)V
    .locals 4
    .parameter "netId"

    .prologue
    .line 285
    invoke-static {p0}, Landroid/net/wifi/WifiNative;->removeNetworkCommand(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z

    .line 287
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v2

    .line 288
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 289
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 290
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sNetworkIds:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    .line 295
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 299
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-void

    .line 293
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 297
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1458
    sget-object v0, Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    return-object v0
.end method

.method static getConfiguredNetworks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v2, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    sget-object v4, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v4

    .line 160
    :try_start_0
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 161
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    return-object v2
.end method

.method static getIpConfiguration(I)Landroid/net/DhcpInfoInternal;
    .locals 8
    .parameter "netId"

    .prologue
    .line 487
    new-instance v0, Landroid/net/DhcpInfoInternal;

    invoke-direct {v0}, Landroid/net/DhcpInfoInternal;-><init>()V

    .line 488
    .local v0, dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v5

    .line 490
    .local v5, linkProperties:Landroid/net/LinkProperties;
    if-eqz v5, :cond_1

    .line 491
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 492
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 493
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 494
    .local v4, linkAddress:Landroid/net/LinkAddress;
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    .line 495
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    .line 496
    .local v6, route:Landroid/net/RouteInfo;
    invoke-virtual {v0, v6}, Landroid/net/DhcpInfoInternal;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_0

    .line 498
    .end local v6           #route:Landroid/net/RouteInfo;
    :cond_0
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v7

    iput v7, v0, Landroid/net/DhcpInfoInternal;->prefixLength:I

    .line 499
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 500
    .local v1, dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/DhcpInfoInternal;->dns1:Ljava/lang/String;

    .line 501
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 502
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/DhcpInfoInternal;->dns2:Ljava/lang/String;

    .line 506
    .end local v1           #dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .end local v4           #linkAddress:Landroid/net/LinkAddress;
    :cond_1
    return-object v0
.end method

.method static getLinkProperties(I)Landroid/net/LinkProperties;
    .locals 4
    .parameter "netId"

    .prologue
    .line 472
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v2

    .line 473
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 474
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/net/LinkProperties;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    monitor-exit v2

    .line 476
    :goto_0
    return-object v1

    .line 475
    :cond_0
    monitor-exit v2

    .line 476
    const/4 v1, 0x0

    goto :goto_0

    .line 475
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getProxyProperties(I)Landroid/net/ProxyProperties;
    .locals 3
    .parameter "netId"

    .prologue
    .line 547
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    .line 548
    .local v0, linkProperties:Landroid/net/LinkProperties;
    if-eqz v0, :cond_0

    .line 549
    new-instance v1, Landroid/net/ProxyProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/ProxyProperties;-><init>(Landroid/net/ProxyProperties;)V

    .line 551
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static initialize(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 148
    sput-object p0, Landroid/net/wifi/WifiConfigStore;->sContext:Landroid/content/Context;

    .line 149
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    .line 150
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 151
    return-void
.end method

.method static isUsingStaticIp(I)Z
    .locals 4
    .parameter "netId"

    .prologue
    .line 558
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v2

    .line 559
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 560
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v1, v3, :cond_0

    .line 561
    const/4 v1, 0x1

    monitor-exit v2

    .line 564
    :goto_0
    return v1

    .line 563
    :cond_0
    monitor-exit v2

    .line 564
    const/4 v1, 0x0

    goto :goto_0

    .line 563
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static loadConfiguredNetworks()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x3

    const/4 v6, 0x0

    .line 574
    invoke-static {}, Landroid/net/wifi/WifiNative;->listNetworksCommand()Ljava/lang/String;

    move-result-object v4

    .line 575
    .local v4, listStr:Ljava/lang/String;
    sput v6, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    .line 577
    sget-object v7, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v7

    .line 578
    :try_start_0
    sget-object v6, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 579
    sget-object v6, Landroid/net/wifi/WifiConfigStore;->sNetworkIds:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 581
    if-nez v4, :cond_0

    .line 582
    monitor-exit v7

    .line 615
    :goto_0
    return-void

    .line 584
    :cond_0
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 586
    .local v3, lines:[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    array-length v6, v3

    if-ge v2, v6, :cond_5

    .line 587
    aget-object v6, v3, v2

    const-string v8, "\t"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 589
    .local v5, result:[Ljava/lang/String;
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v6, 0x0

    :try_start_1
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 595
    :try_start_2
    array-length v6, v5

    if-le v6, v10, :cond_4

    .line 596
    const/4 v6, 0x3

    aget-object v6, v5, v6

    const-string v8, "[CURRENT]"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v11, :cond_2

    .line 597
    const/4 v6, 0x0

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 605
    :goto_2
    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 606
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    sget v8, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    if-le v6, v8, :cond_1

    .line 607
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    sput v6, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    .line 609
    :cond_1
    sget-object v6, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    sget-object v6, Landroid/net/wifi/WifiConfigStore;->sNetworkIds:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 592
    :catch_0
    move-exception v1

    .line 593
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_3

    .line 598
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const/4 v6, 0x3

    aget-object v6, v5, v6

    const-string v8, "[DISABLED]"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v11, :cond_3

    .line 599
    const/4 v6, 0x1

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_2

    .line 612
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i:I
    .end local v3           #lines:[Ljava/lang/String;
    .end local v5           #result:[Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 601
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v2       #i:I
    .restart local v3       #lines:[Ljava/lang/String;
    .restart local v5       #result:[Ljava/lang/String;
    :cond_3
    const/4 v6, 0x2

    :try_start_3
    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_2

    .line 603
    :cond_4
    const/4 v6, 0x2

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_2

    .line 612
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #result:[Ljava/lang/String;
    :cond_5
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 613
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->readIpAndProxyConfigurations()V

    .line 614
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    goto/16 :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1466
    const-string v0, "WifiConfigStore"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1462
    const-string v0, "WifiConfigStore"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    return-void
.end method

.method private static lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "string"
    .parameter "strings"

    .prologue
    .line 1412
    array-length v1, p1

    .line 1414
    .local v1, size:I
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1416
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1417
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1425
    .end local v0           #i:I
    :goto_1
    return v0

    .line 1416
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1423
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to look-up a string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1425
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "set"
    .parameter "strings"

    .prologue
    .line 1392
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1393
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 1397
    .local v1, nextSetBit:I
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {p0, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p0

    .line 1399
    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1400
    aget-object v2, p1, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1404
    :cond_0
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    .line 1405
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1408
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static markAllNetworksDisabled()V
    .locals 1

    .prologue
    .line 644
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabledExcept(I)V

    .line 645
    return-void
.end method

.method private static markAllNetworksDisabledExcept(I)V
    .locals 5
    .parameter "netId"

    .prologue
    const/4 v4, 0x1

    .line 631
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v3

    .line 632
    :try_start_0
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 633
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, p0, :cond_0

    .line 634
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v2, v4, :cond_0

    .line 635
    const/4 v2, 0x1

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 636
    const/4 v2, 0x0

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    goto :goto_0

    .line 640
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 641
    return-void
.end method

.method private static readIpAndProxyConfigurations()V
    .locals 23

    .prologue
    .line 757
    const/4 v8, 0x0

    .line 759
    .local v8, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v9, Ljava/io/DataInputStream;

    new-instance v19, Ljava/io/BufferedInputStream;

    new-instance v20, Ljava/io/FileInputStream;

    sget-object v21, Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-direct/range {v20 .. v21}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v19 .. v20}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 762
    .end local v8           #in:Ljava/io/DataInputStream;
    .local v9, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    .line 763
    .local v18, version:I
    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 764
    const-string v19, "Bad version on IP configuration file, ignore read"

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 876
    if-eqz v9, :cond_0

    .line 878
    :try_start_2
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_0
    move-object v8, v9

    .line 882
    .end local v9           #in:Ljava/io/DataInputStream;
    .end local v18           #version:I
    .restart local v8       #in:Ljava/io/DataInputStream;
    :cond_1
    :goto_1
    return-void

    .line 817
    .end local v8           #in:Ljava/io/DataInputStream;
    .local v5, exclusionList:Ljava/lang/String;
    .local v7, id:I
    .restart local v9       #in:Ljava/io/DataInputStream;
    .local v10, ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .local v11, key:Ljava/lang/String;
    .local v13, linkProperties:Landroid/net/LinkProperties;
    .local v14, proxyHost:Ljava/lang/String;
    .local v15, proxyPort:I
    .local v17, proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .restart local v18       #version:I
    :cond_2
    :try_start_3
    const-string v19, "eos"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v19

    if-eqz v19, :cond_10

    .line 827
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v7, v0, :cond_12

    .line 828
    :try_start_4
    sget-object v20, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 829
    :try_start_5
    sget-object v19, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    sget-object v21, Landroid/net/wifi/WifiConfigStore;->sNetworkIds:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 832
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    if-nez v2, :cond_11

    .line 833
    const-string v19, "configuration found for missing network, ignored"

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 867
    :goto_2
    :pswitch_0
    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 769
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #exclusionList:Ljava/lang/String;
    .end local v7           #id:I
    .end local v10           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #linkProperties:Landroid/net/LinkProperties;
    .end local v14           #proxyHost:Ljava/lang/String;
    .end local v15           #proxyPort:I
    .end local v17           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :cond_3
    :goto_3
    const/4 v7, -0x1

    .line 770
    .restart local v7       #id:I
    :try_start_6
    sget-object v10, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 771
    .restart local v10       #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    sget-object v17, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 772
    .restart local v17       #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    new-instance v13, Landroid/net/LinkProperties;

    invoke-direct {v13}, Landroid/net/LinkProperties;-><init>()V

    .line 773
    .restart local v13       #linkProperties:Landroid/net/LinkProperties;
    const/4 v14, 0x0

    .line 774
    .restart local v14       #proxyHost:Ljava/lang/String;
    const/4 v15, -0x1

    .line 775
    .restart local v15       #proxyPort:I
    const/4 v5, 0x0

    .line 779
    .restart local v5       #exclusionList:Ljava/lang/String;
    :goto_4
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v11

    .line 781
    .restart local v11       #key:Ljava/lang/String;
    :try_start_7
    const-string/jumbo v19, "id"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 782
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    goto :goto_4

    .line 783
    :cond_4
    const-string/jumbo v19, "ipAssignment"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 784
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-result-object v10

    goto :goto_4

    .line 785
    :cond_5
    const-string/jumbo v19, "linkAddress"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 786
    new-instance v12, Landroid/net/LinkAddress;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v19

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 788
    .local v12, linkAddr:Landroid/net/LinkAddress;
    invoke-virtual {v13, v12}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    .line 822
    .end local v12           #linkAddr:Landroid/net/LinkAddress;
    :catch_0
    move-exception v4

    .line 823
    .local v4, e:Ljava/lang/IllegalArgumentException;
    :try_start_8
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Ignore invalid address while reading"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_4

    .line 872
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    .end local v5           #exclusionList:Ljava/lang/String;
    .end local v7           #id:I
    .end local v10           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #linkProperties:Landroid/net/LinkProperties;
    .end local v14           #proxyHost:Ljava/lang/String;
    .end local v15           #proxyPort:I
    .end local v17           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .end local v18           #version:I
    :catch_1
    move-exception v19

    move-object v8, v9

    .line 876
    .end local v9           #in:Ljava/io/DataInputStream;
    .restart local v8       #in:Ljava/io/DataInputStream;
    :goto_5
    if-eqz v8, :cond_1

    .line 878
    :try_start_9
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    .line 879
    :catch_2
    move-exception v19

    goto/16 :goto_1

    .line 789
    .end local v8           #in:Ljava/io/DataInputStream;
    .restart local v5       #exclusionList:Ljava/lang/String;
    .restart local v7       #id:I
    .restart local v9       #in:Ljava/io/DataInputStream;
    .restart local v10       #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .restart local v11       #key:Ljava/lang/String;
    .restart local v13       #linkProperties:Landroid/net/LinkProperties;
    .restart local v14       #proxyHost:Ljava/lang/String;
    .restart local v15       #proxyPort:I
    .restart local v17       #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .restart local v18       #version:I
    :cond_6
    :try_start_a
    const-string v19, "gateway"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 790
    const/4 v3, 0x0

    .line 791
    .local v3, dest:Landroid/net/LinkAddress;
    const/4 v6, 0x0

    .line 792
    .local v6, gateway:Ljava/net/InetAddress;
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 794
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 805
    :cond_7
    :goto_6
    new-instance v19, Landroid/net/RouteInfo;

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v6}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_4

    .line 873
    .end local v3           #dest:Landroid/net/LinkAddress;
    .end local v5           #exclusionList:Ljava/lang/String;
    .end local v6           #gateway:Ljava/net/InetAddress;
    .end local v7           #id:I
    .end local v10           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #linkProperties:Landroid/net/LinkProperties;
    .end local v14           #proxyHost:Ljava/lang/String;
    .end local v15           #proxyPort:I
    .end local v17           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .end local v18           #version:I
    :catch_3
    move-exception v4

    move-object v8, v9

    .line 874
    .end local v9           #in:Ljava/io/DataInputStream;
    .local v4, e:Ljava/io/IOException;
    .restart local v8       #in:Ljava/io/DataInputStream;
    :goto_7
    :try_start_b
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error parsing configuration"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 876
    if-eqz v8, :cond_1

    .line 878
    :try_start_c
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_1

    .line 796
    .end local v4           #e:Ljava/io/IOException;
    .end local v8           #in:Ljava/io/DataInputStream;
    .restart local v3       #dest:Landroid/net/LinkAddress;
    .restart local v5       #exclusionList:Ljava/lang/String;
    .restart local v6       #gateway:Ljava/net/InetAddress;
    .restart local v7       #id:I
    .restart local v9       #in:Ljava/io/DataInputStream;
    .restart local v10       #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .restart local v11       #key:Ljava/lang/String;
    .restart local v13       #linkProperties:Landroid/net/LinkProperties;
    .restart local v14       #proxyHost:Ljava/lang/String;
    .restart local v15       #proxyPort:I
    .restart local v17       #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .restart local v18       #version:I
    :cond_8
    :try_start_d
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 797
    new-instance v3, Landroid/net/LinkAddress;

    .end local v3           #dest:Landroid/net/LinkAddress;
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v19

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v3, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 801
    .restart local v3       #dest:Landroid/net/LinkAddress;
    :cond_9
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 802
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    goto :goto_6

    .line 806
    .end local v3           #dest:Landroid/net/LinkAddress;
    .end local v6           #gateway:Ljava/net/InetAddress;
    :cond_a
    const-string v19, "dns"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 807
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_4

    .line 876
    .end local v5           #exclusionList:Ljava/lang/String;
    .end local v7           #id:I
    .end local v10           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #linkProperties:Landroid/net/LinkProperties;
    .end local v14           #proxyHost:Ljava/lang/String;
    .end local v15           #proxyPort:I
    .end local v17           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .end local v18           #version:I
    :catchall_0
    move-exception v19

    move-object v8, v9

    .end local v9           #in:Ljava/io/DataInputStream;
    .restart local v8       #in:Ljava/io/DataInputStream;
    :goto_8
    if-eqz v8, :cond_b

    .line 878
    :try_start_e
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    .line 876
    :cond_b
    :goto_9
    throw v19

    .line 809
    .end local v8           #in:Ljava/io/DataInputStream;
    .restart local v5       #exclusionList:Ljava/lang/String;
    .restart local v7       #id:I
    .restart local v9       #in:Ljava/io/DataInputStream;
    .restart local v10       #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .restart local v11       #key:Ljava/lang/String;
    .restart local v13       #linkProperties:Landroid/net/LinkProperties;
    .restart local v14       #proxyHost:Ljava/lang/String;
    .restart local v15       #proxyPort:I
    .restart local v17       #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .restart local v18       #version:I
    :cond_c
    :try_start_f
    const-string/jumbo v19, "proxySettings"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 810
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-result-object v17

    goto/16 :goto_4

    .line 811
    :cond_d
    const-string/jumbo v19, "proxyHost"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 812
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_4

    .line 813
    :cond_e
    const-string/jumbo v19, "proxyPort"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 814
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    goto/16 :goto_4

    .line 815
    :cond_f
    const-string v19, "exclusionList"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 816
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    .line 820
    :cond_10
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Ignore unknown key "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "while reading"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/EOFException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    goto/16 :goto_4

    .line 835
    .restart local v2       #config:Landroid/net/wifi/WifiConfiguration;
    :cond_11
    :try_start_10
    iput-object v13, v2, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 836
    sget-object v19, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment:[I

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->ordinal()I

    move-result v21

    aget v19, v19, v21

    packed-switch v19, :pswitch_data_0

    .line 845
    const-string v19, "Ignore invalid ip assignment while reading"

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 849
    :goto_a
    :pswitch_1
    sget-object v19, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings:[I

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->ordinal()I

    move-result v21

    aget v19, v19, v21

    packed-switch v19, :pswitch_data_1

    .line 863
    const-string v19, "Ignore invalid proxy settings while reading"

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 867
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_1
    move-exception v19

    monitor-exit v20
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    throw v19
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3

    .line 839
    .restart local v2       #config:Landroid/net/wifi/WifiConfiguration;
    :pswitch_2
    :try_start_12
    iput-object v10, v2, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_a

    .line 851
    :pswitch_3
    move-object/from16 v0, v17

    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 852
    new-instance v16, Landroid/net/ProxyProperties;

    move-object/from16 v0, v16

    invoke-direct {v0, v14, v15, v5}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 854
    .local v16, proxyProperties:Landroid/net/ProxyProperties;
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    goto/16 :goto_2

    .line 857
    .end local v16           #proxyProperties:Landroid/net/ProxyProperties;
    :pswitch_4
    move-object/from16 v0, v17

    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_2

    .line 869
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_12
    :try_start_13
    const-string v19, "Missing id while parsing configuration"

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3

    goto/16 :goto_3

    .line 879
    .end local v5           #exclusionList:Ljava/lang/String;
    .end local v7           #id:I
    .end local v9           #in:Ljava/io/DataInputStream;
    .end local v10           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #linkProperties:Landroid/net/LinkProperties;
    .end local v14           #proxyHost:Ljava/lang/String;
    .end local v15           #proxyPort:I
    .end local v17           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .end local v18           #version:I
    .restart local v8       #in:Ljava/io/DataInputStream;
    :catch_4
    move-exception v20

    goto/16 :goto_9

    .end local v8           #in:Ljava/io/DataInputStream;
    .restart local v9       #in:Ljava/io/DataInputStream;
    .restart local v18       #version:I
    :catch_5
    move-exception v19

    goto/16 :goto_0

    .line 876
    .end local v9           #in:Ljava/io/DataInputStream;
    .end local v18           #version:I
    .restart local v8       #in:Ljava/io/DataInputStream;
    :catchall_2
    move-exception v19

    goto/16 :goto_8

    .line 873
    :catch_6
    move-exception v4

    goto/16 :goto_7

    .line 872
    :catch_7
    move-exception v19

    goto/16 :goto_5

    .line 836
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 849
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private static readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V
    .locals 14
    .parameter "config"

    .prologue
    const/4 v10, 0x0

    const/4 v13, -0x1

    const/4 v12, 0x0

    .line 1237
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1238
    .local v6, netId:I
    if-gez v6, :cond_1

    .line 1380
    :cond_0
    return-void

    .line 1248
    :cond_1
    const-string/jumbo v11, "ssid"

    invoke-static {v6, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1249
    .local v9, value:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1250
    iput-object v9, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1255
    :goto_0
    const-string v11, "bssid"

    invoke-static {v6, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1256
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 1257
    iput-object v9, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1262
    :goto_1
    const-string/jumbo v11, "priority"

    invoke-static {v6, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1263
    iput v13, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1264
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1266
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Landroid/net/wifi/WifiConfiguration;->priority:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1271
    :cond_2
    :goto_2
    const-string/jumbo v11, "scan_ssid"

    invoke-static {v6, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1272
    iput-boolean v10, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1273
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1275
    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_3

    const/4 v10, 0x1

    :cond_3
    iput-boolean v10, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1280
    :cond_4
    :goto_3
    const-string/jumbo v10, "wep_tx_keyidx"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1281
    iput v13, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 1282
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1284
    :try_start_2
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1289
    :cond_5
    :goto_4
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    const/4 v10, 0x4

    if-ge v2, v10, :cond_9

    .line 1290
    sget-object v10, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1292
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 1293
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v9, v10, v2

    .line 1289
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1252
    .end local v2           #i:I
    :cond_6
    iput-object v12, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 1259
    :cond_7
    iput-object v12, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto :goto_1

    .line 1295
    .restart local v2       #i:I
    :cond_8
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v12, v10, v2

    goto :goto_6

    .line 1299
    :cond_9
    const-string/jumbo v10, "psk"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1300
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 1301
    iput-object v9, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1306
    :goto_7
    iget v10, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string/jumbo v11, "proto"

    invoke-static {v10, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1308
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 1309
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1310
    .local v8, vals:[Ljava/lang/String;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v5, :cond_c

    aget-object v7, v0, v3

    .line 1311
    .local v7, val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1313
    .local v4, index:I
    if-ltz v4, :cond_a

    .line 1314
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1310
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1303
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_b
    iput-object v12, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_7

    .line 1319
    :cond_c
    iget v10, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string/jumbo v11, "key_mgmt"

    invoke-static {v10, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1321
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 1322
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1323
    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_9
    if-ge v3, v5, :cond_e

    aget-object v7, v0, v3

    .line 1324
    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1326
    .restart local v4       #index:I
    if-ltz v4, :cond_d

    .line 1327
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1323
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1332
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_e
    iget v10, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v11, "auth_alg"

    invoke-static {v10, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1334
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 1335
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1336
    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_a
    if-ge v3, v5, :cond_10

    aget-object v7, v0, v3

    .line 1337
    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1339
    .restart local v4       #index:I
    if-ltz v4, :cond_f

    .line 1340
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1336
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1345
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_10
    iget v10, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string/jumbo v11, "pairwise"

    invoke-static {v10, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1347
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 1348
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1349
    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_b
    if-ge v3, v5, :cond_12

    aget-object v7, v0, v3

    .line 1350
    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1352
    .restart local v4       #index:I
    if-ltz v4, :cond_11

    .line 1353
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1349
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1358
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_12
    iget v10, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v11, "group"

    invoke-static {v10, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1360
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_14

    .line 1361
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1362
    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_c
    if-ge v3, v5, :cond_14

    aget-object v7, v0, v3

    .line 1363
    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1365
    .restart local v4       #index:I
    if-ltz v4, :cond_13

    .line 1366
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1362
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1372
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_14
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .local v0, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_d
    if-ge v3, v5, :cond_0

    aget-object v1, v0, v3

    .line 1373
    .local v1, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1375
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_16

    .line 1376
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eq v1, v10, :cond_15

    invoke-static {v9}, Landroid/net/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1377
    :cond_15
    invoke-virtual {v1, v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 1372
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1285
    .end local v0           #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v1           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v2           #i:I
    .end local v3           #i$:I
    .end local v5           #len$:I
    :catch_0
    move-exception v10

    goto/16 :goto_4

    .line 1276
    :catch_1
    move-exception v10

    goto/16 :goto_3

    .line 1267
    :catch_2
    move-exception v11

    goto/16 :goto_2
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 1383
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const-string v0, ""

    .line 1384
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static removeNetwork(I)Z
    .locals 5
    .parameter "netId"

    .prologue
    .line 324
    invoke-static {p0}, Landroid/net/wifi/WifiNative;->removeNetworkCommand(I)Z

    move-result v1

    .line 325
    .local v1, ret:Z
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v3

    .line 326
    if-eqz v1, :cond_0

    .line 327
    :try_start_0
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 328
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 329
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sNetworkIds:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 335
    return v1

    .line 333
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static saveConfig()Z
    .locals 1

    .prologue
    .line 397
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z

    move-result v0

    return v0
.end method

.method static saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;
    .locals 6
    .parameter "config"

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 264
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v4, v5, :cond_1

    const/4 v1, 0x1

    .line 265
    .local v1, newNetwork:Z
    :goto_0
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v2

    .line 266
    .local v2, result:Landroid/net/wifi/NetworkUpdateResult;
    invoke-virtual {v2}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v0

    .line 268
    .local v0, netId:I
    if-eqz v1, :cond_0

    if-eq v0, v5, :cond_0

    .line 269
    invoke-static {v0, v3}, Landroid/net/wifi/WifiNative;->enableNetworkCommand(IZ)Z

    .line 270
    sget-object v4, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v4

    .line 271
    :try_start_0
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    const/4 v5, 0x2

    iput v5, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 272
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :cond_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z

    .line 275
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 276
    return-object v2

    .end local v0           #netId:I
    .end local v1           #newNetwork:Z
    .end local v2           #result:Landroid/net/wifi/NetworkUpdateResult;
    :cond_1
    move v1, v3

    .line 264
    goto :goto_0

    .line 272
    .restart local v0       #netId:I
    .restart local v1       #newNetwork:Z
    .restart local v2       #result:Landroid/net/wifi/NetworkUpdateResult;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method static selectNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 4
    .parameter "config"

    .prologue
    const/4 v2, -0x1

    .line 205
    if-eqz p0, :cond_1

    .line 206
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v1

    .line 207
    .local v1, result:Landroid/net/wifi/NetworkUpdateResult;
    invoke-virtual {v1}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v0

    .line 208
    .local v0, netId:I
    if-eq v0, v2, :cond_0

    .line 209
    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->selectNetwork(I)V

    .line 215
    .end local v0           #netId:I
    .end local v1           #result:Landroid/net/wifi/NetworkUpdateResult;
    :goto_0
    return v0

    .line 211
    .restart local v0       #netId:I
    .restart local v1       #result:Landroid/net/wifi/NetworkUpdateResult;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #netId:I
    .end local v1           #result:Landroid/net/wifi/NetworkUpdateResult;
    :cond_1
    move v0, v2

    .line 215
    goto :goto_0
.end method

.method static selectNetwork(I)V
    .locals 6
    .parameter "netId"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 231
    sget v2, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    if-eq v2, v4, :cond_0

    sget v2, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    const v3, 0xf4240

    if-le v2, v3, :cond_3

    .line 232
    :cond_0
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v3

    .line 233
    :try_start_0
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 234
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, v4, :cond_1

    .line 235
    const/4 v2, 0x0

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 236
    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    goto :goto_0

    .line 239
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    sput v5, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    .line 244
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 245
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    iput p0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 246
    sget v2, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 248
    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    .line 249
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z

    .line 252
    const/4 v2, 0x1

    invoke-static {p0, v2}, Landroid/net/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 256
    return-void
.end method

.method private static sendConfiguredNetworksChangedBroadcast()V
    .locals 2

    .prologue
    .line 568
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 569
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 570
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 571
    return-void
.end method

.method static setIpConfiguration(ILandroid/net/DhcpInfoInternal;)V
    .locals 5
    .parameter "netId"
    .parameter "dhcpInfo"

    .prologue
    .line 513
    invoke-virtual {p1}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 515
    .local v1, linkProperties:Landroid/net/LinkProperties;
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v3

    .line 516
    :try_start_0
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 517
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    .line 519
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v2, :cond_0

    .line 520
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 522
    :cond_0
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 524
    :cond_1
    monitor-exit v3

    .line 525
    return-void

    .line 524
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 2
    .parameter "config"

    .prologue
    .line 440
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 441
    .local v0, result:Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/wifi/WifiNative;->startWpsPbcCommand(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 444
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 449
    :goto_0
    return-object v0

    .line 446
    :cond_0
    const-string v1, "Failed to start WPS push button configuration"

    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 447
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method static startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 3
    .parameter "config"

    .prologue
    .line 405
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 406
    .local v0, result:Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/net/wifi/WifiNative;->startWpsWithPinFromAccessPointCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 409
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 414
    :goto_0
    return-object v0

    .line 411
    :cond_0
    const-string v1, "Failed to start WPS pin method configuration"

    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 412
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method static startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 2
    .parameter "config"

    .prologue
    .line 423
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 424
    .local v0, result:Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/wifi/WifiNative;->startWpsWithPinFromDeviceCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    .line 426
    iget-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 427
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 428
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 433
    :goto_0
    return-object v0

    .line 430
    :cond_0
    const-string v1, "Failed to start WPS pin method configuration"

    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 431
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method static stopWps()Landroid/net/wifi/WpsResult;
    .locals 3

    .prologue
    .line 457
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 458
    .local v0, result:Landroid/net/wifi/WpsResult;
    invoke-static {}, Landroid/net/wifi/WifiNative;->cancelWpsCommand()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 464
    :goto_0
    return-object v0

    .line 461
    :cond_0
    const-string v1, "WifiConfigStore"

    const-string v2, "Failed to stop wps"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method static updateIpAndProxyFromWpsConfig(ILandroid/net/wifi/WpsInfo;)V
    .locals 4
    .parameter "netId"
    .parameter "wpsConfig"

    .prologue
    .line 618
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v2

    .line 619
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 620
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 621
    iget-object v1, p1, Landroid/net/wifi/WpsInfo;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 622
    iget-object v1, p1, Landroid/net/wifi/WpsInfo;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 623
    iget-object v1, p1, Landroid/net/wifi/WpsInfo;->linkProperties:Landroid/net/LinkProperties;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 624
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    .line 626
    :cond_0
    monitor-exit v2

    .line 627
    return-void

    .line 626
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static writeIpAndProxyConfigurations()V
    .locals 18

    .prologue
    .line 649
    const/4 v10, 0x0

    .line 651
    .local v10, out:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v11, Ljava/io/DataOutputStream;

    new-instance v15, Ljava/io/BufferedOutputStream;

    new-instance v16, Ljava/io/FileOutputStream;

    sget-object v17, Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-direct/range {v16 .. v17}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v15 .. v16}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v11, v15}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 654
    .end local v10           #out:Ljava/io/DataOutputStream;
    .local v11, out:Ljava/io/DataOutputStream;
    const/4 v15, 0x2

    :try_start_1
    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 656
    sget-object v16, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 657
    :try_start_2
    sget-object v15, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 658
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v14, 0x0

    .line 661
    .local v14, writeToFile:Z
    :try_start_3
    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 662
    .local v9, linkProperties:Landroid/net/LinkProperties;
    sget-object v15, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment:[I

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->ordinal()I

    move-result v17

    aget v15, v15, v17

    packed-switch v15, :pswitch_data_0

    .line 703
    const-string v15, "Ignore invalid ip assignment while writing"

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 707
    :goto_1
    :pswitch_0
    sget-object v15, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings:[I

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->ordinal()I

    move-result v17

    aget v15, v15, v17

    packed-switch v15, :pswitch_data_1

    .line 730
    const-string v15, "Ignore invalid proxy settings while writing"

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 733
    :goto_2
    :pswitch_1
    if-eqz v14, :cond_0

    .line 734
    const-string/jumbo v15, "id"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 735
    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 740
    .end local v9           #linkProperties:Landroid/net/LinkProperties;
    :cond_0
    :goto_3
    :try_start_4
    const-string v15, "eos"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 742
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v14           #writeToFile:Z
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 744
    :catch_0
    move-exception v3

    move-object v10, v11

    .line 745
    .end local v11           #out:Ljava/io/DataOutputStream;
    .local v3, e:Ljava/io/IOException;
    .restart local v10       #out:Ljava/io/DataOutputStream;
    :goto_4
    :try_start_6
    const-string v15, "Error writing data file"

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 747
    if-eqz v10, :cond_1

    .line 749
    :try_start_7
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 753
    .end local v3           #e:Ljava/io/IOException;
    :cond_1
    :goto_5
    return-void

    .line 664
    .end local v10           #out:Ljava/io/DataOutputStream;
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v9       #linkProperties:Landroid/net/LinkProperties;
    .restart local v11       #out:Ljava/io/DataOutputStream;
    .restart local v14       #writeToFile:Z
    :pswitch_2
    :try_start_8
    const-string/jumbo v15, "ipAssignment"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 665
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkAddress;

    .line 667
    .local v8, linkAddr:Landroid/net/LinkAddress;
    const-string/jumbo v15, "linkAddress"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 668
    invoke-virtual {v8}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v8}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_6

    .line 737
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #linkAddr:Landroid/net/LinkAddress;
    .end local v9           #linkProperties:Landroid/net/LinkProperties;
    :catch_1
    move-exception v3

    .line 738
    .local v3, e:Ljava/lang/NullPointerException;
    :try_start_9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failure in writing "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 671
    .end local v3           #e:Ljava/lang/NullPointerException;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v9       #linkProperties:Landroid/net/LinkProperties;
    :cond_2
    :try_start_a
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/RouteInfo;

    .line 672
    .local v13, route:Landroid/net/RouteInfo;
    const-string v15, "gateway"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v13}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v2

    .line 674
    .local v2, dest:Landroid/net/LinkAddress;
    if-eqz v2, :cond_3

    .line 675
    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 676
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 677
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 681
    :goto_8
    invoke-virtual {v13}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 682
    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 683
    invoke-virtual {v13}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_7

    .line 679
    :cond_3
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_8

    .line 685
    :cond_4
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_7

    .line 688
    .end local v2           #dest:Landroid/net/LinkAddress;
    .end local v13           #route:Landroid/net/RouteInfo;
    :cond_5
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    .line 689
    .local v7, inetAddr:Ljava/net/InetAddress;
    const-string v15, "dns"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 690
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_9

    .line 692
    .end local v7           #inetAddr:Ljava/net/InetAddress;
    :cond_6
    const/4 v14, 0x1

    .line 693
    goto/16 :goto_1

    .line 695
    .end local v6           #i$:Ljava/util/Iterator;
    :pswitch_3
    const-string/jumbo v15, "ipAssignment"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 696
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 697
    const/4 v14, 0x1

    .line 698
    goto/16 :goto_1

    .line 709
    :pswitch_4
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v12

    .line 710
    .local v12, proxyProperties:Landroid/net/ProxyProperties;
    invoke-virtual {v12}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v4

    .line 711
    .local v4, exclusionList:Ljava/lang/String;
    const-string/jumbo v15, "proxySettings"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 712
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 713
    const-string/jumbo v15, "proxyHost"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 714
    invoke-virtual {v12}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 715
    const-string/jumbo v15, "proxyPort"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 716
    invoke-virtual {v12}, Landroid/net/ProxyProperties;->getPort()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 717
    const-string v15, "exclusionList"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 718
    invoke-virtual {v11, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 719
    const/4 v14, 0x1

    .line 720
    goto/16 :goto_2

    .line 722
    .end local v4           #exclusionList:Ljava/lang/String;
    .end local v12           #proxyProperties:Landroid/net/ProxyProperties;
    :pswitch_5
    const-string/jumbo v15, "proxySettings"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 723
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_1

    .line 724
    const/4 v14, 0x1

    .line 725
    goto/16 :goto_2

    .line 742
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v9           #linkProperties:Landroid/net/LinkProperties;
    .end local v14           #writeToFile:Z
    :cond_7
    :try_start_b
    monitor-exit v16
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 747
    if-eqz v11, :cond_8

    .line 749
    :try_start_c
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    :cond_8
    :goto_a
    move-object v10, v11

    .line 752
    .end local v11           #out:Ljava/io/DataOutputStream;
    .restart local v10       #out:Ljava/io/DataOutputStream;
    goto/16 :goto_5

    .line 747
    :catchall_1
    move-exception v15

    :goto_b
    if-eqz v10, :cond_9

    .line 749
    :try_start_d
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 747
    :cond_9
    :goto_c
    throw v15

    .line 750
    :catch_2
    move-exception v16

    goto :goto_c

    .local v3, e:Ljava/io/IOException;
    :catch_3
    move-exception v15

    goto/16 :goto_5

    .end local v3           #e:Ljava/io/IOException;
    .end local v10           #out:Ljava/io/DataOutputStream;
    .restart local v11       #out:Ljava/io/DataOutputStream;
    :catch_4
    move-exception v15

    goto :goto_a

    .line 747
    :catchall_2
    move-exception v15

    move-object v10, v11

    .end local v11           #out:Ljava/io/DataOutputStream;
    .restart local v10       #out:Ljava/io/DataOutputStream;
    goto :goto_b

    .line 744
    :catch_5
    move-exception v3

    goto/16 :goto_4

    .line 662
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 707
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method private static writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;
    .locals 17
    .parameter "currentConfig"
    .parameter "newConfig"

    .prologue
    .line 1108
    const/4 v6, 0x0

    .line 1109
    .local v6, ipChanged:Z
    const/4 v13, 0x0

    .line 1110
    .local v13, proxyChanged:Z
    new-instance v8, Landroid/net/LinkProperties;

    invoke-direct {v8}, Landroid/net/LinkProperties;-><init>()V

    .line 1112
    .local v8, linkProperties:Landroid/net/LinkProperties;
    sget-object v15, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment:[I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_0

    .line 1147
    const-string v15, "Ignore invalid ip assignment during write"

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1151
    :cond_0
    :goto_0
    :pswitch_0
    sget-object v15, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings:[I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_1

    .line 1171
    const-string v15, "Ignore invalid proxy configuration during write"

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1175
    :cond_1
    :goto_1
    :pswitch_1
    if-nez v6, :cond_f

    .line 1176
    move-object/from16 v0, p0

    invoke-static {v8, v0}, Landroid/net/wifi/WifiConfigStore;->addIpSettingsFromConfig(Landroid/net/LinkProperties;Landroid/net/wifi/WifiConfiguration;)V

    .line 1191
    :goto_2
    if-nez v13, :cond_10

    .line 1192
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 1208
    :cond_2
    :goto_3
    if-nez v6, :cond_3

    if-eqz v13, :cond_4

    .line 1209
    :cond_3
    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 1210
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    .line 1211
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 1213
    :cond_4
    new-instance v15, Landroid/net/wifi/NetworkUpdateResult;

    invoke-direct {v15, v6, v13}, Landroid/net/wifi/NetworkUpdateResult;-><init>(ZZ)V

    return-object v15

    .line 1114
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v3

    .line 1116
    .local v3, currentLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v11

    .line 1118
    .local v11, newLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v1

    .line 1119
    .local v1, currentDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v9

    .line 1120
    .local v9, newDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v4

    .line 1121
    .local v4, currentRoutes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v12

    .line 1123
    .local v12, newRoutes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v15

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    invoke-interface {v3, v11}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v15

    if-nez v15, :cond_9

    :cond_5
    const/4 v7, 0x1

    .line 1126
    .local v7, linkAddressesDiffer:Z
    :goto_4
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v15

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    invoke-interface {v1, v9}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v15

    if-nez v15, :cond_a

    :cond_6
    const/4 v5, 0x1

    .line 1128
    .local v5, dnsesDiffer:Z
    :goto_5
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v15

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    invoke-interface {v4, v12}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v15

    if-nez v15, :cond_b

    :cond_7
    const/4 v14, 0x1

    .line 1131
    .local v14, routesDiffer:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_8

    if-nez v7, :cond_8

    if-nez v5, :cond_8

    if-eqz v14, :cond_0

    .line 1135
    :cond_8
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1123
    .end local v5           #dnsesDiffer:Z
    .end local v7           #linkAddressesDiffer:Z
    .end local v14           #routesDiffer:Z
    :cond_9
    const/4 v7, 0x0

    goto :goto_4

    .line 1126
    .restart local v7       #linkAddressesDiffer:Z
    :cond_a
    const/4 v5, 0x0

    goto :goto_5

    .line 1128
    .restart local v5       #dnsesDiffer:Z
    :cond_b
    const/4 v14, 0x0

    goto :goto_6

    .line 1139
    .end local v1           #currentDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v3           #currentLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    .end local v4           #currentRoutes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    .end local v5           #dnsesDiffer:Z
    .end local v7           #linkAddressesDiffer:Z
    .end local v9           #newDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v11           #newLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    .end local v12           #newRoutes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 1140
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1153
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v10

    .line 1154
    .local v10, newHttpProxy:Landroid/net/ProxyProperties;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    .line 1156
    .local v2, currentHttpProxy:Landroid/net/ProxyProperties;
    if-eqz v10, :cond_d

    .line 1157
    invoke-virtual {v10, v2}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    const/4 v13, 0x1

    :goto_7
    goto/16 :goto_1

    :cond_c
    const/4 v13, 0x0

    goto :goto_7

    .line 1159
    :cond_d
    if-eqz v2, :cond_e

    const/4 v13, 0x1

    .line 1161
    :goto_8
    goto/16 :goto_1

    .line 1159
    :cond_e
    const/4 v13, 0x0

    goto :goto_8

    .line 1163
    .end local v2           #currentHttpProxy:Landroid/net/ProxyProperties;
    .end local v10           #newHttpProxy:Landroid/net/ProxyProperties;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 1164
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1178
    :cond_f
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 1179
    move-object/from16 v0, p1

    invoke-static {v8, v0}, Landroid/net/wifi/WifiConfigStore;->addIpSettingsFromConfig(Landroid/net/LinkProperties;Landroid/net/wifi/WifiConfiguration;)V

    .line 1185
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IP config changed linkProperties: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1194
    :cond_10
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 1195
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 1200
    const-string/jumbo v15, "proxy changed"

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 1203
    invoke-virtual {v8}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v15

    if-eqz v15, :cond_2

    .line 1204
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " proxyProperties: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/ProxyProperties;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 1151
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method
