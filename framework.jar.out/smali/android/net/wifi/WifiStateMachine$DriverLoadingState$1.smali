.class Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

.field final synthetic val$message:Landroid/os/Message;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine$DriverLoadingState;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3663
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->val$message:Landroid/os/Message;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3666
    const/4 v1, 0x0

    .line 3667
    .local v1, wifiap:I
    const/4 v0, 0x1

    .line 3669
    .local v0, ret:Z
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iget-object v2, v2, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3671
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->val$message:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->arg1:I

    sparse-switch v2, :sswitch_data_0

    .line 3687
    :goto_0
    if-nez v1, :cond_1

    .line 3688
    invoke-static {}, Landroid/net/wifi/WifiNative;->loadDriver()Z

    move-result v0

    .line 3693
    :cond_0
    :goto_1
    if-eqz v0, :cond_2

    .line 3694
    const-string v2, "WifiStateMachine"

    const-string v3, "Driver load successful"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3695
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iget-object v2, v2, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v3, 0x20003

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 3708
    :goto_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iget-object v2, v2, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3709
    return-void

    .line 3673
    :sswitch_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iget-object v2, v2, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v3, 0x2

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;I)V

    .line 3675
    const/4 v1, 0x0

    .line 3677
    goto :goto_0

    .line 3679
    :sswitch_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iget-object v2, v2, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v3, 0xc

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;I)V

    .line 3681
    const/4 v1, 0x1

    goto :goto_0

    .line 3689
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3690
    invoke-static {}, Landroid/net/wifi/WifiNative;->loadApDriver()Z

    move-result v0

    goto :goto_1

    .line 3697
    :cond_2
    const-string v2, "WifiStateMachine"

    const-string v3, "Failed to load driver!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3698
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->val$message:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->arg1:I

    sparse-switch v2, :sswitch_data_1

    .line 3706
    :goto_3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iget-object v2, v2, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v3, 0x20004

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_2

    .line 3700
    :sswitch_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iget-object v2, v2, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v3, 0x4

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;I)V

    goto :goto_3

    .line 3703
    :sswitch_3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iget-object v2, v2, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v3, 0xe

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;I)V

    goto :goto_3

    .line 3671
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch

    .line 3698
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_2
        0xc -> :sswitch_3
    .end sparse-switch
.end method
