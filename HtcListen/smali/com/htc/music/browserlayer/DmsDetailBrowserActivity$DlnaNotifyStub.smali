.class Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;
.super Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;
.source "DmsDetailBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DlnaNotifyStub"
.end annotation


# instance fields
.field mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 1573
    invoke-direct {p0}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;-><init>()V

    .line 1574
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    .line 1575
    return-void
.end method

.method private isServiceReady(Ljava/lang/ref/WeakReference;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, mActivity:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;>;"
    const/4 v0, 0x0

    .line 1578
    if-eqz p1, :cond_1

    .line 1579
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1580
    const/4 v0, 0x1

    .line 1587
    :goto_0
    return v0

    .line 1582
    :cond_0
    const-string v1, "[DMS]"

    const-string v2, "mActivity.get() is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1586
    :cond_1
    const-string v1, "[DMS]"

    const-string v2, "mActivity is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public albumArtDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1807
    return-void
.end method

.method public contentAddedNotify(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 13
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "lastIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1593
    iget-object v9, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v9}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->isServiceReady(Ljava/lang/ref/WeakReference;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1635
    :cond_0
    :goto_0
    return-void

    .line 1596
    :cond_1
    iget-object v9, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1598
    const/4 v2, 0x0

    .line 1600
    .local v2, bisBrowseDone:Z
    :try_start_0
    iget-object v9, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v9}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 1601
    iget-object v9, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v9}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v10

    const/4 v11, 0x1

    iget-object v9, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v12

    iget-object v9, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v11, v12, v9}, Lcom/htc/dlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1608
    :cond_2
    :goto_1
    if-nez v2, :cond_0

    .line 1611
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1613
    .local v3, current:J
    invoke-static {}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1200()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_3

    invoke-static {}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1200()J

    move-result-wide v9

    sub-long v9, v3, v9

    const-wide/16 v11, 0xbb8

    cmp-long v9, v9, v11

    if-ltz v9, :cond_0

    .line 1616
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1202(J)J

    .line 1618
    const-string v9, "[DMS]"

    const-string v10, "content add notify"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    const-string v10, "[DMS]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "current page = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I
    invoke-static {v9}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)I

    move-result v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    const-string v9, "[DMS]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startIndex = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p3

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    const-string v9, "[DMS]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lastIndex = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p5

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    iget-object v9, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;
    invoke-static {v9}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/util/List;

    move-result-object v10

    iget-object v9, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I
    invoke-static {v9}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)I

    move-result v9

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    .line 1624
    .local v5, currentInfo:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;
    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->setStartIdx(J)V

    .line 1625
    move-wide/from16 v0, p5

    invoke-virtual {v5, v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->setEndIdx(J)V

    .line 1627
    iget-object v9, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    const/4 v10, 0x0

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mInitial:Z
    invoke-static {v9, v10}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$702(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Z)Z

    .line 1629
    iget-object v9, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    invoke-virtual {v9, p1, p2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->GetCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1631
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v9, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 1632
    .local v8, msg:Landroid/os/Message;
    iput-object v6, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1633
    iget-object v9, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1604
    .end local v3           #current:J
    .end local v5           #currentInfo:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #msg:Landroid/os/Message;
    :catch_0
    move-exception v7

    .line 1606
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public contentBrowsingDoneNotify(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 9
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "lastIndex"
    .parameter "isComplete"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1640
    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v5}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->isServiceReady(Ljava/lang/ref/WeakReference;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1688
    :cond_0
    :goto_0
    return-void

    .line 1643
    :cond_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1645
    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    const/4 v6, 0x0

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mLoadingNext:Z
    invoke-static {v5, v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1602(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Z)Z

    .line 1646
    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    const/4 v6, 0x0

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mLoadingPrev:Z
    invoke-static {v5, v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1702(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Z)Z

    .line 1647
    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->GetCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1649
    .local v1, cursor:Landroid/database/Cursor;
    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;
    invoke-static {v5}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/util/List;

    move-result-object v6

    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I
    invoke-static {v5}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)I

    move-result v5

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    .line 1651
    .local v0, currentInfo:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;
    invoke-virtual {v0, p3, p4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->setStartIdx(J)V

    .line 1652
    invoke-virtual {v0, p5, p6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->setEndIdx(J)V

    .line 1654
    if-eqz v1, :cond_3

    .line 1655
    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    invoke-virtual {v5, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->GetCursorIdx(Landroid/database/Cursor;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    move-result-object v2

    .line 1656
    .local v2, info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;
    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getMiddleIdx()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->setMiddleIdx(J)V

    .line 1658
    const-string v6, "[DMS]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current page = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I
    invoke-static {v5}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    const-string v5, "[DMS]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current startIdx = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    const-string v5, "[DMS]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current middleIdx = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getMiddleIdx()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    const-string v5, "[DMS]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current endIdx = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    if-nez p7, :cond_4

    .line 1664
    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    const/4 v6, 0x0

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mBrowsingComplete:Z
    invoke-static {v5, v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1802(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Z)Z

    .line 1666
    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I
    invoke-static {v5}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 1667
    new-instance v4, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v5}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    .line 1668
    .local v4, nextInfo:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;
    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getMiddleIdx()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->setStartIdx(J)V

    .line 1669
    invoke-virtual {v4, p5, p6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->setMiddleIdx(J)V

    .line 1670
    const-string v5, "[DMS]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "next startIdx = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    const-string v5, "[DMS]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "next middleIdx = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getMiddleIdx()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;
    invoke-static {v5}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1679
    .end local v4           #nextInfo:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1680
    .local v3, msg:Landroid/os/Message;
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1681
    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1684
    .end local v2           #info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;
    .end local v3           #msg:Landroid/os/Message;
    :cond_3
    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    const/4 v6, 0x0

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mInitial:Z
    invoke-static {v5, v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$702(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Z)Z

    .line 1685
    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/os/Handler;

    move-result-object v6

    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1686
    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/os/Handler;

    move-result-object v6

    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1677
    .restart local v2       #info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;
    :cond_4
    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    const/4 v6, 0x1

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mBrowsingComplete:Z
    invoke-static {v5, v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1802(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Z)Z

    goto :goto_1
.end method

.method public contentBrowsingErrorNotify(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 4
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1692
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->isServiceReady(Ljava/lang/ref/WeakReference;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1709
    :cond_0
    :goto_0
    return-void

    .line 1695
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1698
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mInitial:Z
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$702(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Z)Z

    .line 1699
    const-string v1, "[DMS]"

    const-string v2, "BrowsingError"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    const-string v1, "[DMS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrorID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    const-string v1, "[DMS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1705
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1706
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "errorID"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1707
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public contentThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "serverID"
    .parameter "uniqueID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1713
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->isServiceReady(Ljava/lang/ref/WeakReference;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1745
    :cond_0
    return-void

    .line 1716
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1722
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$2000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 1723
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$2000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 1724
    .local v1, fl:Landroid/widget/FrameLayout;
    if-eqz v1, :cond_3

    .line 1725
    const v6, 0x7f080042

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemTileImage;

    .line 1728
    .local v4, iv:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v4, :cond_3

    .line 1729
    invoke-virtual {v4}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$itemInfo;

    .line 1730
    .local v3, info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$itemInfo;
    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$itemInfo;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1731
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-static {v6, p3}, Lcom/htc/music/util/MusicUtils;->getDLNAAssetFileDescriptor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 1735
    .local v0, afd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$itemInfo;->getPostion()I

    move-result v5

    .line 1736
    .local v5, position:I
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$2100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v0, v5, v7}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILandroid/content/res/AssetFileDescriptor;I[Ljava/lang/Object;)V

    .line 1722
    .end local v0           #afd:Landroid/content/res/AssetFileDescriptor;
    .end local v3           #info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$itemInfo;
    .end local v4           #iv:Lcom/htc/widget/HtcListItemTileImage;
    .end local v5           #position:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public contentUpdatedNotify(Ljava/lang/String;J)V
    .locals 0
    .parameter "containerID"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1821
    return-void
.end method

.method public controllerErrorNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "rendererID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1808
    return-void
.end method

.method public controllerResponseNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "rendererID"
    .parameter "resID"
    .parameter "resReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1809
    return-void
.end method

.method public getContentItemDetailsNotify(Ljava/lang/String;Ljava/lang/String;Lcom/htc/dlnainterface/DLNAContentItemDetails;)V
    .locals 4
    .parameter "serverID"
    .parameter "contentID"
    .parameter "details"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->isServiceReady(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1773
    :cond_0
    :goto_0
    return-void

    .line 1753
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1755
    const-string v0, "DLNA"

    const-string v1, "getContentItemDetailsNotify"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDetailIntent:Landroid/content/Intent;
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$902(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 1758
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDetailIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.htc.music.newproperty"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1760
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDetailIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "duration"

    iget-wide v2, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDuration:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1762
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDetailIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "trackname"

    iget-object v2, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1763
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDetailIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "artistname"

    iget-object v2, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1764
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDetailIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "albumname"

    iget-object v2, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1765
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDetailIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "genre"

    iget-object v2, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1766
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDetailIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "composer"

    iget-object v2, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1767
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDetailIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "location"

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$2200(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1769
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDetailIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "contentID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1771
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public imageDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1810
    return-void
.end method

.method public playlistCreatedResultNotify(Ljava/lang/String;JJ)V
    .locals 0
    .parameter "rendererID"
    .parameter "totalCount"
    .parameter "currentIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1811
    return-void
.end method

.method public rendererAddedNotify(Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 0
    .parameter "rendererData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1828
    return-void
.end method

.method public rendererAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "rendererName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1812
    return-void
.end method

.method public rendererListUpdateNotify([Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 0
    .parameter "rendererList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1813
    return-void
.end method

.method public rendererRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1814
    return-void
.end method

.method public rendererThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1815
    return-void
.end method

.method public serverAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "serverName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1816
    return-void
.end method

.method public serverListUpdateNotify([Lcom/htc/dlnainterface/DLNAServerData;)V
    .locals 0
    .parameter "serverList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1817
    return-void
.end method

.method public serverRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1818
    return-void
.end method

.method public serverThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uniqueID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->isServiceReady(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1788
    :cond_0
    :goto_0
    return-void

    .line 1780
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIconPath:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$2302(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1784
    const-string v1, "[DMS]"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update icon path = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIconPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$2300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public updateControlItemInfo(Lcom/htc/dlnainterface/DLNAControlItemData;)V
    .locals 4
    .parameter "itemData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1791
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->isServiceReady(Ljava/lang/ref/WeakReference;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1805
    :cond_0
    :goto_0
    return-void

    .line 1794
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDlnaMode:I
    invoke-static {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$2400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1797
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurDMR:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$2500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCCurrentContentID(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1798
    .local v0, tempContent:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurContent:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurContent:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1799
    :cond_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurContent:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$102(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1800
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1802
    const-string v1, "[DMS]"

    const-string v2, "updateContent"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    const-string v2, "[DMS]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current content = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurContent:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updateControlItemThumbnail(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .parameter "rendererID"
    .parameter "currentIndex"
    .parameter "thumbnailPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1819
    return-void
.end method

.method public updateControllerStatus(Lcom/htc/dlnainterface/DLNAControllerStatus;)V
    .locals 0
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1820
    return-void
.end method

.method public updateDownloadStoreAlbumArtNotify(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .parameter "rendererID"
    .parameter "currentIndex"
    .parameter "albumArtPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1835
    return-void
.end method
