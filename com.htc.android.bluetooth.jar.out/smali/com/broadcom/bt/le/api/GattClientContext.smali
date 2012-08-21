.class public Lcom/broadcom/bt/le/api/GattClientContext;
.super Ljava/lang/Object;
.source "GattClientContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    }
.end annotation


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field public mClientAppId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

.field mClientCallback:Lcom/broadcom/bt/le/api/IBleClientCallback;

.field public mClientIf:B

.field mConnID:I

.field mPeerAddress:Ljava/lang/String;

.field public mServiceDataContexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "GattClientContext"

    sput-object v0, Lcom/broadcom/bt/le/api/GattClientContext;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/le/api/IBleClientCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/le/api/GattClientContext;->mClientCallback:Lcom/broadcom/bt/le/api/IBleClientCallback;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/le/api/GattClientContext;->mServiceDataContexts:Ljava/util/ArrayList;

    .line 49
    iput-object p1, p0, Lcom/broadcom/bt/le/api/GattClientContext;->mClientCallback:Lcom/broadcom/bt/le/api/IBleClientCallback;

    .line 50
    return-void
.end method


# virtual methods
.method public getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/broadcom/bt/le/api/GattClientContext;->mClientCallback:Lcom/broadcom/bt/le/api/IBleClientCallback;

    return-object v0
.end method

.method public getConnID()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/broadcom/bt/le/api/GattClientContext;->mConnID:I

    return v0
.end method

.method public getPeerAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/broadcom/bt/le/api/GattClientContext;->mPeerAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    .locals 5
    .parameter "svcID"
    .parameter "fCreate"

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 76
    .local v1, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    sget-object v2, Lcom/broadcom/bt/le/api/GattClientContext;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getServiceDataContext svcID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", instid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/le/api/GattClientContext;->mServiceDataContexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 79
    sget-object v3, Lcom/broadcom/bt/le/api/GattClientContext;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getServiceDataContext context "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/broadcom/bt/le/api/GattClientContext;->mServiceDataContexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    iget-object v2, v2, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->svcUuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/broadcom/bt/le/api/GattClientContext;->mServiceDataContexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    iget-object v2, v2, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->svcUuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    sget-object v2, Lcom/broadcom/bt/le/api/GattClientContext;->TAG:Ljava/lang/String;

    const-string v3, "getServiceDataContext: Found context"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v2, p0, Lcom/broadcom/bt/le/api/GattClientContext;->mServiceDataContexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    check-cast v1, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    .line 87
    .restart local v1       #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :cond_0
    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    .line 88
    sget-object v2, Lcom/broadcom/bt/le/api/GattClientContext;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating new context for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v1, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    .end local v1           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    invoke-direct {v1, p0}, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;-><init>(Lcom/broadcom/bt/le/api/GattClientContext;)V

    .line 90
    .restart local v1       #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    iput-object p1, v1, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->svcUuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 91
    iget-object v2, p0, Lcom/broadcom/bt/le/api/GattClientContext;->mServiceDataContexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_1
    return-object v1

    .line 78
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public setConnID(I)V
    .locals 0
    .parameter "connID"

    .prologue
    .line 61
    iput p1, p0, Lcom/broadcom/bt/le/api/GattClientContext;->mConnID:I

    .line 62
    return-void
.end method

.method public setPeerAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "sPeerAddress"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/broadcom/bt/le/api/GattClientContext;->mPeerAddress:Ljava/lang/String;

    .line 54
    return-void
.end method
