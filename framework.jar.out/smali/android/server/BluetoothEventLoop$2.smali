.class Landroid/server/BluetoothEventLoop$2;
.super Landroid/os/Handler;
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
    .line 102
    iput-object p1, p0, Landroid/server/BluetoothEventLoop$2;->this$0:Landroid/server/BluetoothEventLoop;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, address:Ljava/lang/String;
    const/4 v2, 0x0

    .line 107
    .local v2, objs:[Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 109
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #address:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 110
    .restart local v0       #address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 111
    iget-object v3, p0, Landroid/server/BluetoothEventLoop$2;->this$0:Landroid/server/BluetoothEventLoop;

    #getter for: Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothEventLoop;->access$100(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Landroid/server/BluetoothService;->setPairingConfirmation(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 117
    :sswitch_1
    iget-object v3, p0, Landroid/server/BluetoothEventLoop$2;->this$0:Landroid/server/BluetoothEventLoop;

    #getter for: Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothEventLoop;->access$100(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->listInState(I)[Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, devices:[Ljava/lang/String;
    array-length v3, v1

    if-eqz v3, :cond_0

    .line 120
    array-length v3, v1

    if-le v3, v6, :cond_1

    .line 121
    const-string v3, "BluetoothEventLoop"

    const-string v4, " There is more than one device in the Bonding State"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    :cond_1
    aget-object v0, v1, v7

    .line 125
    iget-object v3, p0, Landroid/server/BluetoothEventLoop$2;->this$0:Landroid/server/BluetoothEventLoop;

    #getter for: Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothEventLoop;->access$100(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;

    move-result-object v3

    const/16 v4, 0xa

    const/16 v5, 0x8

    invoke-virtual {v3, v0, v4, v5}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    goto :goto_0

    .line 130
    .end local v1           #devices:[Ljava/lang/String;
    :sswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 131
    iget-object v5, p0, Landroid/server/BluetoothEventLoop$2;->this$0:Landroid/server/BluetoothEventLoop;

    aget-object v3, v2, v7

    check-cast v3, Ljava/lang/String;

    aget-object v4, v2, v6

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    #calls: Landroid/server/BluetoothEventLoop;->addDevice(Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v5, v3, v4}, Landroid/server/BluetoothEventLoop;->access$200(Landroid/server/BluetoothEventLoop;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :sswitch_3
    iget-object v4, p0, Landroid/server/BluetoothEventLoop$2;->this$0:Landroid/server/BluetoothEventLoop;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    #calls: Landroid/server/BluetoothEventLoop;->processPropertyChangedEvent([Ljava/lang/String;)V
    invoke-static {v4, v3}, Landroid/server/BluetoothEventLoop;->access$300(Landroid/server/BluetoothEventLoop;[Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :sswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 138
    iget-object v5, p0, Landroid/server/BluetoothEventLoop$2;->this$0:Landroid/server/BluetoothEventLoop;

    aget-object v3, v2, v7

    check-cast v3, Ljava/lang/String;

    aget-object v4, v2, v6

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    #calls: Landroid/server/BluetoothEventLoop;->processDevicePropertyChangedEvent(Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v5, v3, v4}, Landroid/server/BluetoothEventLoop;->access$400(Landroid/server/BluetoothEventLoop;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :sswitch_5
    iget-object v4, p0, Landroid/server/BluetoothEventLoop$2;->this$0:Landroid/server/BluetoothEventLoop;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #calls: Landroid/server/BluetoothEventLoop;->processDeviceCreatedEvent(Ljava/lang/String;)V
    invoke-static {v4, v3}, Landroid/server/BluetoothEventLoop;->access$500(Landroid/server/BluetoothEventLoop;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :sswitch_6
    iget-object v4, p0, Landroid/server/BluetoothEventLoop$2;->this$0:Landroid/server/BluetoothEventLoop;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #calls: Landroid/server/BluetoothEventLoop;->processDeviceRemovedEvent(Ljava/lang/String;)V
    invoke-static {v4, v3}, Landroid/server/BluetoothEventLoop;->access$600(Landroid/server/BluetoothEventLoop;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x64 -> :sswitch_2
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_6
    .end sparse-switch
.end method
