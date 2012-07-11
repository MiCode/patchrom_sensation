.class Landroid/net/wifi/WifiStateMachine$ConnectingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 5024
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 8

    .prologue
    const v7, 0x20010

    .line 5029
    const v4, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$ConnectingState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 5032
    :try_start_0
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->enableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5039
    :goto_0
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$4700(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    invoke-static {v4}, Landroid/net/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5041
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/net/DhcpStateMachine;->makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/DhcpStateMachine;

    move-result-object v5

    #setter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$12202(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    .line 5043
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$12200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/DhcpStateMachine;->registerForPreDhcpNotification()V

    .line 5044
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$12200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v4

    const v5, 0x30001

    invoke-virtual {v4, v5}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 5063
    :goto_1
    return-void

    .line 5033
    :catch_0
    move-exception v3

    .line 5034
    .local v3, re:Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to enable IPv6: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 5035
    .end local v3           #re:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 5036
    .local v1, e:Ljava/lang/IllegalStateException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to enable IPv6: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 5046
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :cond_0
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$4700(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    invoke-static {v4}, Landroid/net/wifi/WifiConfigStore;->getIpConfiguration(I)Landroid/net/DhcpInfoInternal;

    move-result-object v0

    .line 5048
    .local v0, dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    new-instance v2, Landroid/net/InterfaceConfiguration;

    invoke-direct {v2}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 5049
    .local v2, ifcg:Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/DhcpInfoInternal;->makeLinkAddress()Landroid/net/LinkAddress;

    move-result-object v4

    iput-object v4, v2, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    .line 5050
    const-string v4, "[up]"

    iput-object v4, v2, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 5052
    :try_start_1
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 5054
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v5, 0x2000f

    invoke-virtual {v4, v5, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 5055
    :catch_2
    move-exception v3

    .line 5056
    .restart local v3       #re:Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Static IP configuration failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5057
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 5058
    .end local v3           #re:Landroid/os/RemoteException;
    :catch_3
    move-exception v1

    .line 5059
    .restart local v1       #e:Ljava/lang/IllegalStateException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Static IP configuration failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5060
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_1
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "message"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5068
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 5129
    :cond_0
    :goto_0
    return v1

    .line 5070
    :sswitch_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->handlePreDhcpSetup()V

    .line 5072
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$12200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5074
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$12200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v1

    const v3, 0x30006

    invoke-virtual {v1, v3}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 5128
    :cond_1
    :goto_1
    :sswitch_1
    const v1, 0xc366

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(II)I

    move v1, v2

    .line 5129
    goto :goto_0

    .line 5077
    :sswitch_2
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    .line 5078
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_2

    .line 5079
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/DhcpInfoInternal;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V
    invoke-static {v3, v1}, Landroid/net/wifi/WifiStateMachine;->access$12300(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpInfoInternal;)V

    .line 5080
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$12400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$12500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 5081
    :cond_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_1

    .line 5082
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleFailedIpConfiguration()V
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$12600(Landroid/net/wifi/WifiStateMachine;)V

    .line 5083
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$11100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$12700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 5087
    :sswitch_3
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/DhcpInfoInternal;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V
    invoke-static {v3, v1}, Landroid/net/wifi/WifiStateMachine;->access$12300(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpInfoInternal;)V

    .line 5088
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$12400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$12800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 5091
    :sswitch_4
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleFailedIpConfiguration()V
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$12600(Landroid/net/wifi/WifiStateMachine;)V

    .line 5092
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$11100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$12900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 5095
    :sswitch_5
    invoke-static {}, Landroid/net/wifi/WifiNative;->disconnectCommand()Z

    .line 5096
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$11100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$13000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 5100
    :sswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5101
    .local v0, netId:I
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$5100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    if-ne v3, v0, :cond_0

    goto :goto_1

    .line 5106
    .end local v0           #netId:I
    :sswitch_7
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$13100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 5112
    :sswitch_8
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_1

    .line 5113
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v3, 0x2004a

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 5114
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$13200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 5119
    :sswitch_9
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 5123
    :sswitch_a
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$13400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 5068
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000f -> :sswitch_3
        0x20010 -> :sswitch_4
        0x20047 -> :sswitch_9
        0x20048 -> :sswitch_8
        0x2004a -> :sswitch_5
        0x2004d -> :sswitch_a
        0x20056 -> :sswitch_6
        0x20057 -> :sswitch_7
        0x24003 -> :sswitch_1
        0x30004 -> :sswitch_0
        0x30005 -> :sswitch_2
    .end sparse-switch
.end method
