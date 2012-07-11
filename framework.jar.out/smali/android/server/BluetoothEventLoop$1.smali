.class Landroid/server/BluetoothEventLoop$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothEventLoop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothEventLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothEventLoop;


# direct methods
.method constructor <init>(Landroid/server/BluetoothEventLoop;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Landroid/server/BluetoothEventLoop$1;->this$0:Landroid/server/BluetoothEventLoop;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    const-string/jumbo v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, state:Ljava/lang/String;
    const-string v2, "BluetoothEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Phone state change to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v2, "RINGING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    iget-object v2, p0, Landroid/server/BluetoothEventLoop$1;->this$0:Landroid/server/BluetoothEventLoop;

    const/4 v3, 0x1

    #setter for: Landroid/server/BluetoothEventLoop;->isRinging:Z
    invoke-static {v2, v3}, Landroid/server/BluetoothEventLoop;->access$002(Landroid/server/BluetoothEventLoop;Z)Z

    .line 99
    .end local v1           #state:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 96
    .restart local v1       #state:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Landroid/server/BluetoothEventLoop$1;->this$0:Landroid/server/BluetoothEventLoop;

    const/4 v3, 0x0

    #setter for: Landroid/server/BluetoothEventLoop;->isRinging:Z
    invoke-static {v2, v3}, Landroid/server/BluetoothEventLoop;->access$002(Landroid/server/BluetoothEventLoop;Z)Z

    goto :goto_0
.end method
