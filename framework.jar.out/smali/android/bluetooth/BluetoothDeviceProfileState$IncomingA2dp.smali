.class Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;
.super Lcom/android/internal/util/State;
.source "BluetoothDeviceProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingA2dp"
.end annotation


# instance fields
.field private mCommand:I

.field private mStatus:Z

.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .locals 1
    .parameter

    .prologue
    .line 780
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 781
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->mStatus:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 780
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/16 v3, 0x66

    .line 786
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering IncomingA2dp state with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$9200(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$9300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v0

    iget v0, v0, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->mCommand:I

    .line 788
    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->mCommand:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->mCommand:I

    const/16 v1, 0x35

    if-eq v0, v1, :cond_0

    .line 790
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: IncomingA2DP state with command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->mCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->mCommand:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->mStatus:Z

    .line 793
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->mStatus:Z

    if-nez v0, :cond_1

    .line 794
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 795
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3900(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/server/BluetoothService;->sendProfileStateMessage(II)V

    .line 798
    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "message"

    .prologue
    const/4 v7, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 802
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IncomingA2dp State->Processing Message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2300(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    .line 803
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 874
    :goto_0
    return v2

    .line 805
    :sswitch_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$9400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    :cond_0
    :goto_1
    :sswitch_1
    move v2, v3

    .line 874
    goto :goto_0

    .line 808
    :sswitch_2
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mAutoConnectionPending:Z
    invoke-static {v4, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1602(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 809
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->removeMessages(I)V
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$9500(Landroid/bluetooth/BluetoothDeviceProfileState;I)V

    .line 811
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$9600(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_1

    .line 817
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 818
    .local v0, val:I
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mConnectionAccessReplyReceived:Z
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1202(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 819
    const/4 v1, 0x0

    .line 820
    .local v1, value:Z
    if-ne v0, v3, :cond_1

    .line 821
    const/4 v1, 0x1

    .line 823
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->setTrust(I)V
    invoke-static {v2, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$800(Landroid/bluetooth/BluetoothDeviceProfileState;I)V

    .line 824
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->handleIncomingConnection(IZ)Z
    invoke-static {v2, v7, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6800(Landroid/bluetooth/BluetoothDeviceProfileState;IZ)Z

    goto :goto_1

    .line 829
    .end local v0           #val:I
    .end local v1           #value:Z
    :sswitch_4
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mConnectionAccessReplyReceived:Z
    invoke-static {v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1200(Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 830
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->handleIncomingConnection(IZ)Z
    invoke-static {v4, v7, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6800(Landroid/bluetooth/BluetoothDeviceProfileState;IZ)Z

    .line 831
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->sendConnectionAccessRemovalIntent()V
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6900(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    .line 832
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v4, 0x66

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    goto :goto_1

    .line 837
    :sswitch_5
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$9700(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_1

    .line 840
    :sswitch_6
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$9800(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_1

    .line 850
    :sswitch_7
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$9900(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_1

    .line 857
    :sswitch_8
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$10000(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_1

    .line 866
    :sswitch_9
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$10100(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_1

    .line 869
    :sswitch_a
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mBondedDevice:Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;
    invoke-static {v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    move-result-object v4

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$10200(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 803
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_5
        0x4 -> :sswitch_1
        0x5 -> :sswitch_8
        0x6 -> :sswitch_1
        0x32 -> :sswitch_6
        0x33 -> :sswitch_1
        0x34 -> :sswitch_7
        0x35 -> :sswitch_1
        0x36 -> :sswitch_8
        0x37 -> :sswitch_1
        0x38 -> :sswitch_9
        0x64 -> :sswitch_9
        0x65 -> :sswitch_9
        0x66 -> :sswitch_a
        0x67 -> :sswitch_9
        0x68 -> :sswitch_3
        0x69 -> :sswitch_4
    .end sparse-switch
.end method
