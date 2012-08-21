.class Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothHIDService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/hid/BluetoothHIDService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/high16 v8, -0x8000

    const/4 v7, 0x0

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 85
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    const-string v4, "BluetoothHIDService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received intent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", device = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    const-string v4, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 90
    .local v3, state:I
    packed-switch v3, :pswitch_data_0

    .line 127
    .end local v3           #state:I
    :cond_0
    :goto_0
    return-void

    .line 92
    .restart local v3       #state:I
    :pswitch_0
    const-string v4, "BluetoothHIDService"

    const-string v5, "    ...BT state on"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v4, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    #calls: Lcom/broadcom/bt/service/hid/BluetoothHIDService;->onBluetoothEnable()V
    invoke-static {v4}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->access$000(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)V

    goto :goto_0

    .line 96
    :pswitch_1
    const-string v4, "BluetoothHIDService"

    const-string v5, "    ...BT state off"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v4, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    #calls: Lcom/broadcom/bt/service/hid/BluetoothHIDService;->onBluetoothDisable()V
    invoke-static {v4}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->access$100(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)V

    goto :goto_0

    .line 100
    .end local v3           #state:I
    :cond_1
    const-string v4, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    const-string v4, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 103
    .local v1, bondState:I
    const-string v4, "BluetoothHIDService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    ...bondState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 112
    :pswitch_2
    iget-object v4, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    invoke-virtual {v4, v2, v7}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 113
    iget-object v4, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    #getter for: Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->access$200(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 114
    iget-object v4, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    #getter for: Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->access$200(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 106
    :pswitch_3
    iget-object v4, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    const/16 v5, 0x64

    invoke-virtual {v4, v2, v5}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 109
    :pswitch_4
    iget-object v4, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    invoke-virtual {v4, v2, v7}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 118
    .end local v1           #bondState:I
    :cond_2
    const-string v4, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 119
    const-string v4, "BluetoothHIDService"

    const-string v5, "    ...ACL disconnected"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    #getter for: Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->access$200(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    #getter for: Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->access$200(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 122
    iget-object v4, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    invoke-virtual {v4, v2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 123
    .restart local v3       #state:I
    iget-object v4, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    const/4 v5, 0x0

    #calls: Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v4, v2, v3, v5}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->access$300(Lcom/broadcom/bt/service/hid/BluetoothHIDService;Landroid/bluetooth/BluetoothDevice;II)V

    .line 125
    .end local v3           #state:I
    :cond_3
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 90
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 104
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
