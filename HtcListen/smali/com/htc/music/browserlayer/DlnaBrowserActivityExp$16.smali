.class Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;
.super Landroid/os/Handler;
.source "DlnaBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V
    .locals 0
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .parameter "msg"

    .prologue
    .line 557
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 689
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 559
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$900(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 560
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$900(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->notifyDataSetChanged()V

    .line 562
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mInitial:Z
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 563
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mInitial:Z
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 564
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->clearData()V

    .line 565
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    const v5, 0x20c00a3

    invoke-virtual {v4, v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showEmptyView(I)V

    goto :goto_0

    .line 568
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->clearData()V

    .line 569
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    const v5, 0x7f07002f

    invoke-virtual {v4, v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showEmptyView(I)V

    goto :goto_0

    .line 572
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 573
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->hideEmptyErrorView()V

    goto :goto_0

    .line 577
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 578
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->clearData()V

    .line 579
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showEmptyView()V

    goto/16 :goto_0

    .line 584
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/database/Cursor;

    .line 586
    .local v13, cursor:Landroid/database/Cursor;
    if-nez v13, :cond_5

    .line 587
    const-string v4, "DLNA"

    const-string v5, "get cursor == null"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 590
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "containerID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 591
    .local v15, id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurContainID:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 592
    const-string v4, "DLNA"

    const-string v5, "user browse another folder, abort"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 596
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mDestroy:Z
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1100(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 597
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 601
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v4, v13}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->GetCursorInfo(Landroid/database/Cursor;)V

    .line 602
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 603
    const/4 v13, 0x0

    .line 604
    goto/16 :goto_0

    .line 607
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v15           #id:Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/htc/dlnainterface/DLNAServerData;

    .line 608
    .local v16, info:Lcom/htc/dlnainterface/DLNAServerData;
    const-string v4, "DLNA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "server add id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string v4, "DLNA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "server add name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v20

    .line 612
    .local v20, size:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move/from16 v0, v20

    if-ge v14, v0, :cond_9

    .line 613
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetId()Ljava/lang/String;

    move-result-object v18

    .line 615
    .local v18, serverID:Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/htc/dlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 616
    const-string v4, "DLNA"

    const-string v5, "the same server, return"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 612
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 621
    .end local v18           #serverID:Ljava/lang/String;
    :cond_9
    new-instance v24, Ljava/util/LinkedList;

    invoke-direct/range {v24 .. v24}, Ljava/util/LinkedList;-><init>()V

    .line 622
    .local v24, templist:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;>;"
    new-instance v3, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/htc/dlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v8}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    int-to-long v8, v8

    const/4 v10, 0x1

    invoke-direct/range {v3 .. v10}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 623
    const-string v4, "DLNA"

    const-string v5, "add new server"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$800(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->appendRoot(Ljava/util/LinkedList;)V

    goto/16 :goto_0

    .line 631
    .end local v14           #i:I
    .end local v16           #info:Lcom/htc/dlnainterface/DLNAServerData;
    .end local v20           #size:I
    .end local v24           #templist:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;>;"
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/String;

    .line 632
    .local v25, uniqueID:Ljava/lang/String;
    if-eqz v25, :cond_0

    .line 635
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v14, v4, :cond_0

    .line 636
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    .line 637
    .local v23, tempInfo:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;
    invoke-virtual/range {v23 .. v23}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual/range {v23 .. v23}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 639
    const-string v4, "DLNA"

    const-string v5, "server remove"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$800(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/htc/widget/MoreExpandableHtcListView;->deleteItem(I)V

    .line 641
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1200(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1200(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 635
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 649
    .end local v14           #i:I
    .end local v23           #tempInfo:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;
    .end local v25           #uniqueID:Ljava/lang/String;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Lcom/htc/dlnainterface/DLNAServerData;

    move-object/from16 v17, v4

    check-cast v17, [Lcom/htc/dlnainterface/DLNAServerData;

    .line 650
    .local v17, list:[Lcom/htc/dlnainterface/DLNAServerData;
    new-instance v19, Ljava/util/LinkedList;

    invoke-direct/range {v19 .. v19}, Ljava/util/LinkedList;-><init>()V

    .line 652
    .local v19, serverList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;>;"
    if-eqz v17, :cond_0

    .line 653
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 655
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_3
    move-object/from16 v0, v17

    array-length v4, v0

    if-ge v14, v4, :cond_b

    .line 656
    new-instance v3, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    aget-object v5, v17, v14

    iget-object v5, v5, Lcom/htc/dlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    aget-object v6, v17, v14

    iget-object v6, v6, Lcom/htc/dlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    aget-object v7, v17, v14

    iget-object v7, v7, Lcom/htc/dlnainterface/DLNAServerData;->thumbnailPath:Ljava/lang/String;

    int-to-long v8, v14

    const/4 v10, 0x1

    invoke-direct/range {v3 .. v10}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 657
    .local v3, tmpServerList:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 655
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 660
    .end local v3           #tmpServerList:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    move-object/from16 v0, v19

    #setter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$002(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 661
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$800(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/MoreExpandableHtcListView;->changeRoot(Ljava/util/LinkedList;)V

    goto/16 :goto_0

    .line 667
    .end local v14           #i:I
    .end local v17           #list:[Lcom/htc/dlnainterface/DLNAServerData;
    .end local v19           #serverList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;>;"
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "errorID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 668
    .local v11, ID:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v4, v11}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showDialog(I)V

    goto/16 :goto_0

    .line 672
    .end local v11           #ID:I
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showSpinner(Z)V

    goto/16 :goto_0

    .line 676
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "serverID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 677
    .restart local v18       #serverID:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "containID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 678
    .local v12, containID:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "startIdx"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v21

    .line 680
    .local v21, startIdx:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    move-object/from16 v0, v18

    move-wide/from16 v1, v21

    invoke-virtual {v4, v0, v12, v1, v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->browse(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 684
    .end local v12           #containID:Ljava/lang/String;
    .end local v18           #serverID:Ljava/lang/String;
    .end local v21           #startIdx:J
    :pswitch_a
    const-string v4, "DLNA"

    const-string v5, "insert no music view"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->insertNoMusicView()V

    goto/16 :goto_0

    .line 557
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method
