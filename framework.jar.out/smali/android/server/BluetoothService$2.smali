.class Landroid/server/BluetoothService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .locals 0
    .parameter

    .prologue
    .line 2153
    iput-object p1, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2156
    if-nez p2, :cond_1

    .line 2253
    :cond_0
    :goto_0
    return-void

    .line 2158
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2159
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2162
    :cond_2
    const-string v8, "BluetoothService"

    const-string v9, "Received BOOT_COMPLETED or ACTION_QUICKBOOT_POWERON message"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$800(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$800(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x64

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2164
    :cond_3
    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2165
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2168
    .local v6, resolver:Landroid/content/ContentResolver;
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->isAirplaneModeOn()Z
    invoke-static {v8}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2169
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$900(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v8

    const/16 v9, 0x37

    invoke-virtual {v8, v9}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2171
    :cond_4
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$900(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v8

    const/16 v9, 0x38

    invoke-virtual {v8, v9}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2173
    .end local v6           #resolver:Landroid/content/ContentResolver;
    :cond_5
    const-string v8, "android.app.admin.intent.ALLOW_BT_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2174
    const-string v8, "android.app.admin.extra.ALLOW_STATUS"

    const/4 v9, 0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 2175
    .local v4, estate:I
    if-nez v4, :cond_6

    .line 2176
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2178
    .restart local v6       #resolver:Landroid/content/ContentResolver;
    const-string v8, "bluetooth_on"

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_0

    .line 2181
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/server/BluetoothService;->disable(Z)Z

    goto/16 :goto_0

    .line 2183
    .end local v6           #resolver:Landroid/content/ContentResolver;
    :cond_6
    const/4 v8, 0x2

    if-ne v4, v8, :cond_0

    goto/16 :goto_0

    .line 2186
    .end local v4           #estate:I
    :cond_7
    const-string v8, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2187
    const-string v8, "android.intent.extra.DOCK_STATE"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 2189
    .local v7, state:I
    const-string v8, "BluetoothService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received ACTION_DOCK_EVENT with State:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    if-nez v7, :cond_8

    .line 2191
    const/4 v8, 0x0

    invoke-static {v8}, Landroid/server/BluetoothService;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    .line 2192
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v9, 0x0

    #setter for: Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/server/BluetoothService;->access$1102(Landroid/server/BluetoothService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 2194
    :cond_8
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "bluetooth_service_settings"

    iget-object v10, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2197
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dock_bluetooth_address"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/server/BluetoothService;->access$1000()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2198
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 2200
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v7           #state:I
    :cond_9
    const-string v8, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 2201
    const-string v8, "BluetoothService"

    const-string v9, "Received ACTION_CONNECTION_ACCESS_REPLY"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mPbapConnectionAccessReplyReceived:Z
    invoke-static {v8}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 2203
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v9, 0x1

    #setter for: Landroid/server/BluetoothService;->mPbapConnectionAccessReplyReceived:Z
    invoke-static {v8, v9}, Landroid/server/BluetoothService;->access$402(Landroid/server/BluetoothService;Z)Z

    .line 2204
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$800(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x65

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2205
    const-string v8, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/4 v9, 0x2

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2206
    .local v1, allow:I
    const-string v8, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 2207
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    const-string v8, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2208
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/bluetooth/BluetoothDevice;->setTrust(Z)Z

    .line 2210
    :cond_a
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v8, 0x1

    if-ne v1, v8, :cond_b

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, v2, v8}, Landroid/server/BluetoothService;->allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto/16 :goto_0

    :cond_b
    const/4 v8, 0x0

    goto :goto_1

    .line 2211
    .end local v1           #allow:I
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_c
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mProfileConnectionAccessReplyReceived:Z
    invoke-static {v8}, Landroid/server/BluetoothService;->access$500(Landroid/server/BluetoothService;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2212
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v9, 0x1

    #setter for: Landroid/server/BluetoothService;->mProfileConnectionAccessReplyReceived:Z
    invoke-static {v8, v9}, Landroid/server/BluetoothService;->access$502(Landroid/server/BluetoothService;Z)Z

    .line 2213
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$800(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x66

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2214
    const-string v8, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/4 v9, 0x2

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2215
    .restart local v1       #allow:I
    const-string v8, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 2217
    .restart local v2       #device:Landroid/bluetooth/BluetoothDevice;
    const/4 v8, 0x1

    if-ne v1, v8, :cond_d

    .line 2218
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/bluetooth/BluetoothDevice;->setTrust(Z)Z

    .line 2220
    :cond_d
    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v8, 0x1

    if-ne v1, v8, :cond_e

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v9, v2, v8}, Landroid/server/BluetoothService;->allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto/16 :goto_0

    :cond_e
    const/4 v8, 0x0

    goto :goto_2

    .line 2222
    .end local v1           #allow:I
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_f
    const-string v8, "android.bluetooth.device.action.PROFILE_DISCONNECTED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 2223
    const-string v8, "android.bluetooth.device.extra.PROFILE"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 2224
    .local v5, profile:I
    const-string v8, "BluetoothService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received ACTION_PROFILE_DISCONNECTED, profile= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    packed-switch v5, :pswitch_data_0

    .line 2241
    :goto_3
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mWaitingForHeadsetDisconnected:Z
    invoke-static {v8}, Landroid/server/BluetoothService;->access$1200(Landroid/server/BluetoothService;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mWaitingForA2dpDisconnected:Z
    invoke-static {v8}, Landroid/server/BluetoothService;->access$1300(Landroid/server/BluetoothService;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mWaitingForOpcDisconnected:Z
    invoke-static {v8}, Landroid/server/BluetoothService;->access$1400(Landroid/server/BluetoothService;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mWaitingForHidDisconnected:Z
    invoke-static {v8}, Landroid/server/BluetoothService;->access$1500(Landroid/server/BluetoothService;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2245
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$900(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v8

    const/16 v9, 0x36

    new-instance v10, Ljava/lang/Boolean;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v8, v9, v10}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2228
    :pswitch_0
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v9, 0x0

    #setter for: Landroid/server/BluetoothService;->mWaitingForHeadsetDisconnected:Z
    invoke-static {v8, v9}, Landroid/server/BluetoothService;->access$1202(Landroid/server/BluetoothService;Z)Z

    goto :goto_3

    .line 2231
    :pswitch_1
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v9, 0x0

    #setter for: Landroid/server/BluetoothService;->mWaitingForA2dpDisconnected:Z
    invoke-static {v8, v9}, Landroid/server/BluetoothService;->access$1302(Landroid/server/BluetoothService;Z)Z

    goto :goto_3

    .line 2234
    :pswitch_2
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v9, 0x0

    #setter for: Landroid/server/BluetoothService;->mWaitingForOpcDisconnected:Z
    invoke-static {v8, v9}, Landroid/server/BluetoothService;->access$1402(Landroid/server/BluetoothService;Z)Z

    goto :goto_3

    .line 2237
    :pswitch_3
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v9, 0x0

    #setter for: Landroid/server/BluetoothService;->mWaitingForHidDisconnected:Z
    invoke-static {v8, v9}, Landroid/server/BluetoothService;->access$1502(Landroid/server/BluetoothService;Z)Z

    goto :goto_3

    .line 2247
    .end local v5           #profile:I
    :cond_10
    const-string v8, "android.intent.action.DISCOVERABLE_TIMEOUT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2249
    const-string v8, "BluetoothService"

    const-string v9, "Received ACTION_ALARM_DISCOVERABLE_TIMEOUT"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/16 v9, 0x15

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/server/BluetoothService;->setScanMode(II)Z

    goto/16 :goto_0

    .line 2226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
