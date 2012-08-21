.class Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDataGatewayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;


# direct methods
.method constructor <init>(Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService$1;->this$0:Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 151
    const-string v2, "BluetoothDataGatewayService"

    const-string v3, "#### DataGateway Service Received message  ####"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 155
    .local v1, state:I
    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 156
    const-string v2, "BluetoothDataGatewayService"

    const-string v3, "#### Enable Data Gateway Server ####"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v2, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService$1;->this$0:Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;

    invoke-virtual {v2}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->dataGatewayEnable()V

    .line 161
    .end local v1           #state:I
    :cond_0
    return-void
.end method
