.class Landroid/net/wifi/WifiMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiMonitor;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiMonitor;)V
    .locals 1
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    .line 307
    const-string v0, "WifiMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method private connectToSupplicant()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 498
    const/4 v0, 0x0

    .line 501
    .local v0, connectTries:I
    :goto_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->connectToSupplicant()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 510
    :goto_1
    return v2

    .line 504
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0           #connectTries:I
    .local v1, connectTries:I
    const/4 v3, 0x5

    if-ge v0, v3, :cond_1

    .line 505
    #calls: Landroid/net/wifi/WifiMonitor;->nap(I)V
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$500(I)V

    move v0, v1

    .end local v1           #connectTries:I
    .restart local v0       #connectTries:I
    goto :goto_0

    .line 510
    .end local v0           #connectTries:I
    .restart local v1       #connectTries:I
    :cond_1
    const/4 v2, 0x0

    move v0, v1

    .end local v1           #connectTries:I
    .restart local v0       #connectTries:I
    goto :goto_1
.end method

.method private handleDriverEvent(Ljava/lang/String;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 514
    if-nez p1, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    const-string v0, "HANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 518
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x24009

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 521
    :cond_2
    const-string v0, "WIFI_RECOVERY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x2400a

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method private handleHostApEvents(Ljava/lang/String;)V
    .locals 5
    .parameter "dataString"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 598
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, tokens:[Ljava/lang/String;
    aget-object v1, v0, v3

    const-string v2, "AP-STA-CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 600
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x2402a

    aget-object v3, v0, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    aget-object v1, v0, v3

    const-string v2, "AP-STA-DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x24029

    aget-object v3, v0, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleP2pEvents(Ljava/lang/String;)V
    .locals 6
    .parameter "dataString"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 557
    const-string v2, "P2P-DEVICE-FOUND"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 558
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x24015

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    const-string v2, "P2P-DEVICE-LOST"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 560
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x24016

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 561
    :cond_2
    const-string v2, "P2P-GO-NEG-REQUEST"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 562
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x24017

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 564
    :cond_3
    const-string v2, "P2P-GO-NEG-SUCCESS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 565
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x24019

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 566
    :cond_4
    const-string v2, "P2P-GO-NEG-FAILURE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 567
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x2401a

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 568
    :cond_5
    const-string v2, "P2P-GROUP-FORMATION-SUCCESS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 569
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x2401b

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 570
    :cond_6
    const-string v2, "P2P-GROUP-FORMATION-FAILURE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 571
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x2401c

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 572
    :cond_7
    const-string v2, "P2P-GROUP-STARTED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 573
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x2401d

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 574
    :cond_8
    const-string v2, "P2P-GROUP-REMOVED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 575
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x2401e

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 576
    :cond_9
    const-string v2, "P2P-INVITATION-RECEIVED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 577
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x2401f

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 579
    :cond_a
    const-string v2, "P2P-INVITATION-RESULT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 580
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, tokens:[Ljava/lang/String;
    array-length v2, v1

    if-ne v2, v5, :cond_0

    .line 582
    aget-object v2, v1, v4

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, nameValue:[Ljava/lang/String;
    array-length v2, v0

    if-ne v2, v5, :cond_0

    .line 584
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x24020

    aget-object v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 585
    .end local v0           #nameValue:[Ljava/lang/String;
    .end local v1           #tokens:[Ljava/lang/String;
    :cond_b
    const-string v2, "P2P-PROV-DISC-PBC-REQ"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 586
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x24021

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 588
    :cond_c
    const-string v2, "P2P-PROV-DISC-ENTER-PIN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 589
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x24022

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private handleSupplicantStateChange(Ljava/lang/String;)V
    .locals 17
    .parameter "dataString"

    .prologue
    .line 612
    const-string v14, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 614
    .local v3, dataTokens:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 615
    .local v1, BSSID:Ljava/lang/String;
    const/4 v8, -0x1

    .line 616
    .local v8, networkId:I
    const/4 v9, -0x1

    .line 617
    .local v9, newState:I
    move-object v2, v3

    .local v2, arr$:[Ljava/lang/String;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_4

    aget-object v12, v2, v5

    .line 618
    .local v12, token:Ljava/lang/String;
    const-string v14, "="

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 619
    .local v7, nameValue:[Ljava/lang/String;
    array-length v14, v7

    const/4 v15, 0x2

    if-eq v14, v15, :cond_1

    .line 617
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 623
    :cond_1
    const/4 v14, 0x0

    aget-object v14, v7, v14

    const-string v15, "BSSID"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 624
    const/4 v14, 0x1

    aget-object v1, v7, v14

    .line 625
    goto :goto_1

    .line 630
    :cond_2
    const/4 v14, 0x1

    :try_start_0
    aget-object v14, v7, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 636
    .local v13, value:I
    const/4 v14, 0x0

    aget-object v14, v7, v14

    const-string/jumbo v15, "id"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 637
    move v8, v13

    goto :goto_1

    .line 631
    .end local v13           #value:I
    :catch_0
    move-exception v4

    .line 632
    .local v4, e:Ljava/lang/NumberFormatException;
    const-string v14, "WifiMonitor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "STATE-CHANGE non-integer parameter: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 638
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .restart local v13       #value:I
    :cond_3
    const/4 v14, 0x0

    aget-object v14, v7, v14

    const-string/jumbo v15, "state"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 639
    move v9, v13

    goto :goto_1

    .line 643
    .end local v7           #nameValue:[Ljava/lang/String;
    .end local v12           #token:Ljava/lang/String;
    .end local v13           #value:I
    :cond_4
    const/4 v14, -0x1

    if-ne v9, v14, :cond_5

    .line 656
    .end local v2           #arr$:[Ljava/lang/String;
    :goto_2
    return-void

    .line 645
    .restart local v2       #arr$:[Ljava/lang/String;
    :cond_5
    sget-object v10, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .line 646
    .local v10, newSupplicantState:Landroid/net/wifi/SupplicantState;
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v2

    .local v2, arr$:[Landroid/net/wifi/SupplicantState;
    array-length v6, v2

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_6

    aget-object v11, v2, v5

    .line 647
    .local v11, state:Landroid/net/wifi/SupplicantState;
    invoke-virtual {v11}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v14

    if-ne v14, v9, :cond_8

    .line 648
    move-object v10, v11

    .line 652
    .end local v11           #state:Landroid/net/wifi/SupplicantState;
    :cond_6
    sget-object v14, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    if-ne v10, v14, :cond_7

    .line 653
    const-string v14, "WifiMonitor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalid supplicant state: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-virtual {v14, v8, v1, v10}, Landroid/net/wifi/WifiMonitor;->notifySupplicantStateChange(ILjava/lang/String;Landroid/net/wifi/SupplicantState;)V

    goto :goto_2

    .line 646
    .restart local v11       #state:Landroid/net/wifi/SupplicantState;
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method


# virtual methods
.method handleEvent(ILjava/lang/String;)V
    .locals 2
    .parameter "event"
    .parameter "remainder"

    .prologue
    .line 535
    packed-switch p1, :pswitch_data_0

    .line 551
    :goto_0
    :pswitch_0
    return-void

    .line 537
    :pswitch_1
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v0, v1, p2}, Landroid/net/wifi/WifiMonitor;->access$600(Landroid/net/wifi/WifiMonitor;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 541
    :pswitch_2
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v0, v1, p2}, Landroid/net/wifi/WifiMonitor;->access$600(Landroid/net/wifi/WifiMonitor;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 545
    :pswitch_3
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x24005

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 535
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public run()V
    .locals 14

    .prologue
    .line 312
    invoke-direct {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->connectToSupplicant()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 315
    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v11}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v11

    const v12, 0x24001

    invoke-virtual {v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 323
    :cond_0
    :goto_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->waitForEvent()Ljava/lang/String;

    move-result-object v7

    .line 333
    .local v7, eventStr:Ljava/lang/String;
    const-string v11, "AKA-"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 334
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$100()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 336
    .local v6, eventName0:Ljava/lang/String;
    const-string v11, "INVALID-SIM"

    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 337
    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v11}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v11

    const v12, 0x24010

    invoke-virtual {v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 341
    .end local v6           #eventName0:Ljava/lang/String;
    :cond_1
    const-string v11, "CTRL-REQ-"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 343
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$200()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 344
    .restart local v6       #eventName0:Ljava/lang/String;
    const/16 v11, 0x20

    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 345
    .local v10, nameEnd0:I
    const/16 v11, 0x3a

    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 346
    .local v2, MsgEnd:I
    move-object v0, v6

    .local v0, MsgDetail:Ljava/lang/String;
    move-object v1, v0

    .line 347
    .local v1, MsgDetail2:Ljava/lang/String;
    sget-boolean v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v11, :cond_0

    .line 349
    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 350
    const/4 v11, 0x0

    invoke-virtual {v6, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 351
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_5

    .line 352
    const-string v11, "WifiMonitor"

    const-string v12, "[EAP-MSG] Received wpa_supplicant req with empty req name"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 317
    .end local v0           #MsgDetail:Ljava/lang/String;
    .end local v1           #MsgDetail2:Ljava/lang/String;
    .end local v2           #MsgEnd:I
    .end local v6           #eventName0:Ljava/lang/String;
    .end local v7           #eventStr:Ljava/lang/String;
    .end local v10           #nameEnd0:I
    :cond_3
    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v11}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v11

    const v12, 0x24002

    invoke-virtual {v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 495
    :cond_4
    :goto_1
    return-void

    .line 355
    .restart local v0       #MsgDetail:Ljava/lang/String;
    .restart local v1       #MsgDetail2:Ljava/lang/String;
    .restart local v2       #MsgEnd:I
    .restart local v6       #eventName0:Ljava/lang/String;
    .restart local v7       #eventStr:Ljava/lang/String;
    .restart local v10       #nameEnd0:I
    :cond_5
    const/4 v11, -0x1

    if-eq v2, v11, :cond_6

    .line 356
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 358
    :cond_6
    const-string v11, "AUTH_AKA-"

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_7

    const-string v11, "AUTH_SIM-"

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_7

    .line 360
    const-string v11, "WifiMonitor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[EAP-MSG] Req: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_7
    const-string v11, "IDENTITY_SIM-"

    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 363
    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v11}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v12}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v12

    const v13, 0x2400d

    invoke-virtual {v12, v13, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 366
    :cond_8
    const-string v11, "CUSTOMIZATION-"

    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 368
    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v11}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v12}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v12

    const v13, 0x2400e

    invoke-virtual {v12, v13, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 371
    :cond_9
    const-string v11, "AUTH_AKA-"

    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    const-string v11, "AUTH_SIM-"

    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 373
    :cond_a
    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v11}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v12}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v12

    const v13, 0x2400f

    invoke-virtual {v12, v13, v0}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 376
    :cond_b
    const-string v11, "IDENTITY-"

    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 382
    const-string v11, "WifiMonitor"

    const-string v12, "[EAP-MSG] Unkown Req"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 387
    .end local v0           #MsgDetail:Ljava/lang/String;
    .end local v1           #MsgDetail2:Ljava/lang/String;
    .end local v2           #MsgEnd:I
    .end local v6           #eventName0:Ljava/lang/String;
    .end local v10           #nameEnd0:I
    :cond_c
    const-string v11, "CTRL-EVENT-"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_12

    .line 388
    const-string v11, "WPA:"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    const-string/jumbo v11, "pre-shared key may be incorrect"

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_d

    .line 390
    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v11}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v11

    const v12, 0x24007

    invoke-virtual {v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 391
    :cond_d
    const-string v11, "WPS-OVERLAP-DETECTED"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 392
    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v11}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v11

    const v12, 0x24008

    invoke-virtual {v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 394
    :cond_e
    const-string v11, "WPS-SUCCESS"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 395
    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v11}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v11

    const v12, 0x2400b

    invoke-virtual {v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 396
    :cond_f
    const-string v11, "WPS-FAIL"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 397
    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v11}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v11

    const v12, 0x2400c

    invoke-virtual {v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 399
    :cond_10
    const-string v11, "P2P"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 400
    invoke-direct {p0, v7}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleP2pEvents(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 401
    :cond_11
    const-string v11, "AP"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 402
    invoke-direct {p0, v7}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleHostApEvents(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 407
    :cond_12
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$300()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 408
    .local v5, eventName:Ljava/lang/String;
    const/16 v11, 0x20

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 409
    .local v9, nameEnd:I
    const/4 v11, -0x1

    if-eq v9, v11, :cond_13

    .line 410
    const/4 v11, 0x0

    invoke-virtual {v5, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 411
    :cond_13
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    .line 419
    const-string v11, "CONNECTED"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 420
    const/4 v3, 0x1

    .line 438
    .local v3, event:I
    :goto_2
    move-object v4, v7

    .line 439
    .local v4, eventData:Ljava/lang/String;
    const/4 v11, 0x7

    if-eq v3, v11, :cond_14

    const/4 v11, 0x5

    if-ne v3, v11, :cond_1f

    .line 440
    :cond_14
    const-string v11, " "

    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v4, v11, v12

    .line 453
    :cond_15
    :goto_3
    const/4 v11, 0x3

    if-ne v3, v11, :cond_22

    .line 454
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleSupplicantStateChange(Ljava/lang/String;)V

    .line 493
    :cond_16
    :goto_4
    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    const/4 v12, 0x0

    #setter for: Landroid/net/wifi/WifiMonitor;->mRecvErrors:I
    invoke-static {v11, v12}, Landroid/net/wifi/WifiMonitor;->access$402(Landroid/net/wifi/WifiMonitor;I)I

    goto/16 :goto_0

    .line 421
    .end local v3           #event:I
    .end local v4           #eventData:Ljava/lang/String;
    :cond_17
    const-string v11, "DISCONNECTED"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 422
    const/4 v3, 0x2

    .restart local v3       #event:I
    goto :goto_2

    .line 423
    .end local v3           #event:I
    :cond_18
    const-string v11, "STATE-CHANGE"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 424
    const/4 v3, 0x3

    .restart local v3       #event:I
    goto :goto_2

    .line 425
    .end local v3           #event:I
    :cond_19
    const-string v11, "SCAN-RESULTS"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 426
    const/4 v3, 0x4

    .restart local v3       #event:I
    goto :goto_2

    .line 427
    .end local v3           #event:I
    :cond_1a
    const-string v11, "LINK-SPEED"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 428
    const/4 v3, 0x5

    .restart local v3       #event:I
    goto :goto_2

    .line 429
    .end local v3           #event:I
    :cond_1b
    const-string v11, "TERMINATING"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 430
    const/4 v3, 0x6

    .restart local v3       #event:I
    goto :goto_2

    .line 431
    .end local v3           #event:I
    :cond_1c
    const-string v11, "DRIVER-STATE"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 432
    const/4 v3, 0x7

    .restart local v3       #event:I
    goto :goto_2

    .line 433
    .end local v3           #event:I
    :cond_1d
    const-string v11, "EAP-FAILURE"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 434
    const/16 v3, 0x8

    .restart local v3       #event:I
    goto :goto_2

    .line 436
    .end local v3           #event:I
    :cond_1e
    const/16 v3, 0x9

    .restart local v3       #event:I
    goto :goto_2

    .line 441
    .restart local v4       #eventData:Ljava/lang/String;
    :cond_1f
    const/4 v11, 0x3

    if-eq v3, v11, :cond_20

    const/16 v11, 0x8

    if-ne v3, v11, :cond_21

    .line 442
    :cond_20
    const-string v11, " "

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 443
    .local v8, ind:I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_15

    .line 444
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 447
    .end local v8           #ind:I
    :cond_21
    const-string v11, " - "

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 448
    .restart local v8       #ind:I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_15

    .line 449
    add-int/lit8 v11, v8, 0x3

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 455
    .end local v8           #ind:I
    :cond_22
    const/4 v11, 0x7

    if-ne v3, v11, :cond_23

    .line 456
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleDriverEvent(Ljava/lang/String;)V

    goto :goto_4

    .line 457
    :cond_23
    const/4 v11, 0x6

    if-ne v3, v11, :cond_25

    .line 462
    const-string v11, "connection closed"

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 473
    const-string/jumbo v11, "recv error"

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_24

    .line 474
    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v11}, Landroid/net/wifi/WifiMonitor;->access$404(Landroid/net/wifi/WifiMonitor;)I

    move-result v11

    const/16 v12, 0xa

    if-le v11, v12, :cond_0

    .line 484
    :cond_24
    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v11}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v11

    const v12, 0x24002

    invoke-virtual {v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 486
    :cond_25
    const/16 v11, 0x8

    if-ne v3, v11, :cond_26

    .line 487
    const-string v11, "EAP authentication failed"

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 488
    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v11}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v11

    const v12, 0x24007

    invoke-virtual {v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_4

    .line 491
    :cond_26
    invoke-virtual {p0, v3, v4}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleEvent(ILjava/lang/String;)V

    goto/16 :goto_4
.end method
