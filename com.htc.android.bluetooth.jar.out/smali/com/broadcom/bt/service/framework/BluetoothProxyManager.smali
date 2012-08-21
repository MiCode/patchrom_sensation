.class public final Lcom/broadcom/bt/service/framework/BluetoothProxyManager;
.super Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;
.source "BluetoothProxyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothProxyManager"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;-><init>()V

    return-void
.end method

.method public static getProxy(Ljava/lang/String;Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .locals 4
    .parameter "name"
    .parameter "ctx"
    .parameter "cb"

    .prologue
    const/4 v0, 0x0

    .line 82
    if-nez p0, :cond_0

    .line 83
    const-string v1, "BluetoothProxyManager"

    const-string v2, "Unable to get service proxy. Invalid name"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return v0

    .line 88
    :cond_0
    invoke-static {p1, p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    const-string v1, "BluetoothProxyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get service proxy for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Service is not enabled..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    :cond_1
    const-string v1, "bluetooth_bpp_service"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    invoke-static {p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    move-result v0

    goto :goto_0

    .line 95
    :cond_2
    const-string v1, "bluetooth_dun"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    invoke-static {p1, p2}, Lcom/broadcom/bt/service/dun/BluetoothDUN;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    move-result v0

    goto :goto_0

    .line 97
    :cond_3
    const-string v1, "bluetooth_ftp"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 98
    invoke-static {p1, p2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    move-result v0

    goto :goto_0

    .line 99
    :cond_4
    const-string v1, "bluetooth_fm_receiver_service"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 100
    invoke-static {p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    move-result v0

    goto :goto_0

    .line 101
    :cond_5
    const-string v1, "bluetooth_gatt"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 102
    invoke-static {p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    move-result v0

    goto :goto_0

    .line 103
    :cond_6
    const-string v1, "bluetooth_opp_service"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 104
    invoke-static {p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    move-result v0

    goto :goto_0

    .line 105
    :cond_7
    const-string v1, "bluetooth_pbap"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 106
    invoke-static {p1, p2}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    move-result v0

    goto :goto_0

    .line 107
    :cond_8
    const-string v1, "bluetooth_sap"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 108
    invoke-static {p1, p2}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    move-result v0

    goto/16 :goto_0

    .line 109
    :cond_9
    const-string v1, "bluetooth_test"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 110
    invoke-static {p1, p2}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    move-result v0

    goto/16 :goto_0

    .line 112
    :cond_a
    const-string v1, "BluetoothProxyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get service proxy for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getSystemProxy(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method
